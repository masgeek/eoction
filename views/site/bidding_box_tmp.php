<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/10
 * Time: 14:40
 */
/* @var $model app\module\products\models\FryProducts */
/* @var $imageObject app\module\products\models\FryProductImages */


use yii\helpers\Html;
use yii\web\View;

use app\components\ProductManager;

$formatter = \Yii::$app->formatter;

$imageHost = \Yii::$app->params['ExternalImageServerLink'];
$imageFolder = \Yii::$app->params['ExternalImageServerFolder'];

$imageObject = $model->image1;
$product_image = $imageObject ? $imageObject : '@web/product_images/placeholder.png';
//$product_image = 'http://lorempixel.com/460/250/';


//calculate the percentage discount based on the retail price and the bidded amount
$starting_bid_price = $model->price;
$sku = $model->sku;

$bids = ProductManager::GetNumberOfBids($model->productid);

$product_id = $model->productid;
$product_name = $model->name;

$discount = ProductManager::ComputePercentageDiscount($product_id);
$shipping = ProductManager::ComputeShippingCost($product_id);
$bidStartTime = 60;// * $productID; //initial start time for the bid

$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($model->buyitnow);

$starting_bid_price = \app\components\BidManager::GetMaxBidAmount($product_id);


\app\components\BidManager::NextBidAmount($product_id);
?>

<div class="col-xs-18 col-sm-6 col-md-3 column productbox" id="item_box_<?= $product_id; ?>">
    <div class="hidden">
        <input type="text" id="bid_count_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="bid_price_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="bid_type_<?= $product_id; ?>" value="1" readonly="readonly"/>
        <input type="text" id="bid_placed_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="product_sku_<?= $product_id; ?>" value="<?= $sku ?>" readonly="readonly"/>
    </div>
    <div class="proportion-image" id="image_box<?= $product_id ?>">
        <?= html::img($product_image, [
    'id' => 'product_image_' . $product_id,
    'class' => 'img-responsive',
    'alt' => $product_name,
]); ?>
    </div>

    <div class="bidding-price text-center">
        bid price: <span id="bid_price<?= $product_id ?>"><?= $starting_bid_price ?></span>
    </div>
    <div class="producttitle">
<div class="" id="bid_button_<?= $product_id ?>">
    <?= html::button('<span class="hammer-icon pull-left"></span>bid now', [
    'class' => 'btn btn-bid btn-bid-active btn-block noradius',
    'id' => "placebid_$product_id"
]) ?>
</div>
<div class="bidprogress noplacedbids" id="progressbar<?= $product_id ?>"></div>
</div>
<div class="text-center">
    <div class="text-uppercase bid-message bid-status"><span
                id="bid_status_<?= $product_id; ?>">accepting bids</span></div>
    <div class="text-uppercase winning-user text-muted"><span id="winning_user_<?= $product_id; ?>">-</span></div>
</div>
<div class="row">
    <div class="text-uppercase col-md-6 pull-left">
        <div class="bidcount"><span id="bids_placed_<?= $product_id ?>"><?= $bids ?></span> bid(s)</div>
    </div>
    <div class="text-uppercase col-md-6 pull-right">
        <span class="crossed retail-price"><?= $retail_price; ?></span>
        <span class="discount" id="discount_<?= $product_id ?>"><?= $discount ?>% off</span>
    </div>
</div>
</div>


<!--
<div class="hidden">
    <input type="text" id="bid_count_<?= $product_id; ?>" value="0" readonly="readonly"/>
    <input type="text" id="bid_price_<?= $product_id; ?>" value="0" readonly="readonly"/>
    <input type="text" id="bid_type_<?= $product_id; ?>" value="1" readonly="readonly"/>
    <input type="text" id="bid_placed_<?= $product_id; ?>" value="0" readonly="readonly"/>
    <input type="text" id="product_sku_<?= $product_id; ?>" value="<?= $sku ?>" readonly="readonly"/>
</div>

<div class="col-sm-6 col-md-3 productbox" id="item_box_<?= $product_id; ?>">
    <div class="thumbnail">
        <h5 class="text-center"><span class="label label-info"><?= $sku ?></span></h5>
        <div class="proportion-image" id="image_box<?= $product_id ?>">
            <?= html::img($product_image, [
                'id' => 'product_image_' . $product_id,
                'class' => 'img-responsive thumbnail',
                'alt' => $product_name,
            ]); ?>
        </div>
        <div class="caption">
            <div class="row">
                <div class="col-md-12 col-xs-12 bidding-price text-center text-uppercase">
                    Bid: <span id="bid_price<?= $product_id ?>"><?= $starting_bid_price ?></span>
                </div>
            </div>
            <div class="row" id="bid_button_<?= $product_id ?>">
                <?= html::button('<span class="hammer-icon pull-left"></span>bid now', [
                    'class' => 'btn btn-bid btn-bid-active btn-block noradius text-uppercase',
                    'id' => "placebid_$product_id"
                ]) ?>
            </div>
            <div class="bidprogress noplacedbids" id="progressbar<?= $product_id ?>"></div>

            <div class="row text-center">
                <div class="text-uppercase bid-message bid-status"><span
                            id="bid_status_<?= $product_id; ?>">accepting bids</span></div>
                <div class="text-uppercase winning-user text-muted"><span id="winning_user_<?= $product_id; ?>">-</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <a class="btn btn-default btn-product text-uppercase"><span class="bidcount"><span id="bids_placed_<?= $product_id ?>"><?= $bids ?></span> Bid(s)</span></a>
                </div>
                <div class="col-md-6">
                    <a href="#" class="btn btn-default btn-product">
                        <span class="crossed retail-price text-uppercase"><?= $retail_price; ?></span>
                        <span class="discount text-uppercase" id="discount_<?= $product_id ?>"><?= $discount ?>%</span>
                    </a></div>
            </div>
        </div>
    </div>
</div>
-->
<!-- start the script -->
<?php
$this->registerJs("
   SetupProgressBar($product_id,$bidStartTime);
", View::POS_END)
?>
