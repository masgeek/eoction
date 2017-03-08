<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\BidRequesters */

$this->title = $model->REQUESTER_ID;
$this->params['breadcrumbs'][] = ['label' => 'Bid Requesters', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bid-requesters-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->REQUESTER_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->REQUESTER_ID], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'REQUESTER_ID',
            'REQUESTED_ID',
            'REQUESTING_USER_ID',
            'CUSTOMER_NOTES:ntext',
            'CUSTOMER_NOTIFIED',
            'REQUEST_ACCEPTED',
            'CREATED',
            'UPDATED',
        ],
    ]) ?>

</div>
