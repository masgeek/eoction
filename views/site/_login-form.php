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
        'template' => "<div class=\"col-md-12\">{input}</div>\n<div class=\"col-md-12\">{error}</div>",
        'labelOptions' => ['class' => 'col-lg-1 control-label'],
    ],
]); ?>
<?= $form->field($model, 'username')->textInput(['autofocus' => true, 'placeholder' => 'Email Address']) ?>

<?= $form->field($model, 'password')->passwordInput(['placeholder' => 'Password']) ?>

<!--?= $form->field($model, 'rememberMe')->checkbox([
    'template' => "<div class=\"col-md-12\">{input} {label}</div>\n<div class=\"col-lg-8\">{error}</div>",
]) ?-->
    <div class="form-group">
        <div class="col-md-8 col-md-offset-2">
            <?= Html::submitButton('Login', ['class' => 'btn btn-primary btn-block', 'name' => 'login-button']) ?>
        </div>
    </div>
<?php ActiveForm::end(); ?>