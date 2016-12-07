<?php

use yii\helpers\Html;
use yii\widgets\ListView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'User Addresses';
$this->params['breadcrumbs'][] = $this->title;

$listviewWidget = ListView::widget([
    'dataProvider' => $dataProvider,
    'options' => [
        'tag' => 'div',
        'class' => 'list-wrapper',
        'id' => 'address-list',
    ],
    'layout' => "{items}",
    //'layout' => "{pager}\n{items}\n{summary}",
    //'itemView' => '_product_view_old',
    'itemView' => '_address-box',
]);

?>

<div class="col-md-10 col-md-offset-1">
    <?= $listviewWidget ?>
</div>

<!--
<div class="user-address-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create User Address', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= ListView::widget([
        'dataProvider' => $dataProvider,
        'itemOptions' => ['class' => 'item'],
        'itemView' => function ($model, $key, $index, $widget) {
            return Html::a(Html::encode($model->NAME), ['view', 'id' => $model->ADDRESS_ID]);
        },
    ]) ?>
</div>
-->
