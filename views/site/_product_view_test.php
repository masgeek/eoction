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
            <div class="percent"></div>
            <div class="pbar"></div>
            <div class="elapsed"></div>
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
 vInterval'.$productID.' = null;
$(document).ready(function(){
    jQuery.fn.anim_progressbar = function (aOptions) {
        // def values
        var iCms = 1000;
        var iMms = 60 * iCms;
        var iHms = 3600 * iCms;
        var iDms = 24 * 3600 * iCms;

        // def options
        var aDefOpts = {
            start: new Date(), // now
            finish: new Date().setTime(new Date().getTime() + 60 * iCms), // now + 60 sec
            interval: 100
        }
        var aOpts = jQuery.extend(aDefOpts, aOptions);
        var vPb = this;

        // each progress bar
        return this.each(
            function() {
                var iDuration = aOpts.finish - aOpts.start;

                // calling original progressbar
                $(vPb).children(\'.pbar\').progressbar();

                // looping process
               vInterval'.$productID.' = setInterval(
                    function(){
                        var iLeftMs = aOpts.finish - new Date(); // left time in MS
                        var iElapsedMs = new Date() - aOpts.start, // elapsed time in MS
                            iDays = parseInt(iLeftMs / iDms), // elapsed days
                            iHours = parseInt((iLeftMs - (iDays * iDms)) / iHms), // elapsed hours
                            iMin = parseInt((iLeftMs - (iDays * iDms) - (iHours * iHms)) / iMms), // elapsed minutes
                            iSec = parseInt((iLeftMs - (iDays * iDms) - (iMin * iMms) - (iHours * iHms)) / iCms), // elapsed seconds
                            iPerc = (iElapsedMs > 0) ? iElapsedMs / iDuration * 100 : 0; // percentages

                        // display current positions and progress
                        $(vPb).children(\'.percent\').html(\'<b>\'+iPerc.toFixed(1)+\'%</b>\');
                        $(vPb).children(\'.elapsed\').html(iDays+\' days \'+iHours+\'h:\'+iMin+\'m:\'+iSec+\'s</b>\');
                        $(vPb).children(\'.pbar\').children(\'.ui-progressbar-value\').css(\'width\', iPerc+\'%\');

                        // in case of Finish
                        if (iPerc >= 100) {
                            clearInterval(vInterval'.$productID.');
                            $(vPb).children(\'.percent\').html(\'<b>100%</b>\');
                            $(vPb).children(\'.elapsed\').html(\'Finished\');
                        }
                    } ,aOpts.interval
                );
            }
        );
    }

    // default mode
    //$(\'#progress1\').anim_progressbar();

    // from second #0 till 60
    var iNow = new Date().setTime(new Date().getTime() + 1 * 1000);
    var iEnd = new Date().setTime(new Date().getTime() + '.$bidStartTime.' * 1000);
    $("#progressBar"+'.$productID.').anim_progressbar({start: iNow, finish: iEnd, interval: 100});

});

//Interval cancelling option
$("#placebid_"+'.$productID.').click(function() {
clearInterval(vInterval'.$productID.');
//vInterval'.$productID.' = null;

//setInterval(vInterval'.$productID.', 0);
//start a new progressbar
    var iNow = new Date().setTime(new Date().getTime() + 1 * 1000);
    var iEnd = new Date().setTime(new Date().getTime() + 10 * 1000); //ten seconds
    $("#progressBar"+'.$productID.').anim_progressbar({start: iNow, finish: iEnd, interval: 100});
    
    console.log(vInterval'.$productID.');
});
');
?>


<script type="text/javascript">
        //handle the progress bar here
        function placeBid($product_id, $user_id, $sku) {

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
