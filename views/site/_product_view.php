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
$bidStartTime = 60; //initial start time for the bid
$productID = $model->PRODUCT_ID;

echo gmdate("H:i:s", $bidStartTime);
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
    <li>
        <section>
            <h2>Progress Bars</h2>
            <section>
                <div class="row">
                    <div class="example">
                        <h4>HTML</h4>
                        <pre><code data-language="html"></code></pre>
                    </div>
                    <div class="show">
                        <h4>RENDERED HTML</h4>
                        <!--<div class="progress" role="progressbar" data-goal="30">
                            <div class="progress__bar" style="width: 30%"></div>
                        </div>
                        <div class="progress" role="progressbar" data-goal="60" aria-valuemin="0" aria-valuemax="100">
                            <div class="progress__bar" style="width: 50%"></div>
                        </div>
                        -->
                        <div class="progress" role="progressbar" data-goal="0" aria-valuemin="0" aria-valuemax="100" aria-valuenow="100">
                            <div class="progress__bar"><span class="progress__label"></span></div>
                        </div>
                    </div>
                    <div>
                        <button id="button_start">start()</button>
                        <button id="button_stop">stop()</button>
                        <button id="button_go">go('50')</button>
                        <button id="button_go_percentage">go('50%')</button>
                        <button id="button_finish">finish()</button>
                        <button id="button_reset">reset()</button>
                    </div>
                </div>
            </section>
        </section
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

jQuery(function($) {
        $(\'.progress\').asProgress({
            namespace: \'progress\',
            bootstrap: false,
            min: 0,
            max: 100,
            goal: 100,
            speed: , // speed of 1/100
            easing: \'linear\',
            labelCallback: function labelCallback(n) {
                var percentage = this.getPercentage(n);
                //return percentage + \'%\';
                //console.log(percentage);
                if(percentage==0)
                {
                   var today = new Date();
                //alert("done");
                console.log(today);
                }
            }
        });
        $(\'#button_start\').on(\'click\', function() {
                           var today = new Date();
                //alert("done");
                console.log(today);
            $(\'.progress\').asProgress(\'start\');
        });
        $(\'#button_finish\').on(\'click\', function() {
            $(\'.progress\').asProgress(\'finish\');
        });
        $(\'#button_go\').on(\'click\', function() {
            $(\'.progress\').asProgress(\'go\', 50);
        });
        $(\'#button_go_percentage\').on(\'click\', function() {
            $(\'.progress\').asProgress(\'go\', \'50%\');
        });
        $(\'#button_stop\').on(\'click\', function() {
            $(\'.progress\').asProgress(\'stop\');
        });
        $(\'#button_reset\').on(\'click\', function() {
            $(\'.progress\').asProgress(\'reset\');
        });
    });
    
    });'
);

$this->registerJs(
    "$(\"document\").ready(function(){ 
        //call the countdown function
        //progress($bidStartTime, $bidStartTime, $('#progressBar$productID'),$productID);
    });"
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
    function progress(timeleft, timetotal, $element,$product_id) {

    };

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
