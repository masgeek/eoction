<?php

namespace app\module\merchant\controllers;

class MerchantController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $this->view->title = 'Merchant Portal';
        return $this->render('index');
    }

    public function actionOrders()
    {
        $this->view->title = 'Product Orders';
        return $this->render('orders');
    }

    public function actionShipments()
    {
        $this->view->title = 'Shipped Products';
        return $this->render('shipments');
    }

}
