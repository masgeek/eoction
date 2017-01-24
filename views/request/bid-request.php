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
$this->title = 'Buy Items';

//register js file
$this->registerJsFile('@web/js/bidding/bidding-progress.js');
//$this->registerJsFile('@web/js/bidding/facebook-login.js');

$updateUrl = Url::toRoute(['shop/item-update']);
$biddingUrl = Url::toRoute(['site/place-bid']);
$productUrl = Url::toRoute(['site/next-item']);


$userId = 1;
$listviewWidget = ListView::widget([
    'dataProvider' => $listDataProvider,
    //'layout' => "{items}",
    'layout' => "{pager}\n{items}\n{pager}",
    'itemView' => '_requestbox',
    'pager' => [

        'firstPageLabel' => 'First',
        'lastPageLabel' => 'Last',
        'nextPageLabel' => 'Next',
        'prevPageLabel' => 'Previous',
        'maxButtonCount' => 3,

    ],
    'options' => [
        'tag' => 'div',
        'class' => 'list-wrapper',
        'id' => 'request_list',
    ]
]);
//static text fields
?>

<div class="col-md-10 col-md-offset-1">
    <?= $listviewWidget ?>
</div>
