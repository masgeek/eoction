<?php

use yii\helpers\Html;
use yii\widgets\ListView;

/* @var $this yii\web\View */
/* @var $user_id string */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Manage Address';
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

<div class="col-md-8 col-md-offset-2">
    <div class="panel panel-primary">
        <div class="panel-heading">Your Addresses</div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <?= $dataProvider->count > 0 ? $listviewWidget : 'You have no addresses on file.' ?>
                </div>
            </div>
        </div>
    </div>
    <?= Html::a('<i class="fa fa-plus-circle"></i> Add Mailing Address', ['add', 'user_id' => $user_id], ['class' => 'btn btn-primary btn-block btn-lg noradius']) ?>
</div>
<hr/>

