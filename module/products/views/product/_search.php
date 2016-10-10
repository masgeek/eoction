<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\module\products\ProductsSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="products-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'PRODUCT_ID') ?>

    <?= $form->field($model, 'UID') ?>

    <?= $form->field($model, 'SKU') ?>

    <?= $form->field($model, 'PRODUCT_NAME') ?>

    <?= $form->field($model, 'CATEGORIES') ?>

    <?php // echo $form->field($model, 'BRAND_NAME') ?>

    <?php // echo $form->field($model, 'PRICE') ?>

    <?php // echo $form->field($model, 'RETAIL_PRICE') ?>

    <?php // echo $form->field($model, 'ALLOW_PURCHASES') ?>

    <?php // echo $form->field($model, 'VISIBLE') ?>

    <?php // echo $form->field($model, 'AVAILABLE') ?>

    <?php // echo $form->field($model, 'TRACK_INVENTORY') ?>

    <?php // echo $form->field($model, 'CURRENT_STOCK_LEVEL') ?>

    <?php // echo $form->field($model, 'MIN_STOCK_LEVEL') ?>

    <?php // echo $form->field($model, 'STOCK_LOCATION') ?>

    <?php // echo $form->field($model, 'STOCK_TYPE') ?>

    <?php // echo $form->field($model, 'DATE_ADDED') ?>

    <?php // echo $form->field($model, 'DATE_UPDATED') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
