<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\module\users\models\Users */

$this->title = 'Update Profile';
//$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
//$this->params['breadcrumbs'][] = ['label' => 'Account', 'url' => ['my-profile', 'id' => $model->USER_ID]];
$this->params['breadcrumbs'][] = 'My Profile';
?>
<div class="users-update row">
    <div class="col-md-4">
        <div class="list-group">
            <a href="#" class="list-group-item">Account Info</a>
            <a href="#" class="list-group-item">Reminders</a>
            <a href="#" class="list-group-item">Inbox</a>
            <a href="#" class="list-group-item">Wallet</a>
            <a href="#" class="list-group-item">Sign Out</a>
            <a href="#" class="list-group-item">Wallet</a>
        </div>
    </div>
    <div class="col-md-5">
        <?= $this->render('_update-form', [
            'model' => $model,
        ]) ?>
    </div>
</div>
