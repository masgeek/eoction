<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 12/6/2016
 * Time: 9:36 PM
 */

namespace app\components;


use MichaelB\ShipStation\Endpoints\Stores;

class ShipStationHandler
{
//{awaiting_shipment, on_hold, shipped, cancelled}
    const AWAITING_SHIPMENT = 'awaiting_shipment';
    const SHIPPED = 'shipped';
    const CANCELLED = 'cancelled';
    const ON_HOLD = 'on_hold';

    public function CreateNewOrder($paypal_hash)
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