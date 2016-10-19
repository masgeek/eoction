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

        <div class="progresss progressBar" role="progressbar" data-goal="0" data-speed="<?= $bidStartTime; ?>"
             aria-valuemin="0" aria-valuemax="100"
             aria-valuenow="100" id="progressBar<?= $productID; ?>">
            <div class="progress__bar"><span class="progress__label"></span></div>
        </div>

        <div class="progress progressBar" role="progressbar" data-goal="0" data-speed="1000" aria-valuemin="0"
             aria-valuemax="100"
             aria-valuenow="100" id="progressBarB<?= $productID; ?>">
            <div class="progress__bar"><span class="progress__label"></span></div>
        </div

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

$this->registerJs(
    '$("document").ready(function(){ 
    
    NextBidCounter("progressBar"+' . $productID . ', 600,0);
     $("#progressBar"+' . $productID . ').asProgress(\'start\');
    });'
);
?>

<!--
<script type="text/javascript">
    jQuery(function($) {
        $('.progress').asProgress({
            namespace: 'progress',
            bootstrap: false,
            min: 0,
            max: 100,
            goal: 100,
            speed: 20, // speed of 1/100
            easing: 'linear',
            labelCallback: function labelCallback(n) {
                var percentage = this.getPercentage(n);
                return percentage + '%';
            }
        });
        $('#button_start').on('click', function() {
            $('.progress').asProgress('start');
        });
        $('#button_finish').on('click', function() {
            $('.progress').asProgress('finish');
        });
        $('#button_go').on('click', function() {
            $('.progress').asProgress('go', 50);
        });
        $('#button_go_percentage').on('click', function() {
            $('.progress').asProgress('go', '50%');
        });
        $('#button_stop').on('click', function() {
            $('.progress').asProgress('stop');
        });
        $('#button_reset').on('click', function() {
            $('.progress').asProgress('reset');
        });
    });
</script>
-->
<script type="text/javascript">
    //handle the progress bar here
    function placeBid($product_id, $user_id, $sku) {

        //change attribute of the spacebar

        //assign afresh
        //$('#progressBar' + $product_id).asProgress('setDefaults',DEFAULTS);
        //reset the timer position
        // $('#progressBar' + $product_id).asProgress('destroy');
        $("#progressBar" + $product_id).attr("data-speed", "800");
        // $('#progressBar' + $product_id).asProgress('reset');
        $('#progressBar' + $product_id).asProgress('start');


        //$('#progressBar' + $product_id).asProgress('go',-60);

        //restart the timer with new values
        //$('#progressBar'+$product_id).asProgress('start');
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
                //$('#progress' + $product_id).asProgress('stop');
            },
            success: function (data) {
                var $title = $('<h1>').text(data.talks[0].talk_title);
                var $description = $('<p>').text(data.talks[0].talk_description);
                $('#info' + $product_id)
                    .append($title)
                    .append($description);

                //call going once going twice e.t.c
            },
            type: 'GET'
        });
    }

    function NextBidCounter($elementName, $speed, $skip) {
        jQuery(function ($) {
            $('#' + $elementName).asProgress({
                namespace: 'progress',
                bootstrap: false,
                min: 0,
                max: 100,
                goal: 0,
                speed: $speed, // speed of 1/100
                easing: 'linear',
                labelCallback: function labelCallback(n) {
                    var percentage = this.getPercentage(n);
                    //return percentage + '%';
                },
                onFinish: function () {
                    //remove the progressbar
                    $("#" + $elementName).remove();
                }
            });
        });

        $('.progress').asProgress('start');
        //$("#progressBar" + $product_id).asProgress("start");
    }
    //function to update progressbar
    function UpdateProgressBar($barElement, $bidStartTime) {
        $("#" + $barElement).attr("class", "btn btn-danger btn-block");
    }
</script>
