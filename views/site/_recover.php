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
]); ?>
    <div class="col-md-10 col-md-offset-1">
        <!--?= Html::textInput('email', null, ['class' => 'form-control input-lg', 'placeholder' => 'Email Address', 'required' => true]) ?-->
		<?= $form->field($model, 'EMAIL_ADDRESS')->textInput()->hint('Enter registered email address')->label('') ?>
    </div>

    <div class="col-md-12">
		<?= Html::submitButton('Recover Password', ['class' => 'btn btn-success btn-block btn-lg', 'name' => 'recover-button']) ?>
    </div>

<?php ActiveForm::end(); ?>