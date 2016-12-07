<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\module\users\models\UserAddress */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-address-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'USER_ID')->textInput() ?>

    <?= $form->field($model, 'NAME')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'COMPANY')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'STREET1')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'STREET2')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'STREET3')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'CITY')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'STATE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'POSTALCODE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'COUNTRY')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PHONE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'RESIDENTIAL')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ADDRESS_TYPE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PRIMARY_ADDRESS')->textInput() ?>

    <?= $form->field($model, 'CREATED')->textInput() ?>

    <?= $form->field($model, 'UPDATED')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create New Address' : 'Update Address', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
