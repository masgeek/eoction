<?php

namespace app\module\merchant\controllers;

class MerchantController extends \yii\web\Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionOrders()
    {
        return $this->render('orders');
    }

    public function actionShipments()
    {
        return $this->render('shipments');
    }

}
