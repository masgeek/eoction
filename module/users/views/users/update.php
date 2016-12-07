<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\module\users\models\Users */

$this->title = 'Account Info | ' . Yii::$app->name;
//$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
//$this->params['breadcrumbs'][] = ['label' => 'Account', 'url' => ['my-profile', 'id' => $model->USER_ID]];
$this->params['breadcrumbs'][] = 'Account Info';
?>
<div class="users-update row">
    <div class="col-md-3">
        <div class="list-group">
            <a href="#" class="list-group-item">Account Info</a>
            <a href="#" class="list-group-item">Reminders</a>
            <a href="#" class="list-group-item">Inbox</a>
            <a href="#" class="list-group-item">Wallet</a>
            <a href="#" class="list-group-item">Sign Out</a>
            <a href="#" class="list-group-item">Wallet</a>
        </div>
    </div>
    <div class="col-md-5 col-md-offset-2">
        <?= $this->render('_update-form', [
            'model' => $model,
        ]) ?>
        <hr/>
        <div class="list-group">
            <?= Html::a('<span class="fa fa-map-marker"></span> Manage Addresses', ['//mailing-addresses', 'id' => yii::$app->user->id], ['class' => 'list-group-item']); ?>
            <a href="#" class="list-group-item"><span class="fa fa-remove"></span> Cancel Account</a>
        </div>
    </div>
</div>