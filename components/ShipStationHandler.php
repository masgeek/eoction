<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 12/6/2016
 * Time: 9:36 PM
 */

namespace app\components;


use app\module\products\models\ItemsCart;
use app\module\products\models\FryProducts;
use app\module\products\models\Orders;
use app\module\products\models\PaypalTransactions;
use app\module\products\models\Products;
use app\module\products\models\ShippingService;
use app\module\users\models\UserAddress;
use GuzzleHttp\Psr7\Response;
use GuzzleHttp\Psr7\Stream;
use MichaelB\ShipStation\Endpoints\Carriers;
use MichaelB\ShipStation\Endpoints\Stores;
use MichaelB\ShipStation\Models\Address;
use MichaelB\ShipStation\Models\Order;
use MichaelB\ShipStation\Models\OrderItem;
use MichaelB\ShipStation\ShipStationApi;

class ShipStationHandler
{
//{awaiting_shipment, on_hold, shipped, cancelled}
    const AWAITING_SHIPMENT = 'awaiting_shipment';
    const SHIPPED = 'shipped';
    const CANCELLED = 'cancelled';
    const ON_HOLD = 'on_hold';
    const PRODUCT_QUANTITY = 1;
    const PAYPAL_PAYMENT_METHOD = 'Paypal';
    const CARD_PAYMENT_METHOD = 'Card';

    protected $warehouse = 'Warehouse A';

    public function GetSingleOrder($order_id)
    {
        $endpointurl = \Yii::$app->params['ShipStationApiUrl'];
        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];

        $options = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);


        $orderservice = $shipstation->getOrdersService();

        $order = $orderservice->getOrder($order_id);


        $orderJsonResponse = $order->getBody();

        $decoded = \GuzzleHttp\json_decode($orderJsonResponse);
        echo '<pre>';
        print_r($decoded);
        echo '</pre>';

        return $decoded;
    }

    /**
     * Create a new order in shipstation
     * @param $paypal_hash
     * @param $user_id
     * @return bool
     */
    public function CreateNewOrder($paypal_hash, $user_id)
    {
        /* @var $model ItemsCart */
        /* @var $paypalTransModel PaypalTransactions */
        /* @var $shippingModel ShippingService */
        /* @var $address UserAddress */
        /* @var $clientShippingAddress UserAddress */
        /* @var $clientBillingAddress UserAddress */


        //$endpointurl = \Yii::$app->params['ShipStationApiUrl'];
        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];

        $options = [];
        $product_id_array = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);

        $orderservice = $shipstation->getOrdersService();
        $productservice = $shipstation->getProductsService();

        $status = false;
        $transactionInfo = ItemsCart::findAll([
            'PAYPAL_HASH' => $paypal_hash,
            'IS_SOLD' => 1
        ]);

        //if the shipping address is not available we will pick the next available one i.e billing address or primary address
        $address = AccountManager::GetUserAddress($user_id);

        /*if ($address == null) {
            //use billing instead
            $address = AccountManager::GetUserAddress($user_id, UserAddress::BILLING_ADDRESS);
        }*/


        $clientShippingAddress = $address;
        $clientBillingAddress = $address;


        if ($transactionInfo != null) {
            $order = new Order();

            $total = [];
            //$items = [];
            foreach ($transactionInfo as $model) {
                //next we fetch the items
                $productsModel = FryProducts::findOne(['productid' => $model->PRODUCT_ID]);

                //next build the items array
                $orderItem = new OrderItem();
                //$orderItem->lineItemKey = $productsModel->productid;
                $orderItem->sku = $productsModel->sku;
                $orderItem->name = $productsModel->name;
                $orderItem->quantity = ShipStationHandler::PRODUCT_QUANTITY; //will always be one
                $orderItem->unitPrice = $model->PRODUCT_PRICE; //This is the amount paid in paypal
                $orderItem->warehouseLocation = $this->warehouse;
                $orderItem->imageUrl = $productsModel->image1; //ProductManager::GetImageUrl($model->PRODUCT_ID);
                $orderItem->productId = $model->PRODUCT_ID;

                $items[] = $orderItem;
                $total[] = (float)$model->PRODUCT_PRICE;

                $product_id_array[] = $model->PRODUCT_ID;
            }


            $total_paid = (array_sum($total));
            $shippingCost = ProductManager::ComputeShippingCost(null, $total_paid);
            $taxAmount = ProductManager::ComputeTaxAmount($total_paid);

            $order->items = $items;

            //lets get the payment information
            $paypalTransModel = PaypalTransactions::findOne(['HASH' => $paypal_hash]);
            $shippingModel = $paypalTransModel->shippingServices; //get only the first item in the array

            //$orderDate = date('Y-m-d') . 'T' . date('H:i:s') . '.0000000';
            //$paymentDate = date('Y-m-d') . 'T' . date('H:i:s') . '.0000000';


            //$orderDate = date('Y-m-d H:i:s', strtotime($orderDate . "GMT"));
            $paymentDate = \Yii::$app->formatter->asDatetime($paypalTransModel->UPDATE_TIME, "php: Y-m-d H:i:s");;
            $orderDate = \Yii::$app->formatter->asDatetime($paypalTransModel->CREATE_TIME, "php: Y-m-d H:i:s");;

            //$order->orderId = 1;
            $order->orderNumber = strtoupper(uniqid("EOCT-{$paypalTransModel->ID}-"));
            $order->orderKey = $paypal_hash; // if specified, the method becomes idempotent and the existing Order with that key will be updated
            $order->orderDate = $orderDate;
            $order->paymentDate = $paymentDate;
            $order->orderStatus = ShipStationHandler::AWAITING_SHIPMENT;
            $order->customerUsername = $paypalTransModel->uSER->FULL_NAMES; //$clientContact->uSER->FULL_NAMES;
            $order->customerEmail = $paypalTransModel->uSER->EMAIL_ADDRESS;
            $order->amountPaid = $total_paid;
            $order->taxAmount = $taxAmount;
            $order->shippingAmount = $shippingCost;
            $order->customerNotes = $shippingModel->CUSTOMER_NOTES;
            $order->internalNotes = null;//"Express Shipping Please";
            $order->gift = null;
            $order->giftMessage = null;
            $order->requestedShippingService = $shippingModel->REQUESTED_SERVICE;
            $order->paymentMethod = null;
            $order->carrierCode = $shippingModel->CARRIER_CODE;
            $order->serviceCode = $shippingModel->SERVICE_CODE;
            $order->packageCode = $shippingModel->PACKAGE_CODE;
            $order->confirmation = null;
            $order->shipDate = null;


            //Billing Class
            $billing = new Address();
            $billing->name = $clientBillingAddress->NAME; // This has to be a String... If you put NULL the API cries...
            $billing->company = $clientBillingAddress->COMPANY;
            $billing->street1 = $clientBillingAddress->STREET1;
            $billing->street2 = $clientBillingAddress->STREET2;
            $billing->street3 = $clientBillingAddress->STREET3;
            $billing->city = $clientBillingAddress->CITY;
            $billing->state = $clientBillingAddress->STATE;
            $billing->postalCode = $clientBillingAddress->POSTALCODE;
            $billing->country = $clientBillingAddress->COUNTRY;
            $billing->phone = $clientBillingAddress->PHONE;
            $billing->residential = null;//$clientBillingAddress->RESIDENTIAL ? 'Residential' : null;
            $order->billTo = $billing;


            //Shipping address
            $shipping = new Address();
            $shipping->name = $clientShippingAddress->NAME;
            $shipping->company = $clientShippingAddress->COMPANY;
            $shipping->street1 = $clientShippingAddress->STREET1;
            $shipping->street2 = $clientShippingAddress->STREET2;
            $shipping->street3 = $clientShippingAddress->STREET3;
            $shipping->city = $clientShippingAddress->CITY;
            $shipping->state = $clientShippingAddress->STATE;
            $shipping->postalCode = $clientShippingAddress->POSTALCODE;
            $shipping->country = $clientShippingAddress->COUNTRY;
            $shipping->phone = $clientShippingAddress->PHONE;
            $shipping->residential = null;//$clientShippingAddress->RESIDENTIAL ? 'Residential' : null;
            $order->shipTo = $shipping;


            //$order = $orderservice->getOrder('1234');
            $createOrder = $orderservice->createOrder($order);


            $orderStatus = $createOrder->getStatusCode();
            $orderJsonResponse = $createOrder->getBody();

            $decoded = \GuzzleHttp\json_decode($orderJsonResponse);

            if ($orderStatus == 200 && $this->SaveOrders($decoded)) {
                //update the stock count
                ProductManager::UpdateProductStock($product_id_array);
            }
        }
        return $status;

    }

    public function SaveOrders($resp)
    {

        $orderID = $resp->orderId;
        //let us search  if a matching record exists
        $model = Orders::findOne($orderID);
        if ($model == null) {
            $model = new Orders();
            $model->isNewRecord = true;
        }

        $model->orderId = $orderID;
        $model->orderNumber = $resp->orderNumber;
        $model->orderKey = $resp->orderKey;
        $model->orderDate = $resp->orderDate;
        $model->createDate = $resp->createDate;
        $model->modifyDate = $resp->modifyDate;
        $model->paymentDate = $resp->paymentDate;
        $model->shipByDate = $resp->shipByDate;
        $model->orderStatus = $resp->orderStatus;
        $model->customerId = $resp->customerId;
        $model->customerUsername = $resp->customerUsername;
        $model->customerEmail = $resp->customerEmail;

        //next save the order manenos
        return ($model->save());
    }

    public function ShipOrder($order_id)
    {

    }

    public function RunOrderUpdates()
    {

    }

    public function ListAllOrders()
    {

    }

    /**
     * @param bool $as_array
     * @return mixed|null
     */
    public function ListAllCarriers($as_array = false)
    {

        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];

        $options = [];
        $response = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);

        $carrierService = $shipstation->getCarriersService();


        $carriers = $carrierService->getList();


        $response = $carriers->getBody();
        if ($as_array) {
            //convert the response to an array
            $carrierList = [];
            foreach (\GuzzleHttp\json_decode($response) as $carrier) {
                $carrierList = [$carrier->code => $carrier->name];
            }
            return $carrierList;
        }
        return $response;
    }


    /**
     * @param $carrier_code
     * @param bool $as_array
     * @return array|Stream|\Psr\Http\Message\StreamInterface
     */
    public function ListCarrierServices($carrier_code, $as_array = false)
    {

        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];

        $options = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);

        $carrierService = $shipstation->getCarriersService();
        try {

            $services = $carrierService->listServices($carrier_code);
            $response = $services->getBody();

            //return  \GuzzleHttp\json_decode($response);

            if ($as_array) {
                //convert the response to object array for better breakdown
                foreach (\GuzzleHttp\json_decode($response) as $carrier) {
                    $international = $carrier->international ? 'INTERNATIONAL' : $carrier->international;
                    $domestic = $carrier->domestic ? 'DOMESTIC' : $carrier->domestic;
                    $name = $carrier->name;
                    $code = "{$carrier->code}|{$carrier->carrierCode}";
                    $serviceName = "{$name} ({$domestic}{$international})";
                    $serviceList[] = ['id' => "{$code}|{$domestic}|{$international}~{$carrier->name}", 'name' => $serviceName];
                }
                return $serviceList;
            }
        } catch (\Exception $ex) {
            //log error maybe
            $response = null;
        }
        return $response;
    }


    /**
     * @param $carrier_code
     * @param $domestic
     * @param $international
     * @param bool $as_array
     * @return array|Stream|null|\Psr\Http\Message\StreamInterface
     */
    public function ListCarrierPackage($carrier_code, $domestic, $international, $as_array = true)
    {
        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];
        $options = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);
        $carrierService = $shipstation->getCarriersService();
        try {

            $packages = $carrierService->listPackages($carrier_code);
            $response = $packages->getBody();

            //return \GuzzleHttp\json_decode($response);
            if ($as_array) {
                //convert the response to an array for better breakdown

                foreach (\GuzzleHttp\json_decode($response) as $package) {
                    $international_pkg = $package->international ? 'INTERNATIONAL' : $package->international;
                    $domestic_pkg = $package->domestic ? 'DOMESTIC' : $package->domestic;
                    $name = $package->name;
                    $code = $package->code;

                    $serviceName = "{$name} ({$domestic_pkg}/{$international_pkg})";


                    if ($domestic) {
                        if ($package->domestic == $domestic && $package->international == false) {
                            $serviceList[] = ['id' => $code, 'name' => $serviceName];
                        }
                    } elseif ($international) {
                        if ($package->domestic == false && $package->international == true) {
                            $serviceList[] = ['id' => $code, 'name' => $serviceName];
                        } elseif ($package->domestic == true && $package->international == true) { //packages that got in both
                            $serviceList[] = ['id' => $code, 'name' => $serviceName];
                        }
                    }
                }
                return $serviceList;
            }
        } catch (\Exception $ex) {
            //log error maybe
            $response = null;
        }
        return $response;
    }

    public function ListStores($markeplace_id = '23')
    {
        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];


        $options = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);

        $storeService = $shipstation->getStoresService();


        $stores = $storeService->listStores('false', $markeplace_id);


        return $stores->getBody();
    }

    public function ListMarketPlace()
    {
        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];


        $options = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);

        $storeService = $shipstation->getStoresService();

        $marketplaces = $storeService->listMarketplaces();

        return $marketplaces->getBody();
    }

}