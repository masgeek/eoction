<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/24
 * Time: 15:12
 */

namespace app\components;


use app\models\BidActivity;
use app\module\products\models\ItemsCart;
use app\module\products\models\ProductBids;
use app\module\products\models\Products;
use app\module\products\product;
use yii\data\ActiveDataProvider;

class ProductManager
{
    /**
     * compute the percentage discount
     * @param $product_id
     * @return int
     */
    public static function ComputePercentageDiscount($product_id)
    {
        $discount_percentage = 0;
        $product = Products::findOne(['PRODUCT_ID' => $product_id]);
        if ($product != null) {
            $retail_price = $product->RETAIL_PRICE;
            $bid_price = $product->PRICE;

            $discount_percentage = 100 - round((($bid_price * 100) / $retail_price), 2);
        }
        return $discount_percentage;
    }

    public static function ComputeShippingCost($product_id)
    {
        $shipping_cost = 0;
        $product = Products::findOne(['PRODUCT_ID' => $product_id]);
        if ($product != null) {
            $retail_price = $product->RETAIL_PRICE;

            $shipping_cost = round(((5 * $retail_price) / 100), 2);
        }
        return $shipping_cost;
    }

    public static function GetNumberOfBids($product_id)
    {
        $bidsCount = 0;
        $bids = BidActivity::findOne(['PRODUCT_ID' => $product_id]);
        if ($bids != null) {
            $bidsCount = $bids->ACTIVITY_COUNT; //return the count
        }
        return $bidsCount;
    }


    /**
     * returns items to either be sold or auctioned off
     * @param int $no_of_items
     * @param array $auction_param
     * @param int $min_stock
     * @param array $exclusion_list
     * @return ActiveDataProvider
     */
    public static function GetItemsForSale($no_of_items = 10, $auction_param = [1, 0], $min_stock = 1, $exclusion_list = [])
    {
        $item_provider = new ActiveDataProvider([
            'query' => Products::find()
                ->where(['IN', 'ALLOW_AUCTION', $auction_param,])
                ->andWhere(['>=', 'CURRENT_STOCK_LEVEL', $min_stock])//stock levels should be greater or equal to 1
                ->andWhere(['NOT IN', 'SKU', $exclusion_list])
                ->orderBy(['rand()' => SORT_DESC]), //randomly pick items
            //->orderBy('PRODUCT_ID ASC'),
            'pagination' => [
                'pageSize' => $no_of_items
            ],
        ]);

        return $item_provider;
    }

    public static function GetUserCartItems($user_id, $sold_status = [0, 1])
    {
        $query = ItemsCart::find()
            ->where(['USER_ID' => $user_id,])
            ->andWhere(['IN', 'IS_SOLD', $sold_status])//get both sold and unsold items or one of the two
            // ->orderBy(['rand()' => SORT_DESC]), //randomly pick items
            ->orderBy('DATE_ADDED ASC');

        $cart_item_data = new ActiveDataProvider([
            'query' => $query,
            'pagination' => false,
            /*'pagination' => [
                'pageSize' => 1
            ],*/
        ]);

        return $cart_item_data;
    }

    public static function GetUserCartItemsTotal($user_id, $sold_status = [0, 1])
    {
        $total = [];
        $shipping = [];
        $query = ItemsCart::find()
            ->where(['USER_ID' => $user_id,])
            ->andWhere(['IN', 'IS_SOLD', $sold_status]);

        $cart_item_data = new ActiveDataProvider([
            'query' => $query,
            'pagination' => false,
        ]);

        foreach ($cart_item_data->models as $model) {
            if ($model->BIDDED_ITEM == '1') {
                $product_price = $model->PRODUCT_PRICE;
            } else {
                $product_price = $model->pRODUCT->RETAIL_PRICE; //get the retail price if its not a bid item
            }
            $total[] = (float)$product_price;
            $shipping[] = ProductManager::ComputeShippingCost($model->pRODUCT->PRODUCT_ID);
        }

        $sub_total = array_sum($total);
        $shipping_total = array_sum($shipping);
        $total_summary = [
            'SUB_TOTAL' => $sub_total,
            'SHIPPING_TOTAL' => $shipping_total,
            'TOTAL' => $sub_total + $shipping_total
        ];

        return $total_summary;
    }

    public static function CleanBiddingData()
    {
        BidActivity::deleteAll();
        ProductBids::deleteAll();
    }
}