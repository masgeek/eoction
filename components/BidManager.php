<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/21
 * Time: 13:08
 *
 * @var $item app\module\products\models\Products
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */

namespace app\components;

use yii\db\Expression;
use yii\helpers\Html;

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
                if ($model->save()) {/* do something */
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

            if ($model->save()) {/* do something */
            }
        }
    }

    /**
     * deletes item from the bidactivity table
     * @param $sku
     * @throws \Exception
     */
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
        //BidManager::GetNextItemToBid();
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
    public static function GetMaxBidAmount($product_id)
    {
        $max_bid_amount = ProductBids::find([
            'PRODUCT_ID' => $product_id,
        ])->max('BID_AMOUNT');

        return (float)$max_bid_amount;
    }

    /**
     * Get an items retail price
     * @param $product_id
     * @return float
     */
    public static function GetItemRetailAmount($product_id)
    {
        $retail_price = ProductBids::find([
            'PRODUCT_ID' => $product_id,
        ])->max('RETAIL_PRICE');

        return (float)$retail_price;
    }

    public static function GetTotalItemBids($product_id, $sku)
    {

    }

    public static function GetNextItemToBid()
    {
        $nested_items_array = BidActivity::find()->select('PRODUCT_SKU')->asArray()->all();
        //flatten the nested arrays
        $item_array = BidManager::GetExclusionItems();

        $productModel = Products::find()
            ->where([
                'NOT IN', 'SKU', $item_array,
            ])
            ->one();

        //add the item to bid activity
        BidManager::AddItemsToBidActivity($productModel, $multimodel = false); //add the picked item to bid activity table
        $product_list = BidManager::BuildList($productModel->PRODUCT_ID, $productModel->SKU,
            $productModel->PRODUCT_NAME,$productModel->RETAIL_PRICE,$productModel->PRICE);

        return $product_list;
    }

    /**
     * @return array
     */
    public static function GetExclusionItems()
    {
        $nested_items_array = BidActivity::find()
            ->select('PRODUCT_SKU')
            //->where('ACTIVITY_COUNT <= 0')
            ->asArray()
        ->all();
        //flatten the nested arrays
        $item_array = [];
        foreach ($nested_items_array as $item) {

            $item_array[] = $item['PRODUCT_SKU'];
        }

        return $item_array;
    }

    private static function BuildListOld($product_id, $sku, $product_name)
    {
        $img = 'http://placehold.it/800/c66/000';
        $imageHtml = Html::img($img, [
            'width' > '200',
            'id' => 'product_image_' . $product_id,
            'class' => 'img img-responsive',
            'alt' => $product_name,
        ]);

        $html_list = '<div class="col-xs-18 col-sm-4 col-md-3 fadein" id="item_box_' . $product_id . '">
            <ul class="price">
                <li>' . $imageHtml . '</li>
                <li>Starting Bid</li>
                <li>Shipping</li>
                <li class="hidden_">
                    <input type="text" id="bid_type_' . $product_id . '" value="0" readonly="readonly"/>
                    <input type="text" id="bid_placed_' . $product_id . '" value="0" readonly="readonly"/>
                    <input type="text" id="product_sku_' . $product_id . '" value="' . $sku . '" readonly="readonly"/>
                </li>
                <li><div class="bidProgress noplacedbids" id="progressBar' . $product_id . '"></div></li>
                <li id="bids_placed' . $product_id . '">0 Bids</li>
                <li><button id="placebid_' . $product_id . '" class="btn btn-primary btn-block">Bid Now</button></li>
                <li id="bid_status_' . $product_id . '">Awaiting Bid</li>
            </ul>
            </div>';

        //return the item list now
        $product_box = [
            'product_id' => $product_id,
            'sku' => $sku,
            'html_data' => $html_list
        ];
        return $product_box;
    }
    private static function BuildList($product_id, $sku, $product_name,$retail_price,$starting_bid_price)
    {
        $shipping_cost = ProductManager::ComputeShippingCost($product_id);
        $bids = 0;
        $discount = ProductManager::ComputePercentageDiscount($product_id);

        //$img = 'http://placehold.it/400/500';
        $img = '//lorempixel.com/400/400/food';
        $imageHtml = Html::img($img, [
            'id' => 'product_image_' . $product_id,
            'class' => 'img img-responsive',
            'alt' => $product_name,
        ]);

        $html_list = "<div class=\"col-xs-18 col-sm-6 col-md-3\" id=\"item_box_$product_id\">
    <div class=\"offer offer-default\">
        <div class=\"shape\">
            <span class=\"shape-text\">$discount%</span>
            <span class=\"shape-text quickview\"><i class=\"fa fa-eye \"></i> Quick View</span>
        </div>
        <div class=\"offer-content\">
        $imageHtml
            <ul class=\"price\">
                <li class=\"hidden\">
                    <input type=\"text\" id=\"bid_type_$product_id\" value=\"0\" readonly=\"readonly\"/>
                    <input type=\"text\" id=\"bid_placed_$product_id\" value=\"0\" readonly=\"readonly\"/>
                    <input type=\"text\" id=\"product_sku_$product_id\" value=\"$sku\" readonly=\"readonly\"/>
                </li>
                <li>
                    <h1 class=\"bidding-price\">Starting Bid: $starting_bid_price</h1>
                    <small class=\"retail-price\">$retail_price</small>
                </li>
                <li>Shipping $shipping_cost</li>
                <li>$bids Bid</li>
                <li>
                    <!-- progress bar here -->
                    <div class=\"bidProgress noplacedbids\" id=\"progressBar$product_id\"></div>
                    <!-- end of progress bar -->
                </li>
                <li id=\"bid_status_$product_id\">Awaiting Bid</li>
            </ul>
            <button id=\"placebid_$product_id\" class=\"btn btn-primary btn-block\">BID NOW</button>
        </div>
    </div>
</div>
";

        //return the item list now
        $product_box = [
            'product_id' => $product_id,
            'sku' => $sku,
            'html_data' => $html_list
        ];
        return $product_box;
    }
}