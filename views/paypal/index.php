<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Shipping Services';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="shipping-service-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Shipping Service', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'SERVICE_ID',
            'PAYPAL_TRANS_ID',
            'REQUESTED_SERVICE',
            'SERVICE_DESC',
            'CARRIER_CODE',
            // 'SERVICE_CODE',
            // 'PACKAGE_CODE',
            // 'CREATED',
            // 'UPDATED',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
