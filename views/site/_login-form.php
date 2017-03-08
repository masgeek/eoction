<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 11/22/2016
 * Time: 2:04 PM
 */

/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

?>


<?php $form = ActiveForm::begin([
	'id' => 'login-form',
	'options' => ['class' => 'form-horizontal'],
	'fieldConfig' => [
		//'template' => "<div class=\"col-md-12\">{input}</div>\n<div class=\"col-md-12\">{error}</div>",
		//'labelOptions' => ['class' => 'col-lg-1 control-label'],
	],
]); ?>

    <div class="col-md-12">
		<?= $form->field($model, 'username')->textInput(['autofocus' => true, 'placeholder' => 'Email Address'])->label('') ?>
    </div>

    <div class="col-md-12">
		<?= $form->field($model, 'password')->passwordInput(['placeholder' => 'Password'])->label('') ?>
    </div>
    <!--= $form->field($model, 'rememberMe')->checkbox([
		'checked' => false, 'value' => 0,
		'template' => "<div class=\"col-md-12\">{input} {label}</div>\n<div class=\"col-lg-8\">{error}</div>",
	]) ?-->
    <div class="col-md-12">
		<?= Html::submitButton('Login', ['class' => 'btn btn-bid btn-bid-active btn-block btn-lg', 'name' => 'login-button']) ?>
    </div>

    <div class="col-md-12">
		<?= Html::a('Forgot password?', ['//site/recover'], ['class' => 'pull-right',]) ?>
    </div>
<?php ActiveForm::end(); ?>