<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\module\users\models\Users */

$this->title = 'Create Account';
//$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
//$this->params['breadcrumbs'][] = $this->title;

?>

<div class="alert alert-danger alert-dismissable">
    <button aria-hidden="true" data-dismiss="alert" class="close" type="button">x</button>
    <?= Yii::$app->session->getFlash('error') ?>
</div>

<div class="users-create col-md-8 col-md-offset-2">
    <?= $this->render('_signup-form', [
        'model' => $model,
    ]) ?>

</div>
