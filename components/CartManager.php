<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 11/3/2016
 * Time: 8:12 PM
 */

namespace app\components;


use app\models\BidActivity;
use app\module\products\models\ItemsCart;

class CartManager
{
    public static function AddItemsToCart($user_id, $product_id, $price, $bidden_item = 0)
    {
        $cartModel = new ItemsCart();
        $cartModel->isNewRecord = true;

        //add the data
        $cartModel->PRODUCT_ID = $product_id;
        $cartModel->USER_ID = $user_id;
        $cartModel->PRODUCT_PRICE = $price;
        $cartModel->BIDDED_ITEM = $bidden_item;

        if ($cartModel->save() && $cartModel->validate()) {
            //User::updateAllCounters(['states' => 1]);
            //delete the users bid activity it wont be needed from here
            BidActivity::deleteAll([
                'PRODUCT_ID' => $product_id,
                'LAST_BIDDING_USER_ID' => $user_id
            ]);
            return $cartModel->primaryKey;
        } else {
            return $cartModel->getErrors();
        }

        return null;
    }

    public static function GetCartItems($user_id)
    {
        $cart_count = ItemsCart::findAll([
            'USER_ID' => $user_id,
            'IS_SOLD' => 0
        ]);
        return count($cart_count);
    }
}