<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\module\products\models\ShippingService */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="shipping-service-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'PAYPAL_TRANS_ID')->textInput() ?>

    <?= $form->field($model, 'REQUESTED_SERVICE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'SERVICE_DESC')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'CARRIER_CODE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'SERVICE_CODE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PACKAGE_CODE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'CREATED')->textInput() ?>

    <?= $form->field($model, 'UPDATED')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
