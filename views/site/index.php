<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */

use yii\widgets\ListView;
use yii\helpers\Url;
use yii\helpers\Html;

//var_dump($listDataProvider);

//set page title
$this->title = 'Live Auction';

//register js file
$this->registerJsFile('@web/js/bidding/bidding-progress-stable.js');
//$this->registerJsFile('@web/js/bidding/facebook-login.js');

$updateUrl = Url::toRoute(['shop/item-update']);
$biddingUrl = Url::toRoute(['site/place-bid']);
$productUrl = Url::toRoute(['site/next-item']);
$bidwonUrl = Url::toRoute(['shop/bid-won']);


$userId = yii::$app->user->id ? yii::$app->user->id : 0;
//$helper::AddItemsToBidActivity($listDataProvider);
//BidManager::AddItemsToBidActivity($listDataProvider);
//BidManager::RemoveItemsFromBidActivity('NHQ-J272582011000');
//show the products list default is 4x2
$listviewWidget = ListView::widget([
    'dataProvider' => $listDataProvider,
    'options' => [
        'tag' => 'div',
        'class' => 'list-wrapper',
        'id' => 'product_list',
    ],
    'layout' => "{items}",
    //'layout' => "{pager}\n{items}\n{summary}",
    //'itemView' => '_product_view_old',
    'itemView' => 'bidding_box',
]);
//static text fields
?>


<?= Html::textInput('update_url', $updateUrl, ['readonly' => true, 'id' => 'update_url', 'class' => 'hidden']) ?>
<?= Html::textInput('bidwon_url', $bidwonUrl, ['readonly' => true, 'id' => 'bidwon_url', 'class' => 'hidden']) ?>
<?= Html::textInput('bid_url', $biddingUrl, ['readonly' => true, 'id' => 'bid_url', 'class' => 'hidden']) ?>
<?= Html::textInput('product_url', $productUrl, ['readonly' => true, 'id' => 'product_url', 'class' => 'hidden']) ?>
<?= Html::textInput('user_id', $userId, ['readonly' => true, 'id' => 'user_id', 'class' => 'hidden']) ?>

<div class="col-md-10 col-md-offset-1">
    <?= $listviewWidget ?>
</div>


<!--= yii\authclient\widgets\AuthChoice::widget([
    'baseAuthUrl' => ['site/auth'],
    'popupMode' => true,
]) ?-->

<!--
<div
    class="fb-like"
    data-share="true"
    data-width="450"
    data-show-faces="true">
</div>
-->
<style>
    .list-wrapper {
        background-color: pink;
    }

    .progress-container {
        padding: 0 15px; /* padding {top/bottom} and {right/left}}*/
    }

    .bidProgress {
        width: 100%;
        height: 5px;
        margin-bottom: 5px;
        /*border-bottom:1px solid #1e002b;*/
        border:none;
    }

    .noplacedbids, .awaitingbid,.bidProgress {
        background-color: #29B6F6;
        /*background-image: linear-gradient(to right, #f00439, #f28d0d, pink);*/
    }

    .goingonce {
        background-color: #4caf50;
        /*background-image: linear-gradient(to right, #f09208, #b46e08, red);*/
    }

    .goingtwice {
        background-color: #ff9800;
        /*background-image: linear-gradient(to right, #f00439, #f28d0d, red);*/
    }

    .bidwon {
        background-color: #cddc39;
        /*background-image: linear-gradient(to right, #f00439, #f28d0d.red);*/
    }

    .nextbid {
        background-color: #795548;
        /*background-image: linear-gradient(to right, #f00439, #f28d0d);*/
    }

    .fadein {
        display: none;
    }
</style>
