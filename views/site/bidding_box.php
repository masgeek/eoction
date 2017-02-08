<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/10
 * Time: 14:40
 */
/* @var $model app\module\products\models\FryProducts */
/* @var $image_url app\module\products\models\FryProductImages */


use yii\helpers\Html;
use yii\web\View;

use app\components\ProductManager;

$formatter = \Yii::$app->formatter;

$imageHost = \Yii::$app->params['ExternalImageServerLink'];
$imageFolder = \Yii::$app->params['ExternalImageServerFolder'];

$image_url = $model->image1;
$product_image = ProductManager::CheckImageExists($image_url);


//calculate the percentage discount based on the retail price and the bidded amount
$starting_bid_price = $model->price;
$sku = $model->sku;

$bids = ProductManager::GetNumberOfBids($model->productid);

$product_id = $model->productid;
$product_name = $model->name;

$discount = ProductManager::ComputePercentageDiscount($product_id);
$shipping = ProductManager::ComputeShippingCost($product_id);

$randseed = rand(0, 25);
if (YII_ENV_DEV) {
    $bidStartTime = 5 + $randseed;// * $productID; //initial start time for the bid
} else {
    $bidStartTime = 40 + $randseed;// * $productID; //initial start time for the bid
}

$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($model->buyitnow);

$starting_bid_price = \app\bidding\BidManager::GetMaxBidAmount($product_id);

//\app\bidding\BidManager::NextBidAmount($product_id);
//\app\bidding\BidManager::AddToExclusionList($product_id, 0);

/* @var $activebids ActiveBids */
$activebids = \Yii::$app->activebids;

echo $activebids->AddToActiveBids($product_id);
?>
<div class="col-xs-18 col-sm-6 col-md-3 column productbox" id="item_box_<?= $product_id; ?>">
    <div class="hidden">
        <input type="text" id="bid_count_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="bid_price_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="bid_type_<?= $product_id; ?>" value="1" readonly="readonly"/>
        <input type="text" id="bid_placed_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="product_sku_<?= $product_id; ?>" value="<?= $sku ?>" readonly="readonly"/>
    </div>
    <div class="thumbnail">
        <!--<h5 class="text-center"><span class="label label-info"><?= $sku ?></span></h5>-->
        <div class="proportion-image" id="image_box<?= $product_id ?>">
            <?= Html::img($product_image, [
                'id' => 'product_image_' . $product_id,
                'class' => 'img-responsive',
                'alt' => $product_name,
            ]); ?>
        </div>
        <div class="caption">
            <div class="row">
                <div class="col-md-12 col-xs-12 bidding-price text-center text-uppercase">
                    Bid Price: <span id="bid_price<?= $product_id ?>"><?= $starting_bid_price ?></span>
                </div>
            </div>
            <div class="row">
                <!--<button class="btn btn-block">BID NOW</button>-->
                <div id="bid_button_<?= $product_id ?>">
                    <?= Html::button('<span class="hammer-icon pull-left"></span>BID NOW', [
                        'class' => 'btn btn-bid btn-bid-active btn-block noradius',
                        'id' => "placebid_$product_id"
                    ]) ?>
                </div>
                <div class="bidProgress noplacedbids" id="progressBar<?= $product_id ?>"></div>
            </div>
            <div class="row text-center">
                <div class="text-uppercase bid-message bid-status"><span
                            id="bid_status_<?= $product_id; ?>">Accepting Bids</span></div>
                <div class="text-uppercase winning-user text-muted"><span id="winning_user_<?= $product_id; ?>">-</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <a href="#" class="btn btn-default btn-product noborder">
                        <span class="small" id="shipping_<?= $product_id ?>">Shipping <?= $shipping_cost ?></span>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <a class="btn btn-default btn-product text-uppercase noborder"><span class="bidcount"><span
                                    id="bids_placed_<?= $product_id ?>"><?= $bids ?></span> Bid(s)</span></a>
                </div>
                <div class="col-md-6">
                    <a href="#" class="btn btn-default btn-product noborder">
                        <span class="crossed retail-price text-uppercase"><?= $retail_price; ?></span>
                        <span class="discount text-uppercase" id="discount_<?= $product_id ?>"><?= $discount ?>%</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- start the script -->
<?php
$this->registerJs("
   SetupProgressBar($product_id,$bidStartTime);
", View::POS_END)
?>

