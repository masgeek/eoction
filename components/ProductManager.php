<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/24
 * Time: 15:12
 */

namespace app\components;


use app\models\BidActivity;
use app\module\products\models\FryProducts;
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
        $product = FryProducts::findOne(['productid' => $product_id]);
        if ($product != null) {
            $retail_price = $product->prodretailprice;
            $bid_price = $product->prodprice;

            if ($retail_price > 0) {
                $discount_percentage = 100 - round((($bid_price * 100) / $retail_price), 2);
            }
        }
        return $discount_percentage;
    }

    /**
     * @param null $product_id
     * @param int $retail_price
     * @return float|int
     */
    public static function ComputeShippingCost($product_id = null, $retail_price = 0)
    {
        $product = FryProducts::findOne(['productid' => $product_id]);
        if ($product != null) {
            $retail_price = $product->prodretailprice;
        }

        $shipping_cost = round(((5 * $retail_price) / 100), 2);
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
            'query' => FryProducts::find()
                ->where(['IN', 'prodvisible', $auction_param,])
                ->andWhere(['>=', 'prodcurrentinv', $min_stock])//stock levels should be greater or equal to 1
                ->andWhere(['NOT IN', 'prodcode', $exclusion_list])
             //   ->orderBy(['rand()' => SORT_DESC]), //randomly pick items
            ->orderBy('productid ASC'),
            'pagination' => [
                'pageSize' => $no_of_items = 1
            ],
        ]);

        return $item_provider;
    }

    public static function GetItemsForSaleOld($no_of_items = 10, $auction_param = [1, 0], $min_stock = 1, $exclusion_list = [])
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

    /**
     * @param $user_id
     * @param array $sold_status
     * @return ActiveDataProvider
     */
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

    /**
     * @param $user_id
     * @param array $sold_status
     * @return array
     */
    public static function GetUserCartItemsTotal($user_id, $sold_status = [0, 1])
    {
        /* @var $productModel FryProducts */

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
            $productModel = $model->getProductInfo($model->PRODUCT_ID);
            if ($model->BIDDED_ITEM == '1') {
                $product_price = $model->PRODUCT_PRICE;
            } else {
                $product_price = $productModel->prodretailprice; //get the retail price if its not a bid item
            }
            $total[] = (float)$product_price;
            $shipping[] = ProductManager::ComputeShippingCost($productModel->productid);
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
    public static function GetPaypalItems($user_id)
    {
        /* @var $model ItemsCart */
        /* @var $productModel FryProducts */
        $total = [];
        $shipping = [];
        $paypalItems = [];
        $cartItems = ProductManager::GetUserCartItems($user_id, $sold_status = [0]);
        if ($cartItems->count > 0) {

            foreach ($cartItems->models as $model) {
                $productModel = $model->getProductInfo($model->PRODUCT_ID);
                if ($model->BIDDED_ITEM == '1') {
                    $product_price = $model->PRODUCT_PRICE;
                } else {
                    $product_price = $productModel->prodretailprice; //get the retail price if its not a bid item
                }
                $total[] = (float)$product_price;
                $shipping[] = ProductManager::ComputeShippingCost($model->PRODUCT_ID);

                $paypalItems['ITEMS'][] = [
                    'NAME' => $productModel->prodname,
                    'ITEM_ID' => $model->CART_ID,
                    'DESC' => isset($productModel->proddesc) ? $productModel->proddesc : 'N/A',
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
    public static function AddPaypalHash($cart_item_id, $paypal_hash)
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
    public static function UpdatePaidCartItems($paypal_hash)
    {

        return ItemsCart::updateAll(['IS_SOLD' => 1], ['PAYPAL_HASH' => $paypal_hash]);
    }

    /**
     * Returns image url of the product
     * @param $product_id
     * @return string
     */
    public static function GetImageUrl($product_id)
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
    public static function CleanBiddingData()
    {
        ItemsCart::deleteAll();
        BidActivity::deleteAll();
        ProductBids::deleteAll();
    }
}