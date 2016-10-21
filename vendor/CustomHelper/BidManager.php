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
use app\module\products\models\Products;
use app\module\products\models\ProductBids;

class BidManager
{

    /**
     *Add items to the bid activity table
     * this will help us avoid refetching the same product
     * @param $listDataProvider
     */
    public static function AddItemsToBidActivity($listDataProvider, $multimodel = true)
    {

        $expression = new Expression('NOW()');
        if ($multimodel) {
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
        } else {
            //when only one model value is passed
            $model = new BidActivity();
            $model->isNewRecord = true;
            $model->PRODUCT_ID = $listDataProvider->PRODUCT_ID;
            $model->PRODUCT_SKU = $listDataProvider->SKU;
            $model->ACTIVITY_COUNT = 0;
            $model->BID_DATE = $expression;
            //save the data

            if ($model->save()) {

            } else {
                $model->getErrors();
            }
            var_dump($model);
        }
    }

    public static function RemoveItemsFromBidActivity($sku)
    {
        BidActivity::findOne(['PRODUCT_SKU' => $sku, 'ACTIVITY_COUNT' => 0])->delete();
    }

    /**
     * Track product bid information per user and also indicate who has won which bid
     * @param $user_id
     * @param $product_id
     * @param $sku
     *
     * @return boolean
     */
    public static function TrackUsersBids($user_id, $product_id, $sku, $bid_won = 0)
    {
        $bid_successful = false;
        $bid_amount_increment = BidManager::NextBidAmount($product_id);

        $expression = new Expression('NOW()');
        //first lets check if the product is already tracked
        $bidactivity = ProductBids::findOne([
            'PRODUCT_ID' => $product_id,
            'USER_ID' => $user_id,
        ]);

        if ($bidactivity != null) {
            //do the update
            //lets add the data
            $bidactivity->BID_AMOUNT = $bid_amount_increment;
            $bidactivity->PRODUCT_ID = $product_id;
            $bidactivity->USER_ID = $user_id;
            $bidactivity->BID_WON = $bid_won;
            $bidactivity->BID_TIME = $expression;

            if ($bidactivity->save()) {
                $bid_successful = true;
            }
        } else {
            $model = new ProductBids();
            $model->isNewRecord = true;

            //lets add the data
            $model->BID_AMOUNT = $bid_amount_increment;
            $model->PRODUCT_ID = $product_id;
            $model->USER_ID = $user_id;
            $model->BID_WON = $bid_won;
            $model->BID_TIME = $expression;
            if ($model->save()) {
                $bid_successful = true;
            }
        }

        return $bid_successful; //saving status
    }

    /**
     * increment bid based on the incremental amounts
     * @return int
     */
    public static function NextBidAmount($product_id)
    {
        BidManager::GetNextItemToBid();
        $max_amount = BidManager::GetMaxBidAmount($product_id);
        //increment this amount by 5
        $next_bid_amount = $max_amount + 5;
        return $next_bid_amount;
    }

    /**
     * Returns the maximum amount for an item
     * @param $product_id
     * @return float
     */
    private static function GetMaxBidAmount($product_id)
    {
        $max_bid_amount = ProductBids::find([
            'PRODUCT_ID' => $product_id,
        ])->max('BID_AMOUNT');

        return (float)$max_bid_amount;
    }

    public static function GetNextItemToBid()
    {
        $nested_items_array = BidActivity::find()->select('PRODUCT_SKU')->asArray()->all();
        //flatten the nested arrays
        $item_array = [];
        foreach ($nested_items_array as $item) {

            $item_array[] = $item['PRODUCT_SKU'];
        }

        $productModel = Products::find()
            ->where([
                'NOT IN', 'SKU', $item_array,
            ])
            ->one();

        //add the item to bid activity
        BidManager::AddItemsToBidActivity($productModel, $multimodel = false); //add the picked item to bid activity table
        $product_list = BidManager::BuildList($productModel->PRODUCT_ID, $productModel->SKU, $productModel->PRODUCT_NAME);

        return $product_list;
    }

    private static function BuildList($product_id, $sku, $product_name)
    {

        $img = 'http://placehold.it/800/c66/000';
        $item_list = '<div class="col-xs-18 col-sm-4 col-md-3" id="item_box_' . $product_id . '">
            <ul class="price">
                <li>
                <img id="product_image_' . $product_id . '" src="' . $img . '", alt="' . $product_name . '" class="img img-responsive" width="200">
                </li>
                <li>Starting Bid</li>
                <li>Shipping</li>
                <li class="hidden_">
                    <input type="text" id="bid_type_' . $product_id . '" value="0" readonly="readonly"/>
                    <input type="text" id="bid_placed_' . $product_id . '" value="0" readonly="readonly"/>
                    <input type="text" id="product_sku_' . $product_id . '" value="' . $sku . '" readonly="readonly"/>
                </li>
                <li>
                    <div class="bidProgress noplacedbids" id="progressBar' . $product_id . '"></div>
                </li>
                <li>
                <li id="bids_placed' . $product_id . '">Bids</li>
                <button id="placebid' . $product_id . '">Bid Now</button>
                </li>
                <li id="bid_status_' . $product_id . '">Awaiting Bid</li>
            </ul>
            </div>';

        return $item_list;
    }
}