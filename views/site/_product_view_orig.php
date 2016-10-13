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
        <input type="text" id="bid_placed_<?= $productID; ?>" value="0" readonly="readonly" style="width: 50px"/>
        <div id="progressBar<?= $productID; ?>" class="progressBar">
            <div></div>
        </div>
    </li>
    <li class="grey">
        <!--<a href="#" class="button">BID NOW</a>-->
        <!--<?= Html::a("BID NOW", ['NextItem'], ['class' => 'btn btn-md btn-primary']) ?>-->
        <?= Html::button('BID NOW', ['class' => 'btn btn-primary', 'onclick' => "placeBid($productID);"]) ?>
    </li>
    <li id="info<?= $productID; ?>"></li>
</ul>
</div>
<!--

    -->
<?php

$this->registerJs(
    '$("document").ready(function(){ 
    $("#startProgressTimer' . $productID . '").click(function() {
        $("#progressTimer' . $productID . '").progressTimer({
            timeLimit: $("#' . $productID . '").val(),
            warningThreshold: 10,
            baseStyle: \'progress-bar-warning\',
            warningStyle: \'progress-bar-danger\',
            completeStyle: \'progress-bar-info\',
            onFinish: function() {
            console.log("I\'m done");
            }
        });
    });
    });'
);

/*$this->registerJs(
    "$(\"document\").ready(function(){ 
        //call the countdown function
        //progress($bidStartTime, $bidStartTime, $('#progressBar$productID'),$productID);
    });"
);*/
?>


<script type="text/javascript">
    //handle the progress bar here
    function progress(timeleft, timetotal, $element,$product_id) {
        var progressBarWidth = (timeleft * $element.width()) / timetotal;
        var bid_placed = $('#bid_placed_'+$product_id).val();
        console.log(bid_placed);
        //check if we have a vaue to prevent initial countdown
        $element.find('div').animate({width: progressBarWidth}, timeleft == timetotal ? 0 : 1000, 'linear');
        console.log(timeleft);
        if (timeleft > 0) {
            setTimeout(function () {
                progress(timeleft - 1, timetotal, $element);
            }, 1000);
        } else {
            console.log("it is over");
            //perfom ajax call on the element
        }
    }
    ;

    function placeBid($product_id) {
        //do an ajax request
        $bidStartTime = 5; //countdown for 10 seconds
        //alert('Bid placed for ' + $product_id);
        $.ajax({
            url: 'http://api.joind.in/v2.1/talks/10889',
            data: {
                id: $product_id,
                sku: 'SKU-67676',
                user_id: 2,
                format: 'json'
            },
            error: function () {
                $('#info').html('<p>An error has occurred</p>');
            },
            dataType: 'jsonp',
            success: function (data) {
                var $title = $('<h1>').text(data.talks[0].talk_title);
                var $description = $('<p>').text(data.talks[0].talk_description);
                $('#info' + $product_id)
                    .append($title)
                    .append($description);

                //call goin once going twice e.t.c
                clearInterval(null);
                progress($bidStartTime, $bidStartTime, $('#progressBar'+$product_id),$product_id);
                //$('#progressBar'+$product_id).remove();
            },
            type: 'GET'
        });
    }
</script>
