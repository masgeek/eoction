<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
use \kartik\depdrop\DepDrop;

/* @var $this yii\web\View */
/* @var $model app\module\products\models\ShippingService */
/* @var $payment_id string */
/* @var $form yii\widgets\ActiveForm */
$shippingStation = new \app\components\ShipStationHandler();

$carrierList = $shippingStation->ListAllCarriers($as_array = true);

$this->registerJsFile('@web/js/shopping/cart-manager.js');
$form_id = 'order_form';
$btn_id = 'btn_order';
$message = 'Proceed with order creation? Your PayPal account will be billed';
?>

<div class="shipping-service-form">

    <?php $form = ActiveForm::begin([
        'id' => $form_id
    ]); ?>

    <?= $form->field($model, 'PAYPAL_TRANS_ID')->textInput(['value' => $payment_id, 'readonly' => true]) ?>

    <?= $form->field($model, 'CARRIER_CODE')->dropDownList($carrierList, ['id' => 'carrier-code', 'prompt' => '-- Select carrier --']) ?>

    <?= $form->field($model, 'SERVICE_DESC')->widget(DepDrop::classname(), [
        'type' => DepDrop::TYPE_SELECT2,
        //'data' => [2 => 'Tablets'],
        'options' => ['id' => 'service-desc', 'placeholder' => 'Select ...'],
        'select2Options' => ['pluginOptions' => ['allowClear' => true]],
        'pluginOptions' => [
            'depends' => ['carrier-code'],
            'url' => Url::to(['//paypal/select-service']),
            //'params' => ['input-type-1', 'input-type-2']
        ]
    ]) ?>

    <?= $form->field($model, 'SERVICE_CODE')->widget(DepDrop::classname(), [
        'type' => DepDrop::TYPE_SELECT2,
        //'data' => [2 => 'Tablets'],
        'options' => ['id' => 'service-code', 'placeholder' => '--- Select service type ---'],
        'select2Options' => ['pluginOptions' => ['allowClear' => true]],
        'pluginOptions' => [
            'depends' => ['service-desc'],
            'url' => Url::to(['//paypal/select-package']),
            //'params' => ['input-type-1', 'input-type-2']
        ],
        'pluginEvents' => [
            'change' => "function(){
                var mixedService = $('#service-desc').val();
               var packageCode = mixedService.split('|',1);
               var serviceName = mixedService.split('~');
                console.log(packageCode+'  '+serviceName);
                $('#package-code').val(packageCode);
                $('#requested-service').val(serviceName[1]);
            }"
        ]
    ]) ?>

    <?= $form->field($model, 'PACKAGE_CODE')->textInput(['maxlength' => true, 'id' => 'package-code', 'readonly' => true]) ?>

    <?= $form->field($model, 'REQUESTED_SERVICE')->textInput(['maxlength' => true, 'id' => 'requested-service', 'readonly' => true]) ?>


    <div class="form-group">
        <?= Html::button($model->isNewRecord ? 'Confirm Order' : 'Update Order', [
            'id' => $btn_id,
            'class' => $model->isNewRecord ? 'btn btn-success btn-block btn-lg' : 'btn btn-primary btn-block',
            //'onclick' => 'return ConfirmAction("test")'
        ]) ?>
    </div>

    <?php ActiveForm::end(); ?>
</div>

<?php
$this->registerJs("
   ConfirmFormSubmission($form_id,$btn_id,'$message');
", \yii\web\View::POS_READY)
?>
