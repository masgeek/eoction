<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/10
 * Time: 14:40
 */
/* @var $model app\module\products\models\Products */
/* @var $image app\module\products\models\Images */


use yii\helpers\Html;
use yii\web\View;

use app\components\ProductManager;

$formatter = \Yii::$app->formatter;

$imageObject = $model->getSingleImage();
//$imageA = $imageObject ? $imageObject->IMAGE_URL : 'http://placehold.it/700/c55/fff';
//$imageA = '//lorempixel.com/400/400/nature';
$imageA = '@web/images/placeholder.png';
//$imageA = 'http://placeimg.com/640/480/any';

//calculate the percentage discount based on the retail price and the bidded amount
$starting_bid_price = $model->PRICE;

$userid = yii::$app->user->id ? yii::$app->user->id : 0;
$sku = $model->SKU;

$bids = 0;

$product_id = $model->PRODUCT_ID;
$product_name = $model->PRODUCT_NAME;

$shipping = ProductManager::ComputeShippingCost($product_id);
$bidStartTime = 60;// * $productID; //initial start time for the bid

$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($model->RETAIL_PRICE);
$starting_bid_price = $formatter->asCurrency($model->PRICE);
?>


<div class="col-xs-18 col-sm-6 col-md-3" id="item_box_<?= $product_id; ?>">
    <div class="hidden">
        <input type="text" id="bid_count_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="bid_price_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="bid_type_<?= $product_id; ?>" value="1" readonly="readonly"/>
        <input type="text" id="bid_placed_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="product_sku_<?= $product_id; ?>" value="<?= $sku ?>" readonly="readonly"/>
    </div>
    <div class="offer offer-default">
        <div class="offer-content">
            <?= Html::img($imageA, [
                'id' => 'product_image_' . $product_id,
                'class' => 'img img-responsive',
                'alt' => $product_name,
            ]); ?>
            <div class="col-md-12 col-xs-6 text-center">
                <span class="retail-price"><?= $retail_price; ?></span>
            </div>
            <div class="col-md-12 col-xs-6 text-center">
                <span>Shipping <?= $shipping_cost ?></span>
            </div>
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-xs-12" id="bid_button_<?=$product_id?>">
                    <?= Html::button('BUY NOW', [
                        'class' => 'btn btn-primary btn-block noradius',
                        'id' => "buynow_$product_id"
                    ]) ?>
                </div>

            </div>
        </div>
    </div>
</div>
