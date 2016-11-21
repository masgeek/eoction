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


    <?= $form->field($model, 'FULL_NAMES') ?>

    <?= $form->field($model, 'EMAIL_ADDRESS') ?>


    <?= $form->field($model, 'PHONE_NO') ?>

    <?= $form->field($model, 'COUNTRY') ?>

    <?= $form->field($model, 'DATE_CREATED') ?>

    <?= $form->field($model, 'DATE_UPDATED') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
