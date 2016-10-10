<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\module\products\models\Products */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="products-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'UID')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'SKU')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PRODUCT_NAME')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'CATEGORIES')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'BRAND_NAME')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PRICE')->textInput() ?>

    <?= $form->field($model, 'RETAIL_PRICE')->textInput() ?>

    <?= $form->field($model, 'ALLOW_PURCHASES')->textInput() ?>

    <?= $form->field($model, 'VISIBLE')->textInput() ?>

    <?= $form->field($model, 'AVAILABLE')->textInput() ?>

    <?= $form->field($model, 'TRACK_INVENTORY')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'CURRENT_STOCK_LEVEL')->textInput() ?>

    <?= $form->field($model, 'MIN_STOCK_LEVEL')->textInput() ?>

    <?= $form->field($model, 'STOCK_LOCATION')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'STOCK_TYPE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'DATE_ADDED')->textInput() ?>

    <?= $form->field($model, 'DATE_UPDATED')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
