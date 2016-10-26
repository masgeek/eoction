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
$imageA = 'http://placehold.it/800/c66/000';

//caclulate ther percentage discount based oneth retail price and the bided amount
$starting_bid_price = $model->PRICE;

$userid = yii::$app->user->id ? yii::$app->user->id : 1;
$sku = $model->SKU;

$bids = 0;

$productID = $model->PRODUCT_ID;

$discount = ProductManager::ComputePercentageDiscount($productID);
$shipping_cost = ProductManager::ComputeShippingCost($productID);
$bidStartTime = 60;// * $productID; //initial start time for the bid

$retail_price = $formatter->asCurrency($model->RETAIL_PRICE);
$starting_bid_price = $formatter->asCurrency($model->PRICE);
?>

<div class="col-xs-18 col-sm-4 col-md-3">
    <div class="offer offer-default">
        <div class="shape">
            <span class="shape-text"><?= $discount ?>%</span>
            <span class="shape-text quickview"><i class="fa fa-eye "></i> Quick View</span>
        </div>
        <div class="offer-content">
            <img src="http://placehold.it/500/c66/000" class="img img-responsive">
            <ul class="price">
                <li>
                    <h1 class="bidding-price">Starting Bid: <?= $starting_bid_price ?></h1>
                    <small class="retail-price"><?=$retail_price;?></small>
                </li>
                <li>Shipping 5%</li>
                <li>1 Bid</li>
                <li>
                    <!-- progress bar here -->
                    <div class="bidProgress noplacedbids" id="progressBar<?= $productID ?>"></div>
                    <!-- end of progress bar -->
                </li>
                <li id="bid_status_<?= $productID; ?>">Awaiting Bid</li>
            </ul>
            <?= Html::button('BID NOW', [
                'class' => 'btn btn-primary btn-block',
                'id' => "placebid_$productID"
            ]) ?>
        </div>
    </div>
</div>

