<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\BidRequesters */

$this->title = 'Update Bid Requesters: ' . $model->REQUESTER_ID;
$this->params['breadcrumbs'][] = ['label' => 'Bid Requesters', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->REQUESTER_ID, 'url' => ['view', 'id' => $model->REQUESTER_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="bid-requesters-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
