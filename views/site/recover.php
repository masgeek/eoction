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
	'id' => 'recover-form',
	'options' => ['class' => 'form-horizontal'],
	'fieldConfig' => [
		'template' => "<div class=\"col-md-12\">{input}</div>\n<div class=\"col-md-12\">{error}</div>",
		'labelOptions' => ['class' => 'col-lg-1 control-label'],
	],
]); ?>
    <!--= $form->field($model, 'username')->textInput(['autofocus' => true, 'placeholder' => 'Email Address']) ?-->
<?= Html::textInput('username', null, ['class' => 'form-control', 'placeholder' => 'Email Address/ Username', 'required' => true]) ?>
    <div class="form-group">
        <div class="col-md-8 col-md-offset-2">
			<?= Html::submitButton('Recover Password', ['class' => 'btn btn-success btn-block btn-lg', 'name' => 'recover-button']) ?>
        </div>
    </div>
<?php ActiveForm::end(); ?>