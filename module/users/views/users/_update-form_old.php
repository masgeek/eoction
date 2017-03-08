<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\module\users\models\Users */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="users-form">

    <?php $form = ActiveForm::begin([
        'id' => 'active-form',
        //'template' => "{label}\n{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
        //'template'=> "{label}\n<i class='fa fa-user'></i>\n{input}\n{hint}\n{error}",
        'options' => [
            'class' => 'form-vertical',
            'enctype' => 'multipart/form-data'
        ],
    ]); ?>
    <?= $form->field($model, 'FULL_NAMES')->hint('Enter full names')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'EMAIL_ADDRESS')->hint('eg email@google.com')->textInput(['maxlength' => true, ['hint' => 4564654]]) ?>

    <?= $form->field($model, 'PHONE_NO')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'COUNTRY')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'TIMEZONE')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'PASSWORD_HASH')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'REPEAT_PASSWORD')->textInput(['maxlength' => true, 'value' => $model->PASSWORD_HASH]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => 'btn btn-primary btn-block']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
