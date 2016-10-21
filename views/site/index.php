<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */

use yii\widgets\ListView;
use yii\helpers\Url;

use app\vendor\customhelper\BidManager;

//var_dump($listDataProvider);

//set page title
$this->title = 'Live Auction';

$productUrl =Url::toRoute(['site/next-item']);

//$helper::AddItemsToBidActivity($listDataProvider);
BidManager::AddItemsToBidActivity($listDataProvider);
//BidManager::RemoveItemsFromBidActivity('NHQ-J272582011000');
//show the products list default is 4x2
$listviewWidget = ListView::widget([
    'dataProvider' => $listDataProvider,
    'options' => [
        'tag' => 'div',
        'class' => 'list-wrapper',
        'id' => 'list-wrapper',
    ],
    'layout' => "{items}",
    //'layout' => "{pager}\n{items}\n{summary}",
    'itemView' => '_product_view_old',
]);

//display the list widget
echo $listviewWidget;

//register js file
$this->registerJsFile('@web/js/bidding/bidding-progress.js');
?>
<input type="text" id="product_url" value="<?=$productUrl?>">
<style>
    .list-wrapper{
        background-color: pink;
    }
    .bidProgress {
        width: 100%;
        height: 10px;
    }

    .noplacedbids{  background-color: purple;  }
    .awaitingbid{  background-color: #42e83e;  }
    .goingonce{  background-color: #ffb020;  }
    .goingtwice{  background-color: #fb0000;  }
    .bidwon{  background-color: #0000aa;  }
    .nextbid{  background-color: #0000aa;  }
</style>

