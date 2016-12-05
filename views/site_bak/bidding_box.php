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
$product_image = $imageObject ? '@web'.$imageObject->IMAGE_URL : '@web/product_images/placeholder.png';


//calculate the percentage discount based on the retail price and the bidded amount
$starting_bid_price = $model->PRICE;
$sku = $model->SKU;

$bids = ProductManager::GetNumberOfBids($model->PRODUCT_ID);

$product_id = $model->PRODUCT_ID;
$product_name = $model->PRODUCT_NAME;

$discount = ProductManager::ComputePercentageDiscount($product_id);
$shipping = ProductManager::ComputeShippingCost($product_id);
$bidStartTime = 60;// * $productID; //initial start time for the bid

$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($model->RETAIL_PRICE);

$starting_bid_price = \app\components\BidManager::GetMaxBidAmount($product_id);

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
        <div class="shape">
            <span class="shape-text" id="discount_<?= $product_id ?>"><?= $discount ?>%</span>
            <span class="shape-text quickview"><i class="fa fa-eye "></i> Quick View</span>
        </div>
        <div class="offer-content">
            <?= Html::img($product_image, [
                'id' => 'product_image_' . $product_id,
                'class' => 'img img-responsive',
                'alt' => $product_name,
            ]); ?>
            <div class="col-md-12 col-xs-6 text-center">
                <span class="bidding-price">Bid Price: <span id="bid_price<?=$product_id?>"><?= $starting_bid_price ?></span></span><br/>
                <span class="crossed retail-price"><?= $retail_price; ?></span>
            </div>
            <div class="col-md-12 col-xs-6 text-center">
                <span>Shipping <?= $shipping_cost ?></span>
            </div>
            <div class="col-md-12 col-xs-6 text-center text-uppercase">
                <span id="bids_placed_<?= $product_id ?>"><?= $bids ?></span> Bid(s)
            </div>
            <div class="col-md-12 col-xs-6 progress-container">
            <div class="bidProgress noplacedbids" id="progressBar<?= $product_id ?>"></div>
                </div>
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-xs-12" id="bid_button_<?=$product_id?>">
                    <?= Html::button('<span class="hammer-icon pull-left"></span>BID NOW', [
                        'class' => 'btn btn-bid btn-bid-active btn-block noradius',
                        'id' => "placebid_$product_id"
                    ]) ?>
                </div>

            </div>
            <div class="col-md-12 col-xs-6 text-center">
                <div id="bid_status_<?= $product_id; ?>" class="text-uppercase bid-message">Accepting Bids</div>
            </div>
        </div>
    </div>
</div>

<!-- start the script -->
<?php
$this->registerJs("
   SetupProgressBar($product_id,$bidStartTime);
", View::POS_READY)
?>

