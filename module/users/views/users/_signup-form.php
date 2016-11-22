<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\module\users\models\Users */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="users-form">
    <?php //$form = ActiveForm::begin();
    $form = ActiveForm::begin([
        'id' => 'active-form',
        'options' => [
            //'class' => 'form-horizontal',
            'enctype' => 'multipart/form-data'
        ],
    ])
    ?>

    <div class="row">
        <div class="col-md-12">
            <?= $form->field($model, 'FULL_NAMES')->textInput(['maxlength' => true, 'placeholder' => 'Full Names']) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <?= $form->field($model, 'EMAIL_ADDRESS')->textInput(['maxlength' => true, 'placeholder' => 'Email address : mail@example.com']) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'PASSWORD_HASH')->passwordInput(['value' => null, 'maxlength' => true, 'placeholder' => 'Enter password']) ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'REPEAT_PASSWORD')->passwordInput(['value' => null, 'maxlength' => true, 'placeholder' => 'Confirm password']) ?>
        </div>
    </div>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Sign Up' : 'Update', ['class' => 'btn btn-primary btn-lg btn-block']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
