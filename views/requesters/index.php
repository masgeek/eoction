<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\search_model\ReuestersSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Bid Requesters';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bid-requesters-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Bid Requesters', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'REQUESTER_ID',
            'REQUESTED_ID',
            'REQUESTING_USER_ID',
            'CUSTOMER_NOTES:ntext',
            'CUSTOMER_NOTIFIED',
            // 'REQUEST_ACCEPTED',
            // 'CREATED',
            // 'UPDATED',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
