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



    <?= $form->field($model, 'FULL_NAMES')->hint('Enter full names')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'EMAIL_ADDRESS')->hint('eg email@google.com')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PHONE_NO')->hint('Begin with country code e.g 32898378989')->widget(\yii\widgets\MaskedInput::className(), ['mask' => '9{0,3}9{0,3}9{0,3}9{0,3}',]) ?>

    <?= $form->field($model, 'COUNTRY')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'TIMEZONE')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'CHANGE_PASS')->hint('Click to change password')->checkbox(); ?>
    <?= Html::textInput('PASSWORD', $model->PASSWORD_HASH, ['id' => 'password', 'class' => 'form-control']) ?>
    <?= $form->field($model, 'PASSWORD_HASH')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'REPEAT_PASSWORD')->textInput(['maxlength' => true, 'value' => $model->PASSWORD_HASH]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => 'btn btn-primary btn-block']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

<?php
$this->registerJs("
        //set initial state.
        var isChecked = false;
        $('#users-change_pass').val($(this).is(':checked'));
        

        var passwordHash = $('#users-password_hash');
        var repeatPassword = $('#users-repeat_password');
        
        $('#users-change_pass').val($(this).is(':checked'));

        $('#users-change_pass').change(function() {
                var password = $('#password').val();
            if($(this).is(\":checked\")) {
               passwordHash.val(password);
            }else{
               passwordHash.val(password);
            }
        });
", \yii\web\View::POS_READY)
?>

<script>

</script>
