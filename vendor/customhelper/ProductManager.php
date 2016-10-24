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
    public static function ComputerPercentageDiscount($retail_price, $bid_price)
    {
        $discount_percentage = 100 - round((($retail_price * 100) / $bid_price), 0);
        return $discount_percentage;
    }

    public static function ComputerShippingCost($retail_price, $bid_price)
    {

    }
}