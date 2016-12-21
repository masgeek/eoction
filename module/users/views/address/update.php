<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\module\users\models\UserAddress */

$this->title = 'Update User Address: ' . $model->NAME;
$this->params['breadcrumbs'][] = ['label' => 'User Addresses', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->NAME, 'url' => ['view', 'id' => $model->ADDRESS_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="user-address-update col-md-8 col-md-offset-2">
    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'id' => $id
    ]) ?>

</div>
