<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 * @var $requestModel app\models\BidRequests
 */

use yii\widgets\ListView;
use yii\helpers\Url;
use yii\helpers\Html;

//register js file
$this->registerJsFile('@web/js/bidding/bidding-request-stable.js');


$updateUrl = Url::toRoute(['shop/item-update']);
$biddingUrl = Url::toRoute(['site/place-bid']);
$productUrl = Url::toRoute(['site/next-item']);
$bidwonUrl = Url::toRoute(['shop/bid-won']);
$winningUrl = Url::toRoute(['shop/winning-user']);
$loginUrl = Url::toRoute(['site/login']);
$userId = yii::$app->user->id ? yii::$app->user->id : 0;

$listviewWidget = ListView::widget([
    'dataProvider' => $listDataProvider,
    //'layout' => "{items}",
    'layout' => "{pager}\n{items}\n{pager}\n{summary}",
    //'itemView' => '_requestbox',
    'itemView' => '_bid_request_box',
    'viewParams' => ['requestModel' => $requestModel],
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

<!-- Static text fields -->
<?= Html::textInput('update_url', $updateUrl, ['readonly' => true, 'id' => 'update_url', 'class' => 'hidden']) ?>
<?= Html::textInput('bidwon_url', $bidwonUrl, ['readonly' => true, 'id' => 'bidwon_url', 'class' => 'hidden']) ?>
<?= Html::textInput('bid_url', $biddingUrl, ['readonly' => true, 'id' => 'bid_url', 'class' => 'hidden']) ?>
<?= Html::textInput('product_url', $productUrl, ['readonly' => true, 'id' => 'product_url', 'class' => 'hidden']) ?>
<?= Html::textInput('user_id', $userId, ['readonly' => true, 'id' => 'user_id', 'class' => 'hidden']) ?>
<?= Html::textInput('winning_url', $winningUrl, ['readonly' => true, 'id' => 'winning_url', 'class' => 'hidden']) ?>
<?= Html::textInput('login_url', $loginUrl, ['readonly' => true, 'id' => 'login_url', 'class' => 'hidden']) ?>
<!-- end static text fields -->


<div class="container">
    <div class="row">
        <div class="col-md-12">
            <?= $listviewWidget ?>
        </div>
    </div>
</div>
