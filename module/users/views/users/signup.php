<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\module\users\models\Users */

$this->title = 'Create Account';
//$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="users-create col-md-8 col-md-offset-2">
    <?= $this->render('_signup-form', [
        'model' => $model,
    ]) ?>

</div>
