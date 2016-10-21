<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/21
 * Time: 13:08
 */

/*
    @var $item app\module\products\models\Products
    @var \yii\data\ActiveDataProvider $listDataProvider
*/

namespace app\vendor\customhelper;

use yii\db\Expression;
use app\models\BidActivity;

class BidManager
{

    /**
     *Add items to the bid activity table
     * this will help us avoid refetching the same product
     * @param $listDataProvider
     */
    public static function AddItemsToBidActivity($listDataProvider)
    {

        $expression = new Expression('NOW()');
        foreach ($listDataProvider->models as $item) {
            //loop through the model array
            $model = new BidActivity();
            $model->isNewRecord = true;
            $model->PRODUCT_ID = $item->PRODUCT_ID;
            $model->PRODUCT_SKU = $item->SKU;
            $model->ACTIVITY_COUNT = 0;
            $model->BID_DATE = $expression;
            //save the data
            if ($model->save()) {

            }
        }
    }

    public static function RemoveItemsFromBidActivity($sku)
    {
       BidActivity::findOne(['PRODUCT_SKU' => $sku, 'ACTIVITY_COUNT' => 0])->delete();
    }

    public static function TrackUsersBids($user_id,$product_id,$sku){

    }
}