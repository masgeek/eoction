<?php

use yii\helpers\Html;
//use yii\widgets\ActiveForm;

use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\module\users\models\Users */
/* @var $form yii\widgets\ActiveForm */


?>

    <div class="users-form">
        <?php $form = ActiveForm::begin([
            'id' => 'active-form',
            'layout' => 'default',
            //'template'=> "{label}\n<i class='fa fa-user'></i>\n{input}\n{hint}\n{error}",
            'options' => [
                //'class' => 'form-vertical',
                'enctype' => 'multipart/form-data'
            ],
        ]); ?>

        <div class="row">
            <div class="col-md-6">
                <?= $form->field($model, 'FULL_NAMES')->hint('Enter full names')->textInput(['maxlength' => true]) ?>
            </div>
            <div class="col-md-6">
                <?= $form->field($model, 'EMAIL_ADDRESS')->hint('eg email@google.com')->textInput(['maxlength' => true]) ?>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <?= $form->field($model, 'PHONE_NO')->hint('Begin with country code e.g 32898378989')->widget(\yii\widgets\MaskedInput::className(), ['mask' => '9{0,3}9{0,3}9{0,3}9{0,3}',]) ?>
            </div>
            <div class="col-md-4">
                <?= $form->field($model, 'COUNTRY')->textInput(['maxlength' => true]) ?>
            </div>
            <div class="col-md-4">
                <?= $form->field($model, 'TIMEZONE')->textInput(['maxlength' => true]) ?>
            </div>
        </div>
        <?= $form->field($model, 'CHANGE_PASS')->hint('Click to change password')->checkbox(['checked' => false]); ?>

        <div class="row toggle-field" style="display: none;">
            <?= Html::textInput('PASSWORD', $model->PASSWORD_HASH, ['id' => 'password', 'class' => 'form-control hidden', 'readonly' => true]) ?>
            <div class="col-md-6">
                <?= $form->field($model, 'PASSWORD_HASH')->textInput(['maxlength' => true]) ?>
            </div>
            <div class="col-md-6">
                <?= $form->field($model, 'REPEAT_PASSWORD')->textInput(['maxlength' => true, 'value' => $model->PASSWORD_HASH]) ?>
            </div>
        </div>
        <div class="form-group">
            <?= Html::submitButton('Update Profile', ['class' => 'btn btn-primary btn-block']) ?>
        </div>

        <?php ActiveForm::end(); ?>

    </div>

<?php
$this->registerJs("
        //set initial state.
        var isChecked = false;
       // $('#users-change_pass').val($(this).is(':checked'));
        var passwordHash = $('#users-password_hash');
        var repeatPassword = $('#users-repeat_password');
        
        $('#users-change_pass').change(function() {
             var password = $('#password').val();
            if($(this).is(':checked')) {
            //clear fields and await new users password
             password = null;
             passwordHash.val(null);
             repeatPassword.val(null);
             //$('#users-change_pass').val($(this).is(':checked'));
             $('#users-change_pass').val(1);
            }
           $('.toggle-field').toggle('slow',function(){
                passwordHash.val(password);
                repeatPassword.val(password);
           });
        });
", \yii\web\View::POS_READY)
?>