<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\module\users\models\UserAddress */

$this->title = $model->NAME;
$this->params['breadcrumbs'][] = ['label' => 'User Addresses', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-address-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->ADDRESS_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->ADDRESS_ID], [
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
            'ADDRESS_ID',
            'USER_ID',
            'NAME',
            'COMPANY',
            'STREET1',
            'STREET2',
            'STREET3',
            'CITY',
            'STATE',
            'POSTALCODE',
            'COUNTRY',
            'PHONE',
            'RESIDENTIAL',
            'ADDRESS_TYPE',
            'PRIMARY_ADDRESS',
            'CREATED',
            'UPDATED',
        ],
    ]) ?>

</div>
