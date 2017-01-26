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
$this->registerJsFile('@web/js/bidding/bidding-progress.js');
//$this->registerJsFile('@web/js/bidding/facebook-login.js');


$listviewWidget = ListView::widget([
    'dataProvider' => $listDataProvider,
    //'layout' => "{items}",
    'layout' => "{pager}\n{items}\n{pager}",
    'itemView' => '_requestbox',
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

<div class="col-md-10 col-md-offset-1">
    <?= $listviewWidget ?>
</div>
