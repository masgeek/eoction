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
$bidStartTime = 60 * 10; //initial start time for the bid
$productID = $model->PRODUCT_ID;

$biddingUrl = Url::toRoute(['site/update-bid'])
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
        <!--<input type="text" id="<?= $productID; ?>" value="<?= $bidStartTime; ?>" style="width: 50px"/>
                <button id="startProgressTimer<?= $productID; ?>">Do it!</button>
                <div id="progressTimer<?= $productID; ?>">Progress</div>-->
        <input type="text" id="bid_type_<?= $productID; ?>" value="0" readonly="readonly" style="width: 50px"/>
        <div class="progress progressBar" role="progressbar" data-goal="0" aria-valuemin="0" aria-valuemax="100"
             aria-valuenow="100" id="progressBar<?= $productID; ?>">
            <div class="progress__bar"><span class="progress__label"></span></div>
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
<!--

    -->
<?php

$this->registerJs(
    '$("document").ready(function(){ 
        var dt = new Date();
        console.log(dt);
jQuery(function($) {
        $("#progressBar"+' . $productID . ').asProgress({
            namespace: \'progress\',
            bootstrap: false,
            min: 0,
            max: 100,
            goal: 100,
            speed:' . $bidStartTime . ', // speed of 1/100 600 = 60seconds
            easing: \'linear\',
            labelCallback: function labelCallback(n) {
                var percentage = this.getPercentage(n);
                //return percentage + \'%\';
                //console.log(percentage);
                if(percentage<=0)
                {
                //0 no bid wait 60 secs
                //1 Accepting bids 10 sec
                //2 going once
                //2 going twice 
                var $bidPlaced = $("#bid_placed_"+' . $productID . ').val();
                //alert($bidPlaced);
                //call ajax when finished to remove the product from the list
                //also disable the placebid button
                 //$("#placebid_"+' . $productID . ').attr("disabled","disabled");
                 $("#placebid_"+' . $productID . ').attr("class","btn btn-danger btn-block");
                 $("#placebid_"+' . $productID . ').text("BID CLOSED");
                //alert($bidPlaced);
                var dt = new Date();
                 console.log(dt);
                }
            }
        });

//start the bid window timer
            $(\'.progress\').asProgress(\'start\');
    });
    
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
        /*$('#button_reset').on('click', function() {
            $('.progress').asProgress('reset');
        });*/

        //reset the timer position
        $('#progressBar'+$product_id).asProgress('reset');

        //restart the timer with new values
        $('#progressBar'+$product_id).asProgress('start');
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

                //call goin once going twice e.t.c
                clearInterval(null);
                progress($bidStartTime, $bidStartTime, $('#progressBar' + $product_id), $product_id);
                //$('#progressBar'+$product_id).remove();
            },
            type: 'GET'
        });
    }
</script>
