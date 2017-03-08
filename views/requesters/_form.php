<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\BidRequesters */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="bid-requesters-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'REQUESTED_ID')->textInput() ?>

    <?= $form->field($model, 'REQUESTING_USER_ID')->textInput() ?>

    <?= $form->field($model, 'CUSTOMER_NOTES')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'CUSTOMER_NOTIFIED')->textInput() ?>

    <?= $form->field($model, 'REQUEST_ACCEPTED')->textInput() ?>

    <?= $form->field($model, 'CREATED')->textInput() ?>

    <?= $form->field($model, 'UPDATED')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
