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
use yii\helpers\Url;
use yii\widgets\Pjax;

$imageObject = $model->getSingleImage();
//$imageA = $imageObject ? $imageObject->IMAGE_URL : 'http://placehold.it/700/c55/fff';
$imageA = 'http://placehold.it/800/c66/000';

//caclulate ther percentage discount based oneth retail price and the bided amount
$retail = $model->RETAIL_PRICE;
$bid = $model->PRICE;

//if retail = 100 bid
$userid = yii::$app->user->id ? yii::$app->user->id : 1;
$sku = $model->SKU;

$discount = 100 - round((($bid * 100) / $retail), 0);
$bids = 0;

$productID = $model->PRODUCT_ID;
$bidStartTime = 1000;// * $productID; //initial start time for the bid

$biddingUrl = Url::toRoute(['site/place-bid'])
?>

    <div class="col-xs-18 col-sm-4 col-md-3" id="item_box_<?= $productID; ?>"">
    <ul class="price">
        <li>
            <?= Html::img($imageA, [
                'width' > '200',
                'id' => 'product_image_' . $productID,
                'class' => 'img img-responsive',
                'alt' => $model->PRODUCT_NAME,
            ]); ?>
        </li>
        <li>Starting Bid <?= $model->PRICE; ?></li>
        <li>Shipping</li>
        <li class="hidden">
            <input type="text" id="bid_type_<?= $productID; ?>" value="0" readonly="readonly"/>
            <input type="text" id="bid_placed_<?= $productID; ?>" value="0" readonly="readonly"/>
            <input type="text" id="bid_url_<?= $productID; ?>" value="<?= $biddingUrl; ?>" readonly="readonly"/>
            <input type="text" id="product_sku_<?= $productID; ?>" value="<?= $model->SKU; ?>" readonly="readonly"/>
            <input type="text" id="user_id" value="1" readonly="readonly"/>
        </li>
        <li>
            <hr/>
            <!-- progress bar here -->
            <span id="percentComplete<?= $productID ?>"></span>
            <span id="timeRemaining<?= $productID ?>"></span>

            <div class="bidProgress noplacedbids" id="progressBar<?= $productID ?>"></div>
            <!-- end of progress bar -->
        </li>
        <li>
            <!--<a href="#" class="button">BID NOW</a>-->
            <?= $bids; ?> Bids
            <?= Html::button('BID NOW', [
                'class' => 'btn btn-primary btn-block',
                //'onclick' => "placeBid($productID,$userid,'$sku');",
                'id' => "placebid_$productID"
            ]) ?>
        </li>
        <li id="info<?= $productID; ?>"></li>
    </ul>
    </div>
<?php
$this->registerJs("
    $(\"document\").ready(function(){
        setupVelocity($productID,$bidStartTime);
    });
");
