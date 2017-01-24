<?php

namespace app\controllers;

use app\components\ProductManager;

class RequestController extends \yii\web\Controller
{
    public $layout = 'column1';

    /**
     * @return string
     */
    public function actionBidRequest()
    {
        $dataProvider = ProductManager::GetItemsForSale($no_of_items = 2, $for_auction = [1,0], $min_stock = 1, $exclusion_list = [], $random = false);
        $this->view->title = 'Request to Bid';

        return $this->render('bid-request', ['listDataProvider' => $dataProvider]);
    }
}
