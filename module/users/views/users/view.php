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

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->USER_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->USER_ID], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            //'USER_ID',
            'FULL_NAMES',
            'EMAIL_ADDRESS:email',
            'PHONE_NO',
            'TIMEZONE',
            'COUNTRY',
            'SOCIAL_ID',
            'DATE_CREATED',
            'DATE_UPDATED',
        ],
    ]) ?>

</div>
