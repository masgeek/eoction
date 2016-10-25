<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/24
 * Time: 15:12
 */

namespace app\vendor\customhelper;

use yii\db\Expression;
use yii\helpers\Html;

use app\models\BidActivity;
use app\module\products\models\Products;
use app\module\products\models\ProductBids;

class ProductManager
{
    /**
     * compute the percentage discount
     * @param $retail_price
     * @param $bid_price
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
        $shipping_cost = 5;
        $product = Products::findOne(['PRODUCT_ID' => $product_id]);
        if ($product != null) {
            $retail_price = $product->RETAIL_PRICE;

            $shipping_cost = round(((5 * $retail_price) / 100), 2);
        }
        return $shipping_cost;
    }
}