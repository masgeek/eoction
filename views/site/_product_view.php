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
$imageA = $imageObject ? $imageObject->IMAGE_URL : 'http://placehold.it/700/c55/fff';
$imageB = 'http://placehold.it/800/fff/000';

//caclulate ther percentage discount based oneth retail price and the bided amount
$retail = $model->RETAIL_PRICE;
$bid = $model->PRICE;

//if retail = 100 bid
$userid = yii::$app->user->id ? yii::$app->user->id : 1;
$sku = $model->SKU;

$discount = 100 - round((($bid * 100) / $retail), 0);
$bids = 0;

$productID = $model->PRODUCT_ID;

$bidStartTime = (int)$model->PRICE; //initial start time for the bid in seconds

$biddingUrl = Url::toRoute(['site/place-bid']);
//gmdate("H:i:s", $bidStartTime);
?>

<div class="col-xs-18 col-sm-4 col-md-3" id="item_box_<?= $productID; ?>"">
<ul class="price">
    <li>
        <?= Html::img($imageA, [
            'width' > '200',
            'id' => 'product_image_' . $productID,
            'class' => 'img img-thumbnail',
            'alt' => $model->PRODUCT_NAME,
            //'onmouseover' => 'this.src="' . $imageB . '"',
            //'onmouseleave' => 'this.src="' . $imageA . '"',
        ]); ?>
    </li>
    <li>Starting Bid <?= $model->PRICE; ?></li>
    <li>Shipping</li>
    <li><?= $bids; ?> Bids</li>
    <li>
        <input type="text" id="bid_type_<?= $productID; ?>" value="0" readonly="readonly"/>
        <input type="text" id="bid_placed_<?= $productID; ?>" value="0" readonly="readonly"/>

        <div id="progressBar<?=$productID?>">
        </div>
    </li>
    <li class="grey">
        <!--<a href="#" class="button">BID NOW</a>-->
        <?= Html::button('BID NOW', [
            'class' => 'btn btn-primary btn-block',
            'onclick' => "placeBid($productID,$userid,'$sku');",
            'id' => "placebid_$productID"
        ]) ?>
    </li>
    <li id="info<?= $productID; ?>"></li>
</ul>
</div>

<?php
$this->registerJs('
$(document).ready(function(){
var bidDuration = '.$bidStartTime.';
alert(bidDuration);
    $("#progressBar'.$productID.'").timer({
        duration: bidDuration,
        format: \'%s seconds\',
        callback: function() {
            //stop the timer
            $("#progressBar'.$productID.'").timer(\'remove\');
        }
    });
});
');
?>


<script type="text/javascript">
    //handle the progress bar here
    function placeBid($product_id, $user_id, $sku) {

        return true;
        //reset the timer position
        $('#progressBar' + $product_id).asProgress('reset');

        //restart the timer with new values
        $('#progressBar' + $product_id).asProgress('start');
        //do an ajax request

        $bidStartTime = 5; //countdown for 10 seconds
        //alert('Bid placed for ' + $product_id);
        $.ajax({
            url: '<?= $biddingUrl; ?>',
            data: {
                id: $product_id,
                sku: $sku,
                user_id: $user_id,
                format: 'json'
            },
            error: function () {
                $('#info').html('<p>An error has occurred</p>');
            },
            dataType: 'jsonp',
            before: function (data) {
                //stop the minute bid bar first
                $('#progress' + $product_id).asProgress('stop');
            },
            success: function (data) {
                var $title = $('<h1>').text(data.talks[0].talk_title);
                var $description = $('<p>').text(data.talks[0].talk_description);
                $('#info' + $product_id)
                    .append($title)
                    .append($description);
                //call going once going twice e.t.c;
            },
            type: 'GET'
        });
    }

    //function to update progressbar
    function UpdateProgressBar($barElement, $bidStartTime) {
        $("#" + $barElement).attr("class", "btn btn-danger btn-block");
    }
</script>
