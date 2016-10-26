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
//$imageA = 'http://lorempixel.com/400/500/fashion';
$imageA = '//placeimg.com/400/480/any';

//caclulate ther percentage discount based oneth retail price and the bided amount
$starting_bid_price = $model->PRICE;

$userid = yii::$app->user->id ? yii::$app->user->id : 1;
$sku = $model->SKU;

$bids = 0;

$productID = $model->PRODUCT_ID;

$discount = ProductManager::ComputePercentageDiscount($productID);
$shipping = ProductManager::ComputeShippingCost($productID);
$bidStartTime = 60;// * $productID; //initial start time for the bid

$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($model->RETAIL_PRICE);
$starting_bid_price = $formatter->asCurrency($model->PRICE);
?>

<div class="col-xs-18 col-sm-6 col-md-3" id="item_box_<?= $productID; ?>">
    <div class="offer offer-default">
        <div class="shape">
            <span class="shape-text"><?= $discount ?>%</span>
            <span class="shape-text quickview"><i class="fa fa-eye "></i> Quick View</span>
        </div>
        <div class="offer-content">
            <?= Html::img($imageA, [
                'id' => 'product_image_' . $productID,
                'class' => 'img img-responsive',
                'alt' => $model->PRODUCT_NAME,
            ]); ?>
            <ul class="price">
                <li class="hidden">
                    <input type="text" id="bid_type_<?= $productID; ?>" value="0" readonly="readonly"/>
                    <input type="text" id="bid_placed_<?= $productID; ?>" value="0" readonly="readonly"/>
                    <input type="text" id="product_sku_<?= $productID; ?>" value="<?= $model->SKU; ?>" readonly="readonly"/>
                </li>
                <li>
                    <h1 class="bidding-price">Starting Bid: <?= $starting_bid_price ?></h1>
                    <small class="retail-price"><?=$retail_price;?></small>
                </li>
                <li>Shipping <?=$shipping_cost?></li>
                <li><?=$bids?> Bid</li>
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

<!-- start the script -->
<?php
$this->registerJs("
   SetupProgressBar($productID,$bidStartTime);
", View::POS_READY)
?>

