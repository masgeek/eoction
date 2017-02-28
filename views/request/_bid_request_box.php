<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/10
 * Time: 14:40
 */
/* @var $model app\module\products\models\FryProducts */
/* @var $requestModel app\models\BidRequests */
/* @var $image app\module\products\models\FryProductImages */


use yii\helpers\Html;
use yii\web\View;

use app\components\ProductManager;

$formatter = \Yii::$app->formatter;

//$imageHost = \Yii::$app->params['ExternalImageServerLink'];
//$imageFolder = \Yii::$app->params['ExternalImageServerFolder'];

$image_url = $model->image1;

$product_image = ProductManager::CheckImageExists($image_url);


$retail_price_raw = $model->buyitnow;
$starting_bid_price_raw = $model->cost_price;

$bids = ProductManager::GetNumberOfBids($model->productid);


$sku = $model->sku;
$product_id = $model->productid;
$product_name = $model->name;

$discount = ProductManager::ComputePercentageDiscount($model->buyitnow, $starting_bid_price_raw);
$shipping = ProductManager::ComputeShippingCost($product_id);

$randseed = rand(5, 15);
if (YII_ENV_DEV) {
    $bid_start_time = 2 + $randseed;// * $productID; //initial start time for the bid
} else {
    $bid_start_time = 30 + $randseed;// * $productID; //initial start time for the bid
}

$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($retail_price_raw);
$starting_bid_price = $formatter->asCurrency($starting_bid_price_raw);

?>

<div class="col-xs-18 col-sm-6 col-md-3 column productbox" id="item_box_<?= $product_id ?>">
    <div class="hidden">
        <input type="text" id="bid_count_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="bid_price_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="bid_type_<?= $product_id; ?>" value="1" readonly="readonly"/>
        <input type="text" id="bid_placed_<?= $product_id; ?>" value="0" readonly="readonly"/>
        <input type="text" id="product_sku_<?= $product_id; ?>" value="<?= $sku ?>" readonly="readonly"/>
        <input type="text" id="starting_bid_<?= $product_id; ?>" value="<?= $starting_bid_price_raw ?>" readonly="readonly"/>
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
            <div class="row bid-request<?= $product_id ?> hidden">
                <div class="col-md-12 col-xs-12 bidding-price text-center text-uppercase">
                    Bid Price: <span id="bid_price<?= $product_id ?>"><?= $starting_bid_price ?></span>
                </div>
            </div>
            <div class="row start-bid<?= $product_id ?>">
                <div class="col-md-12 col-xs-12 bidding-price text-center text-uppercase">
                    Price: <span id="selling_price<?= $product_id ?>"><?= $retail_price ?></span>
                </div>

                <div id="bid_button_<?= $product_id ?>">
                    <?= Html::button('Bid Request', [
                        'class' => 'btn btn-bid btn-info btn-block noradius',
                        'id' => "bid_request_$product_id",
                        'onclick' => "InitiateBidRequest($product_id,$bid_start_time)"
                    ]) ?>
                </div>
            </div>
            <div class="row bid-request<?= $product_id ?> hidden">
                <!--<button class="btn btn-block">BID NOW</button>-->
                <div id="bid_button_<?= $product_id ?>">
                    <?= Html::button('<span class="hammer-icon pull-left"></span>Bid Now', [
                        'class' => 'btn btn-bid btn-bid-active btn-block noradius',
                        'id' => "placebid_$product_id",
                    ]) ?>
                </div>
                <div class="bidProgress noplacedbids" id="progressBar<?= $product_id ?>"></div>
            </div>
            <div class="row text-center bid-request<?= $product_id ?> hidden">
                <div class="text-uppercase bid-message bid-status"><span
                            id="bid_status_<?= $product_id; ?>">Accepting Bids</span></div>
                <div class="text-uppercase winning-user text-muted"><span id="winning_user_<?= $product_id; ?>">-</span>
                </div>
            </div>
            <div class="row bid-request<?= $product_id ?> hidden">
                <div class="col-md-12">
                    <a href="#" class="btn btn-default btn-product noborder">
                        <span class="small" id="shipping_<?= $product_id ?>">Shipping <?= $shipping_cost ?></span>
                    </a>
                </div>
            </div>
            <div class="row bid-request<?= $product_id ?> hidden">
                <div class="col-md-6">
                    <a class="btn btn-default btn-product text-uppercase noborder">
                        <span class="bidcount">
                            <span id="bids_placed_<?= $product_id ?>"><?= $bids ?></span> Bid(s)
                        </span>
                    </a>
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
   //SetupProgressBar($product_id,$bid_start_time);
", View::POS_END)
?>

