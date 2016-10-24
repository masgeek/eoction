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
    'itemView' => '_product_view_old',
]);

//static text fields
echo Html::textInput('update_url', $updateUrl, ['readonly' => true, 'id' => 'update_url', 'class' => 'hidden']);
echo Html::textInput('bid_url', $biddingUrl, ['readonly' => true, 'id' => 'bid_url', 'class' => 'hidden']);
echo Html::textInput('product_url', $productUrl, ['readonly' => true, 'id' => 'product_url', 'class' => 'hidden']);
echo Html::textInput('user_id', $userId, ['readonly' => true, 'id' => 'user_id', 'class' => 'hidden']);
//display the list widget
echo '<hr/>';
echo $listviewWidget;

//register js file
$this->registerJsFile('@web/js/bidding/bidding-progress.js');
?>
<style>
    .list-wrapper {
        background-color: pink;
    }

    .bidProgress {
        width: 100%;
        height: 10px;
    }

    .noplacedbids {
        background-color: purple;
    }

    .awaitingbid {
        background-color: #42e83e;
    }

    .goingonce {
        background-color: #ffb020;
    }

    .goingtwice {
        background-color: #fb0000;
    }

    .bidwon {
        background-color: #0000aa;
    }

    .nextbid {
        background-color: #0000aa;
    }

    .fadein {
        display: none;
    }
</style>

