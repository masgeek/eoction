<?php

use yii\helpers\Html;
use yii\helpers\Url;
//use yii\widgets\ActiveForm;
use \kartik\form\ActiveForm;
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
        'id' => $form_id,
        'type' => ActiveForm::TYPE_VERTICAL
    ]); ?>
    <div class="row">
        <div class="col-md-4">
            <?= $form->field($model, 'CARRIER_CODE')->widget(kartik\select2\Select2::classname(), [
                'data' => $carrierList,
                'options' => ['id' => 'carrier-code', 'placeholder' => '-- Select carrier --'],
                'pluginOptions' => [
                    'allowClear' => true
                ],
            ])->hint('Choose your preferred carrier')->label(''); ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'SERVICE_DESC')->widget(DepDrop::classname(), [
                'type' => DepDrop::TYPE_SELECT2,
                'data' => [$model->SERVICE_DESC => $model->REQUESTED_SERVICE],
                'options' => ['id' => 'service-desc', 'placeholder' => '--- Select shipping type ---'],
                'select2Options' => ['pluginOptions' => ['allowClear' => true]],
                'pluginOptions' => [
                    'depends' => ['carrier-code'],
                    'url' => Url::to(['//paypal/select-service']),
                    //'params' => ['input-type-1', 'input-type-2']
                ]
            ])->hint('Choose your preferred shipping method')->label('') ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'PACKAGE_CODE')->widget(DepDrop::classname(), [
                'type' => DepDrop::TYPE_SELECT2,
                'data' => [$model->PACKAGE_CODE => $model->PACKAGE_CODE],
                'options' => ['id' => 'package_code', 'placeholder' => '--- Select service type ---'],
                'select2Options' => ['pluginOptions' => ['allowClear' => true]],
                'pluginOptions' => [
                    'depends' => ['service-desc'],
                    'url' => Url::to(['//paypal/select-package']),
                    //'params' => ['input-type-1', 'input-type-2']
                ],
                'pluginEvents' => [
                    'change' => "function(){
                var mixedService = $('#service-desc').val();
               var serviceCode = mixedService.split('|',1);
               var serviceName = mixedService.split('~');
                console.log(serviceCode+'  '+serviceName);
                $('#service_code').val(serviceCode);
                $('#requested_service').val(serviceName[1]);
                //$('#test').val(serviceName);
            }"
                ]
            ])->hint('Choose your preferred shipping service')->label('') ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <?= $form->field($model, 'CUSTOMER_NOTES')->textarea(['rows' => 6])->hint('Leave additional notes if you have any further instructions') ?>
        </div>
    </div>

    <!--?= Html::textInput('TEMP', null, ['id' => 'test','class'=>'form-control']) ?-->
    <div class="row">
        <div class="col-md-4">
            <?= $form->field($model, 'PAYPAL_TRANS_ID')->hiddenInput(['value' => $payment_id, 'readonly' => true])->label('') ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'SERVICE_CODE')->hiddenInput(['maxlength' => true, 'id' => 'service_code', 'readonly' => true])->label('') ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'REQUESTED_SERVICE')->hiddenInput(['maxlength' => true, 'id' => 'requested_service', 'readonly' => true])->label('') ?>
        </div>
    </div>


    <div class="form-group">
        <?= Html::button($model->isNewRecord ? 'Confirm Order' : 'Update Order', [
            'id' => $btn_id,
            'class' => $model->isNewRecord ? 'btn btn-success btn-block btn-lg' : 'btn btn-primary btn-block',
            //'onclick' => 'return ConfirmAction("test")'
        ]) ?>
    </div>

    <?php ActiveForm::end(); ?>
</div>

<hr/>
<?php
$this->registerJs("
   ConfirmFormSubmission($form_id,$btn_id,'$message');
", \yii\web\View::POS_READY)
?>
