<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 * @var \\app\module\products\models\ItemsCart $cartModel
 */

use yii\widgets\ListView;
use yii\helpers\Url;

//register js file
$this->registerJsFile('@web/js/shopping/shopping-actions.js');
//$this->registerJsFile('@web/js/bidding/facebook-login.js');

$updateUrl = Url::toRoute(['shop/item-update']);
$biddingUrl = Url::toRoute(['site/place-bid']);
$productUrl = Url::toRoute(['site/next-item']);

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
    'viewParams' => ['cartModel' => $cartModel],
    //'layout' => "{pager}\n{items}\n{pager}",
    'layout' => "{items}\n{pager}",
    //'itemView' => '_product_view_old',
    'itemView' => 'shopping_box',
]);
//static text fields
?>

<div class="col-md-10 col-md-offset-1">
    <?= $listviewWidget ?>
</div>
