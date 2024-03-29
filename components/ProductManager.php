<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/24
 * Time: 15:12
 */

namespace app\components;


use app\bidding\ActiveBids;
use app\models\BidActivity;
use app\module\products\models\FryProducts;
use app\module\products\models\ItemsCart;
use app\module\products\models\ProductBids;
use app\module\products\models\Products;
use app\module\products\models\TbActiveBids;
use app\module\products\product;
use yii\data\ActiveDataProvider;
use yii\data\SqlDataProvider;

class ProductManager
{
    /**
     * compute the percentage discount
     * @param $retail_price
     * @param $bid_price
     * @return int
     */
    public static function ComputePercentageDiscount($retail_price, $bid_price)
    {
        $discount_percentage = 0;
        if ($retail_price > 0) {
            $discount_percentage = 100 - round((($bid_price * 100) / $retail_price), 2);
        }
        return $discount_percentage;
    }

    /**
     * Get the shipping cost per region
     * @param null $product_id
     * @param bool $first_item
     * @param bool $return_lowest
     * @return float|int
     */
    public static function ComputeShippingCost($product_id = null, $first_item = true,$return_lowest = false)
    {
        if($return_lowest){
            return \Yii::$app->shippingregions->shippingcost(0);
        }
        $userId = \Yii::$app->user->id ? \Yii::$app->user->id : 0;
        $country = AccountManager::GetUserAddress($userId, null, true);
        if ($first_item) {
            $shipping_cost = \Yii::$app->shippingregions->shippingcost($country, $userId);
        } else {
            $shipping_cost = \Yii::$app->shippingregions->additionalitemshipping();
        }

        return $shipping_cost;

    }

    /**
     * @param int $total_paid
     * @return float
     */
    public static function ComputeTaxAmount($total_paid = 0)
    {
        $tax_amount = round(((5 * $total_paid) / 100), 2);
        return $tax_amount = 0;
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
     * @param int $no_of_items
     * @param int $min_stock
     * @param array $allow_purchase
     * @param array $exclusion_list
     * @return ActiveDataProvider
     */
    public static function GetItemsForSale($no_of_items = 20, $min_stock = 1, $allow_purchase = [1], $exclusion_list = [])
    {
        $query = FryProducts::find()
            ->distinct('sku')
            //->where(['IN', 'visible', $allow_auction])
            ->where(['IN', 'allow_purchase', $allow_purchase,])
            ->andWhere(['>=', 'stock_level', $min_stock])//stock levels should be greater or equal to 1
            ->orderBy('productid ASC');

        $item_provider = new ActiveDataProvider([
            'query' => $query, //randomly pick items
            'pagination' => [
                'pageSize' => $no_of_items
            ],
        ]);

        return $item_provider;
    }

    /**
     * @param int $no_of_items
     * @param int $min_stock
     * @param array $allow_request
     * @return ActiveDataProvider
     */
    public static function GetItemsForBidRequest($no_of_items = 20, $min_stock = 1, $allow_request = [1])
    {
        $query = FryProducts::find()
            ->distinct('sku')
            ->where(['IN', 'allow_bid_request', $allow_request,])
            ->andWhere(['>=', 'stock_level', $min_stock])//stock levels should be greater or equal to 1
            ->orderBy('productid ASC');

        $item_provider = new ActiveDataProvider([
            'query' => $query, //randomly pick items
            'pagination' => [
                'pageSize' => $no_of_items
            ],
        ]);

        return $item_provider;
    }


    /**
     *  returns items to be uctioned off
     * @param int $no_of_items
     * @param array $item_won
     * @param array $bid_active 1 active 0 not active default is 0
     * @return ActiveDataProvider
     */
    public
    static function GetItemsForBidding($no_of_items = 20, $item_won = [1, 0], $bid_active = [0, 1])
    {
        /* @var $activebids ActiveBids */
        $activebids = \Yii::$app->activebids;


        $query = TbActiveBids::find()
            ->where(['IN', 'ITEM_WON', $item_won,])
            ->andWhere(['IN', 'BID_ACTIVE', $bid_active,])
            ->limit($no_of_items)
            ->orderBy('ACTIVE_ID ASC');


        //if ($query == null || $query->count() < $activebids->maximum_items) {
            //refresh the active bids table
            //$activebids->Remove_Won_Expired_Items();
            //GetItemsForBidding($no_of_items = 20, $item_won = [1, 0], $bid_active = [0])
            //return self::GetItemsForBidding($no_of_items, $item_won, $bid_active);
        //}

        $item_provider = new ActiveDataProvider([
            'query' => $query, //randomly pick items
            'pagination' => [
                'pageSize' => $no_of_items
            ],
        ]);
        return $item_provider;
    }

    /**
     * @param $user_id
     * @param array $sold_status
     * @return ActiveDataProvider
     */
    public
    static function GetUserCartItems($user_id, $sold_status = [0, 1])
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

    /**
     * @param $user_id
     * @param array $sold_status
     * @return array
     */
    public
    static function GetUserCartItemsTotal($user_id, $sold_status = [0, 1])
    {
        /* @var $productModel FryProducts */
        /* @var $model ItemsCart */
        $first_item = true;

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
            $productModel = $model->pRODUCT; //getProductInfo($model->PRODUCT_ID);

            $product_price = $model->TOTAL_PRICE;

            $total[] = (float)$product_price;

            $shipping[] = ProductManager::ComputeShippingCost($productModel->productid, $first_item);

            $first_item = false;
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

    /**
     * @param $user_id
     * @return array
     */
    public
    static function GetPaypalItems($user_id)
    {
        /* @var $model ItemsCart */
        /* @var $productModel FryProducts */

        $userId = \Yii::$app->user->id ? \Yii::$app->user->id : 0;

        $addressCountry = AccountManager::GetUserAddress($userId, null, true);

        $total = [];
        $shipping = [];
        $paypalItems = [];
        $first_item = true;
        $cartItems = ProductManager::GetUserCartItems($user_id, $sold_status = [0]);
        if ($cartItems->count > 0) {

            foreach ($cartItems->models as $model) {
                $productModel = $model->pRODUCT;
                if ($model->BIDDED_ITEM == '1') {
                    $product_price = $model->PRODUCT_PRICE;
                } else {
                    $product_price = $productModel->buyitnow; //get the retail price if its not a bid item
                }
                $total[] = (float)$product_price;
                $shipping[] = ProductManager::ComputeShippingCost($model->PRODUCT_ID, $first_item);
                $first_item = false;
                $paypalItems['ITEMS'][] = [
                    'NAME' => $productModel->name,
                    'ITEM_ID' => $model->CART_ID,
                    'DESC' => isset($productModel->desc) ? $productModel->desc : 'N/A',
                    'PRICE' => $product_price,
                ];
            }

            $sub_total = array_sum($total);
            $shipping_total = array_sum($shipping);

            $total_summary = [
                'SUB_TOTAL' => $sub_total,
                'SHIPPING_TOTAL' => $shipping_total,
                'TOTAL' => $sub_total + $shipping_total
            ];

            $paypalItems['SUMMARY'] = ['SUMMARY' => $total_summary];
        }
        return $paypalItems;
    }

    /**
     * @param $cart_item_id
     * @param $paypal_hash
     * @return bool
     */
    public
    static function AddPaypalHash($cart_item_id, $paypal_hash)
    {
        $model = ItemsCart::findOne($cart_item_id);
        if ($model != null) {
            $model->PAYPAL_HASH = $paypal_hash;
            $model->save();//save the hash data
        }
        return false;
    }

    /**
     * @param $paypal_hash
     * @return int
     */
    public
    static function UpdatePaidCartItems($paypal_hash)
    {

        return ItemsCart::updateAll(['IS_SOLD' => 1], ['PAYPAL_HASH' => $paypal_hash]);
    }

    /**
     * Returns image url of the product
     * @param $product_id
     * @return string
     */
    public
    static function GetImageUrl($product_id)
    {
        $imageHost = \Yii::$app->params['ExternalImageServerLink'];
        $imageFolder = \Yii::$app->params['ExternalImageServerFolder'];

        $imageModel = new FryProducts();
        $imageObject = $imageModel->getSingleImage($product_id);


        $product_image = $imageObject ? "{$imageHost}/{$imageFolder}/{$imageObject->imagefile}" : '@web/product_images/placeholder.png';

        return $product_image;
    }

    /**
     *
     */
    public
    static function CleanBiddingData()
    {
        ItemsCart::deleteAll();
        BidActivity::deleteAll();
        ProductBids::deleteAll();
    }

    /**
     * @param $image_url
     * @return string
     */
    public
    static function CheckImageExists($image_url)
    {

        return $image_url;
        //$product_image = 'http://lorempixel.com/800/400/nature/2';//'@web/product_images/placeholder.png';
        $product_image = 'http://placehold.it/800?text=No+Product+Image';//'@web/product_images/placeholder.png';

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $image_url);
        // don't download content
        curl_setopt($ch, CURLOPT_NOBODY, 1);
        curl_setopt($ch, CURLOPT_FAILONERROR, 1);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        if (curl_exec($ch) !== FALSE) {
            $product_image = $image_url;
        }

        return $product_image;
    }


    /**
     * This function changes the stock of a product upon successful payment
     * @param array $product_id_array
     */
    public
    static function UpdateProductStock($product_id_array = [])
    {
        $item_count = array_count_values($product_id_array); //count the number of items sold will be grouped based on their values

        foreach ($item_count as $product_id => $items_bought) {
            $items_to_reduce = -1 * (int)$items_bought;
            //update the stock count i.e available stock minus the bought items
            FryProducts::updateAllCounters(['stock_level' => $items_to_reduce], "productid=$product_id");
        }
    }

    /**
     * Sets the expiry date for a certain product
     * @param int $expires_after default is 3 days
     * @return false|string
     */
    public
    static function SetProductExpiryDate($expires_after = 3)
    {
        $expiry_date = date('Y-m-d', strtotime("+$expires_after days"));
        return $expiry_date;
    }
}