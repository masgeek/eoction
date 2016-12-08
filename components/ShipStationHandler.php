<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 12/6/2016
 * Time: 9:36 PM
 */

namespace app\components;


use MichaelB\ShipStation\Endpoints\Stores;
use MichaelB\ShipStation\Models\Address;
use MichaelB\ShipStation\Models\Order;
use MichaelB\ShipStation\Models\OrderItem;
use MichaelB\ShipStation\Models\Store;
use MichaelB\ShipStation\ShipStationApi;

class ShipStationHandler
{
//{awaiting_shipment, on_hold, shipped, cancelled}
    const AWAITING_SHIPMENT = 'awaiting_shipment';
    const SHIPPED = 'shipped';
    const CANCELLED = 'cancelled';
    const ON_HOLD = 'on_hold';

    public function CreateNewOrder($paypal_hash)
    {
        //pull the product information from the said table
        $endpointurl = \Yii::$app->params['ShipStationApiUrl'];
        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];

        $options = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);


        $orderservice = $shipstation->getOrdersService();
        $productservice = $shipstation->getProductsService();

        $order = new Order();
        //$order->orderId = 1;
        $order->orderNumber = "EOCT001";
        $order->orderKey = null; // if specified, the method becomes idempotent and the existing Order with that key will be updated
        $order->orderDate = date('Y-m-d') . 'T' . date('H:i:s') . '.0000000';
        $order->paymentDate = date('Y-m-d') . 'T' . date('H:i:s') . '.0000000';
        $order->orderStatus = ShipStationHandler::ON_HOLD;
        $order->customerUsername = "Otoniel Ortega";
        $order->customerEmail = "ortega.x3@gmail.com";
        $order->amountPaid = 150.00;
        $order->taxAmount = 25.00;
        $order->shippingAmount = 25.00;
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

        //Billing Cl;ass
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


        //Add the individual items now
        for ($x = 0; $x <= 5; $x++) {
            $orderItem = new OrderItem();
            $orderItem->lineItemKey = '1';
            $orderItem->sku = '58012345-' . $x;
            $orderItem->name = "Awesome sweater {$x}";
            $orderItem->quantity = '1';
            $orderItem->unitPrice = '29.99';
            $orderItem->warehouseLocation = 'Warehouse A';

            $items[] = $orderItem;
        }
        $order->items = $items;


        //$order = $orderservice->getOrder('1234');
        $createOrder = $orderservice->createOrder($order);
        $orderJsonResponse = $createOrder->getBody();

        $decoded = \GuzzleHttp\json_decode($orderJsonResponse);
        echo '<pre>';
        print_r($decoded);
        echo '</pre>';

    }

    public function GetSingleOrder($order_id = '14847186')
    {
        $endpointurl = \Yii::$app->params['ShipStationApiUrl'];
        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];

        $options = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);


        $orderservice = $shipstation->getOrdersService();

        $searchParams = [
            'orderNumber' => $order_id
        ];
        $order = $orderservice->getOrder($order_id);


        $orderJsonResponse = $order->getBody();

        $decoded = \GuzzleHttp\json_decode($orderJsonResponse);
        echo '<pre>';
        print_r($decoded);
        echo '</pre>';

        return $decoded;
    }

    public function ListAllOrders()
    {

    }

    /**
     * @return \GuzzleHttp\Psr7\Stream|\Psr\Http\Message\StreamInterface
     */
    public function ListStores()
    {
        $storeService = new Stores();
        $stores = $storeService->listStores();

        return $stores->getBody(); //returns as a json body
    }
}