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
$this->registerJsFile('@web/js/bidding/bidding-requests-stable.js');
//$this->registerJsFile('@web/js/bidding/facebook-login.js');


$listviewWidget = ListView::widget([
    'dataProvider' => $listDataProvider,
    //'layout' => "{items}",
    'layout' => "{pager}\n{items}\n{pager}",
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
<?php if (Yii::$app->session->hasFlash('success')): ?>
    <div class="alert alert-success alert-dismissable">
        <button aria-hidden="true" data-dismiss="alert" class="close" type="button">CLOSE</button>
		<?= Yii::$app->session->getFlash('success') ?>
    </div>
<?php endif; ?>

<div class="col-md-10 col-md-offset-1">
	<?= $listviewWidget ?>
</div>
