<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\module\products\models\ShippingService */

$this->title = $model->SERVICE_ID;
$this->params['breadcrumbs'][] = ['label' => 'Shipping Services', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="shipping-service-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->SERVICE_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->SERVICE_ID], [
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
            'SERVICE_ID',
            'PAYPAL_TRANS_ID',
            'REQUESTED_SERVICE',
            'SERVICE_DESC',
            'CARRIER_CODE',
            'SERVICE_CODE',
            'PACKAGE_CODE',
            'CREATED',
            'UPDATED',
        ],
    ]) ?>

</div>