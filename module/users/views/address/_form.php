<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $id string */
/* @var $model app\module\users\models\UserAddress */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-address-form">

    <?php $form = ActiveForm::begin(); ?>
    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'NAME')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'COMPANY')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'STREET1')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'STREET2')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'CITY')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'STATE')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'POSTALCODE')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'COUNTRY')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <?= $form->field($model, 'PHONE')->hint('Begin with country code e.g 32898378989')->widget(\yii\widgets\MaskedInput::className(), ['mask' => '9{0,3}9{0,3}9{0,3}9{0,3}',]) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <?= $form->field($model, 'RESIDENTIAL')->dropDownList([
                0 => 'Non Residential',
                1 => 'Residential'
            ], ['prompt' => '---Address Category---'])->hint('Indicate if the address is residential or not')->label('') ?>
        </div>

        <div class="col-md-4">
            <?= $form->field($model, 'ADDRESS_TYPE')->dropDownList([
                \app\module\users\models\UserAddress::BILLING_ADDRESS => 'Billing Address',
                \app\module\users\models\UserAddress::SHIPPING_ADDRESS => 'Shipping Address'
            ], ['prompt' => '---Address Type---'])->hint('Indicate if the address is used for shipping or billing')->label('') ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'PRIMARY_ADDRESS')->dropDownList([
                \app\module\users\models\UserAddress::PRIMARY_ADDRESS => 'Primary Address',
                \app\module\users\models\UserAddress::SECONDARY_ADDRESS => 'Secondary Address'
            ], ['prompt' => '---Primary Address---'])->hint('Indicate if its a primary address')->label('') ?>
        </div>
    </div>

    <!-- Hidden fields Section -->
    <?= $form->field($model, 'USER_ID')->textInput(['value' => $id,'readonly'=>true])->label('') ?>
    <!-- /End of hidden fields -->
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create New Address' : 'Update Address', ['class' => $model->isNewRecord ? 'btn btn-success btn-block noradius' : 'btn btn-primary noradius btn-block']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
