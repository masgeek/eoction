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
    <div class="row">
        <div class="col-md-12">
			<?= Html::textInput('username', null, ['class' => 'form-control input-lg', 'placeholder' => 'Email Address/ Username', 'required' => true]) ?>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-12">
			<?= Html::submitButton('Recover Password', ['class' => 'btn btn-success btn-block btn-lg', 'name' => 'recover-button']) ?>
        </div>
    </div>
<?php ActiveForm::end(); ?>