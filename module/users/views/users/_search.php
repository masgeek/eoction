<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\module\users\search\UsersSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="users-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'USER_ID') ?>

    <?= $form->field($model, 'USERNAME') ?>

    <?= $form->field($model, 'PASSWORD') ?>

    <?= $form->field($model, 'PASSWORD_RESET_TOKEN') ?>

    <?= $form->field($model, 'AUTH_KEY') ?>

    <?php // echo $form->field($model, 'FULL_NAMES') ?>

    <?php // echo $form->field($model, 'EMAIL_ADDRESS') ?>

    <?php // echo $form->field($model, 'LOGIN_ID') ?>

    <?php // echo $form->field($model, 'PHONE_NO') ?>

    <?php // echo $form->field($model, 'TIMEZONE') ?>

    <?php // echo $form->field($model, 'COUNTRY') ?>

    <?php // echo $form->field($model, 'SOCIAL_ID') ?>

    <?php // echo $form->field($model, 'DATE_CREATED') ?>

    <?php // echo $form->field($model, 'DATE_UPDATED') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
