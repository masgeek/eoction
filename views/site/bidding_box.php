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
        <?= Html::img($product_image, [
            'id' => 'product_image_' . $product_id,
            'class' => 'img-responsive',
            'alt' => $product_name,
        ]); ?>
    </div>

    <div class="bidding-price text-center">
        Bid Price: <span id="bid_price<?= $product_id ?>"><?= $starting_bid_price ?></span>
    </div>
    <div class="producttitle">
        <!--<button class="btn btn-block">BID NOW</button>-->
        <div class="" id="bid_button_<?= $product_id ?>">
            <?= Html::button('<span class="hammer-icon pull-left"></span>BID NOW', [
                'class' => 'btn btn-bid btn-bid-active btn-block noradius',
                'id' => "placebid_$product_id"
            ]) ?>
        </div>
        <div class="bidProgress noplacedbids" id="progressBar<?= $product_id ?>"></div>
    </div>
    <div class="text-center">
        <div class="text-uppercase bid-message bid-status"><span id="bid_status_<?= $product_id; ?>">Accepting Bids</span></div>
        <div class="text-uppercase winning-user text-muted"><span id="winning_user_<?= $product_id; ?>">&nbsp;</span></div>
    </div>
    <div class="productprice">
        <div class="pull-right">
            <a href="#" class="btn btn-default btn-sm" role="button" title="Percentage discount <?= $discount ?>%">
                <span class="crossed retail-price"><?= $retail_price; ?></span>
                <span class="discount" id="discount_<?= $product_id ?>"><?= $discount ?>% Off</span>
            </a>
        </div>
        <div class="pricetext text-uppercase">
            <a href="#" class="btn btn-default btn-sm" role="button" title="Percentage discount <?= $discount ?>%">
                <span id="bids_placed_<?= $product_id ?>"><?= $bids ?></span> Bid(s)
            </a>
        </div>
    </div>
</div>
<!-- start the script -->
<?php
$this->registerJs("
   SetupProgressBar($product_id,$bidStartTime);
", View::POS_END)
?>

