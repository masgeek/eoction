<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\module\users\models\Users */

$this->title = 'Update User: ' . $model->USER_ID;
$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->USER_ID, 'url' => ['view', 'id' => $model->USER_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="users-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_update-form', [
        'model' => $model,
    ]) ?>

</div>
