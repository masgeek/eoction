<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\module\products\models\Products */

$this->title = $model->PRODUCT_ID;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Products'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="products-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->PRODUCT_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->PRODUCT_ID], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'PRODUCT_ID',
            'UID',
            'SKU',
            'PRODUCT_NAME',
            'CATEGORIES',
            'BRAND_NAME',
            'PRICE',
            'RETAIL_PRICE',
            'ALLOW_PURCHASES',
            'VISIBLE',
            'AVAILABLE',
            'TRACK_INVENTORY',
            'CURRENT_STOCK_LEVEL',
            'MIN_STOCK_LEVEL',
            'STOCK_LOCATION',
            'STOCK_TYPE',
            'DATE_ADDED',
            'DATE_UPDATED',
        ],
    ]) ?>

</div>
