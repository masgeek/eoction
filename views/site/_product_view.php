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

$imageObject = $model->getSingleImage();
$imageA = $imageObject ? $imageObject->IMAGE_URL : 'http://placehold.it/800/c55/fff';
$imageB = 'http://placehold.it/800/fff/000';

//caclulate ther percentage discount based oneth retail price and the bided amount
$retail = $model->RETAIL_PRICE;
$bid = $model->PRICE;

//if retail = 100 bid

$discount = 100 - round((($bid * 100) / $retail), 0);
$bids = 0;
$bidStartTime = 10; //initial start time for the bid
$productID = $model->PRODUCT_ID;
?>

    <div class="col-xs-18 col-sm-4 col-md-3">
        <ul class="price">
            <li>
                <?= Html::img($imageA, [
                    'width' > '200',
                    'class' => 'img img-thumbnail',
                    'alt' => $model->PRODUCT_NAME,
                    //'onmouseover' => 'this.src="' . $imageB . '"',
                    //'onmouseleave' => 'this.src="' . $imageA . '"',
                ]); ?>
            </li>
            <li>Starting Bid <?= $model->PRICE; ?></li>
            <li>Shipping</li>
            <li><?= $bids; ?> Bids</li>
            <li><h1 style="margin-top:150px;">jQuery progressTimer Plugin Demo</h1>
                <input type="text" id="<?= $productID; ?>" value="<?= $bidStartTime; ?>" style="width: 50px"/>
                <button id="startProgressTimer<?= $productID; ?>">Do it!</button>
                <div id="progressTimer<?= $productID; ?>"></div>
            </li>
            <li class="grey"><a href="#" class="button">BID NOW</a></li>
        </ul>
    </div>

<?php
$this->registerJs(
    '$("document").ready(function(){ 
    $("#startProgressTimer' . $productID . '").click(function() {
        $("#progressTimer' . $productID . '").progressTimer({
            timeLimit: $("#' . $productID . '").val()
        });
    });
    });'
);
?>