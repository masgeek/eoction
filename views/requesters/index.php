<?php

use yii\helpers\Html;
//use yii\grid\GridView;
use kartik\grid\GridView;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $searchModel app\search_model\ReuestersSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Bid Requests';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bid-requesters-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'responsive' => true,
        'hover' => true,
        'floatHeader' => true,
        // 'floatHeaderOptions'=>['scrollingTop'=>'50'],
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'REQUESTER_ID',
            //'REQUESTED_ID',
            [
                'attribute' => 'REQUESTED_ID',
                'filter' => false,
                'value' => function ($model, $key, $index, $widget) {
                    /* @var $model app\models\BidRequesters */
                    $FULL_NAMES = $model->rEQUESTED->rEQUESTEDPRODUCT->name;
                    return $FULL_NAMES;
                },
            ],
            //'REQUESTING_USER_ID',
            [
                'attribute' => 'REQUESTING_USER_ID',
                'filter' => false,
                'value' => function ($model, $key, $index, $widget) {
                    /* @var $model app\models\BidRequesters */
                    if ($model->rEQUESTINGUSER != null) {
                        $FULL_NAMES = $model->rEQUESTINGUSER->FULL_NAMES;
                    } else {
                        $FULL_NAMES = 'N/A';
                    }
                    return $FULL_NAMES;
                },
            ],
            [
                'attribute' => 'CUSTOMER_NOTES',
                'filter' => false
            ],
            //'CUSTOMER_NOTIFIED',
            ['attribute' => 'CREATED',
                'filter' => false
            ],
            [
                'attribute' => 'UPDATED',
                'filter' => false
            ],
            [
                'attribute' => 'REQUEST_ACCEPTED',
                'filter' => [0 => 'Not Processed', 2 => 'Not Accepted', 1 => 'Accepted']
            ],
            //['class' => 'yii\grid\ActionColumn'],
            //Action Column
            [
                'class' => '\kartik\grid\ActionColumn',
                'header' => 'Approve',
                'template' => '{update}',
                'urlCreator' => function ($action, $model, $key, $index) {
                    /* @var $model app\models\BidRequesters */
                    $url = '#';
                    if ($action === 'update') {
                        $url = \yii\helpers\Url::toRoute(['//requesters/accept', 'id' => $model->REQUESTER_ID]);
                    }
                    return $url;
                },

                'updateOptions' => ['label' => '<i class="glyphicon glyphicon-thumbs-up"></i>']
            ],
            [
                'class' => '\kartik\grid\ActionColumn',
                'header' => 'Reject',
                'template' => '{delete}',
                'buttons' => [
                    'view' => function ($url, $model, $key) {
                        return $url;
                    },
                    'label' => 'Reject Request',
                ],
                'urlCreator' => function ($action, $model, $key, $index) {
                    /* @var $model app\models\BidRequesters */
                    $url = '#';
                    if ($action === 'delete') {
                        $url = \yii\helpers\Url::toRoute(['//requesters/decline', 'id' => $model->REQUESTER_ID]);
                    }
                    return $url;
                },
                'deleteOptions' => ['label' => '<i class="glyphicon glyphicon-ban-circle"></i>'],
            ]
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
