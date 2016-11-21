<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\module\users\models\Users */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="col-md-8 col-md-offset-2">
    <div class="users-form">

        <?php //$form = ActiveForm::begin();
        $form = ActiveForm::begin([
            'id' => 'active-form',
            'options' => [
                'class' => 'form-horizontal',
                'enctype' => 'multipart/form-data'
            ],
        ])
        ?>
        <!--<?= $form->field($model, 'USERNAME')->textInput(['maxlength' => true]) ?>-->

        <div class="row">
            <?= $form->field($model, 'FULL_NAMES')->textInput(['maxlength' => true, 'placeholder' => 'Name']) ?>
        </div>
        <div class="row">
            <?= $form->field($model, 'EMAIL_ADDRESS')->textInput(['maxlength' => true, 'placeholder' => 'Email']) ?>
        </div>

        <div class="row">
            <div class="col-md-6">
                <?= $form->field($model, 'LOGIN_ID')->passwordInput(['maxlength' => true]) ?>
            </div>
            <div class="col-md-6">
                <?= $form->field($model, 'REPEAT_PASSWORD')->passwordInput(['maxlength' => true]) ?>
            </div>
        </div>

        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Sign Up' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success btn-block' : 'btn btn-primary']) ?>
        </div>

        <?php ActiveForm::end(); ?>

    </div>
</div>
