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
use app\module\products\models\Products;
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

    public function CreateNewOrder($paypal_hash, $user_id)
    {
        /* @var $model ItemsCart */

        $endpointurl = \Yii::$app->params['ShipStationApiUrl'];
        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];

        $options = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);


        $orderservice = $shipstation->getOrdersService();
        $productservice = $shipstation->getProductsService();

        $status = false;
        $transactionInfo = ItemsCart::findAll([
            'PAYPAL_HASH' => $paypal_hash,
            'IS_SOLD' => 1
        ]);

        $clientContact = UserAddress::findOne([
            'USER_ID' => $user_id,
            'ADDRESS_TYPE' => UserAddress::BILLING_ADDRESS //start with billing address
        ]);

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
                $orderItem->sku = $productsModel->prodcode; //@TODO confirm which is the sKU
                $orderItem->name = $productsModel->prodname;
                $orderItem->quantity = 1;
                $orderItem->unitPrice = $model->PRODUCT_PRICE; //This is the amount paid in paypal
                $orderItem->warehouseLocation = $this->warehouse;
                $orderItem->imageUrl = 'https://d38eepresuu519.cloudfront.net/072a25ea0c3226296cdcc7adb29169f9/square.jpg';
                $orderItem->productId = $model->PRODUCT_ID;

                $items[] = $orderItem;
                $total[] = (float)$model->PRODUCT_PRICE;
            }


            $total_paid = (array_sum($total));
            $shippingCost = ProductManager::ComputeShippingCost(null, $total_paid);
            $taxAmount = ProductManager::ComputeTaxAmount($total_paid);

            //$order->items = $items;

            //$order->orderId = 1;
            $order->orderNumber = "EOCT001";
            $order->orderKey = $paypal_hash; // if specified, the method becomes idempotent and the existing Order with that key will be updated
            $order->orderDate = date('Y-m-d') . 'T' . date('H:i:s') . '.0000000';
            $order->paymentDate = date('Y-m-d') . 'T' . date('H:i:s') . '.0000000';
            $order->orderStatus = ShipStationHandler::AWAITING_SHIPMENT;
            $order->customerUsername = $clientContact->uSER->FULL_NAMES;
            $order->customerEmail = $clientContact->uSER->EMAIL_ADDRESS;
            $order->amountPaid = $total_paid;
            $order->taxAmount = $taxAmount;
            $order->shippingAmount = $shippingCost;
            $order->customerNotes = null;
            $order->internalNotes = "Express Shipping Please";
            $order->gift = null;
            $order->giftMessage = null;
            $order->requestedShippingService = "Priority Mail";
            $order->paymentMethod = null;
            $order->carrierCode = "fedex";
            $order->serviceCode = "fedex_2day";
            $order->packageCode = "package";
            $order->confirmation = null;
            $order->shipDate = null;


            var_dump($order);
            //Billing Class
            $billing = new Address();
            $billing->name = "Sammy Barasa"; // This has to be a String... If you put NULL the API cries...
            $billing->company = null;
            $billing->street1 = null;
            $billing->street2 = null;
            $billing->street3 = null;
            $billing->city = null;
            $billing->state = null;
            $billing->postalCode = null;
            $billing->country = null;
            $billing->phone = null;
            $billing->residential = null;
            $order->billTo = $billing;


            //Shipping address
            $shipping = new Address();
            $shipping->name = "Sammy Barasa";
            $shipping->company = "Go-Parts";
            $shipping->street1 = "Santa Clarita #1234";
            $shipping->street2 = null;
            $shipping->street3 = null;
            $shipping->city = "Los Angeles";
            $shipping->state = "CA";
            $shipping->postalCode = "90002";
            $shipping->country = "US";
            $shipping->phone = "555-555-5555";
            $shipping->residential = null;
            $order->shipTo = $shipping;


            //var_dump($transactionInfo);
            /*
             *                $orderItem->lineItemKey = '1';
                $orderItem->sku = '58012345-' . $x;
                $orderItem->name = "Awesome sweater {$x}";
                $orderItem->quantity = '1';
                $orderItem->unitPrice = '29.99';
                $orderItem->warehouseLocation = 'Warehouse A';

             */

            die;
            //pull the product information from the said table


            //$order = $orderservice->getOrder('1234');
            $createOrder = $orderservice->createOrder($order);
            $orderJsonResponse = $createOrder->getBody();

            $decoded = \GuzzleHttp\json_decode($orderJsonResponse);
            echo '<pre>';
            print_r($decoded);
            echo '</pre>';
        }

        return $status;

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