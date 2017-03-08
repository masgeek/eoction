<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */

use yii\widgets\ListView;
use yii\helpers\Url;
use yii\helpers\Html;


//register js file
$this->registerJsFile('@web/js/bidding/bidding-progress-stable.js');
//$this->registerJsFile('@web/js/bidding/facebook-login.js');

$updateUrl = Url::toRoute(['shop/item-update']);
$biddingUrl = Url::toRoute(['site/place-bid']);
$productUrl = Url::toRoute(['site/next-item']);
$bidwonUrl = Url::toRoute(['shop/bid-won']);
$winningUrl = Url::toRoute(['shop/winning-user']);
$loginUrl = Url::toRoute(['site/login']);


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
	'itemView' => 'bidding_box']);

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

