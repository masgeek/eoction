<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */

use yii\widgets\ListView;
use yii\helpers\Url;
use yii\helpers\Html;

use app\vendor\customhelper\BidManager;

//var_dump($listDataProvider);

//set page title
$this->title = 'Live Auction';

//register js file
$this->registerJsFile('@web/js/bidding/bidding-progress.js');
//$this->registerJsFile('@web/js/bidding/facebook-login.js');

$updateUrl = Url::toRoute(['shop/item-update']);
$biddingUrl = Url::toRoute(['site/place-bid']);
$productUrl = Url::toRoute(['site/next-item']);


$userId = 1;
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
    'itemView' => 'product_box',
]);
//static text fields
?>

<?= Html::textInput('update_url', $updateUrl, ['readonly' => true, 'id' => 'update_url', 'class' => 'hidden']) ?>
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

    .bidProgress {
        width: 100%;
        height: 10px;
    }

    .noplacedbids {
        /*background-color: purple;*/
        background-image: linear-gradient(to right, #f00439, #f28d0d);
    }

    .awaitingbid {
        /*background-color: #42e83e;*/
        background-image: linear-gradient(to right, #f0472a, #f26912);
    }

    .goingonce {
        background-image: linear-gradient(to right, #f02d10, #f2102d);
    }

    .goingtwice {
        background-image: linear-gradient(to right, #f00439, #f28d0d);
    }

    .bidwon {
        background-image: linear-gradient(to right, #f00439, #f28d0d);
    }

    .nextbid {
        background-image: linear-gradient(to right, #f00439, #f28d0d);
    }

    .fadein {
        display: none;
    }
</style>

