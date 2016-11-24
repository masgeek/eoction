<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/10
 * Time: 14:40
 */

/* @var $model app\module\products\models\ItemsCart */


use yii\helpers\Html;
use yii\web\View;

use app\components\ProductManager;

$formatter = \Yii::$app->formatter;

//$imageObject = $model->getSingleImage();
//$imageA = $imageObject ? $imageObject->IMAGE_URL : 'http://placehold.it/700/c55/fff';
//$imageA = '//lorempixel.com/400/400/nature';
$imageA = '@web/images/placeholder.png';
//$imageA = 'http://placeimg.com/640/480/any';

//calculate the percentage discount based on the retail price and the bidded amount
if ($model->BIDDED_ITEM == '1') {
    $product_price = $model->PRODUCT_PRICE;
} else {
    $product_price = $model->pRODUCT->RETAIL_PRICE; //get the retail price if its not a bid item
}

$userid = yii::$app->user->id ? yii::$app->user->id : 0;
//$sku = $model->SKU;

$bids = 0;

$cart_item_id = $model->PRODUCT_ID;
$product_name = $model->pRODUCT->PRODUCT_NAME;
$product_description = $model->pRODUCT->PRODUCT_DESCRIPTION;
$brand_name = $model->pRODUCT->BRAND_NAME;

$shipping = ProductManager::ComputeShippingCost($cart_item_id);
$bidStartTime = 60;// * $productID; //initial start time for the bid

$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($product_price);

?>

<!--
<div class="col-xs-18 col-sm-6 col-md-3" id="item_box_<?= $cart_item_id; ?>">
    <ul class="list-group">
        <li class="list-group-item"><?= $product_name ?></li>
        <li class="list-group-item"><?= $retail_price ?></li>
    </ul>
</div>
-->
<tr id="cart-row-<?= $cart_item_id ?>">
    <td>
        <?= Html::img($imageA, [
            'id' => 'product_image_' . $cart_item_id,
            'class' => 'thumbnail',
            'alt' => $product_name,
            'width'=>105
        ]); ?>
    </td>
    <td>
        <div class="media">
            <div class="media-body">
                <h4 class="media-heading"><a href="#"><?= $product_name ?></a></h4>
                <h5 class="media-heading"> by <a href="#"><?= $brand_name ?></a></h5>
                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
            </div>
        </div>
    </td>
    <td>
        <input type="email" class="form-control" id="exampleInputEmail1" value="1">
    </td>
    <td class="text-center"><strong><?= $retail_price ?></strong></td>
    <td class="text-center"><strong><?= $retail_price ?></strong></td>
    <td>
        <button type="button" class="btn btn-danger">
            <span class="glyphicon glyphicon-remove"></span> Remove
</tr>
