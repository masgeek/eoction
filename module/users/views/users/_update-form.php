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
        'options' => [
            'class' => 'form-vertical',
            'enctype' => 'multipart/form-data'
        ],
    ]); ?>
    <?= $form->field($model, 'FULL_NAMES')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'EMAIL_ADDRESS')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'SOCIAL_ID')->textInput() ?>

    <?= $form->field($model, 'PHONE_NO')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'COUNTRY')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'TIMEZONE')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => 'btn btn-primary btn-block']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
