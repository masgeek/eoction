<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\module\users\models\Users */

$this->title = 'Profile Summary';
$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="users-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="row">
        <div class="col-md-4">
            <?= Html::a('<span class="fa fa-map-marker"></span> Manage Addresses', ['//my-addresses', 'user_id' => yii::$app->user->id], ['class' => 'btn btn-info btn-block']); ?>
        </div>
        <div class="col-md-4"><hr/></div>
        <div class="col-md-4">
            <?= Html::a('Update', ['my-profile', 'id' => $model->USER_ID], ['class' => 'btn btn-primary btn-block']) ?>
        </div>
    </div>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            //'USER_ID',
            'FULL_NAMES',
            'EMAIL_ADDRESS:email',
            'PHONE_NO',
            //'TIMEZONE',
            'COUNTRY',
            //'SOCIAL_ID',
            'DATE_CREATED',
            'DATE_UPDATED',
        ],
    ]) ?>

</div>
