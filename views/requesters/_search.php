<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\search_model\ReuestersSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="bid-requesters-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'REQUESTER_ID') ?>

    <?= $form->field($model, 'REQUESTED_ID') ?>

    <?= $form->field($model, 'REQUESTING_USER_ID') ?>

    <?= $form->field($model, 'CUSTOMER_NOTES') ?>

    <?= $form->field($model, 'CUSTOMER_NOTIFIED') ?>

    <?php // echo $form->field($model, 'REQUEST_ACCEPTED') ?>

    <?php // echo $form->field($model, 'CREATED') ?>

    <?php // echo $form->field($model, 'UPDATED') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
