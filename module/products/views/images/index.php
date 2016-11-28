<?php

use yii\helpers\Html;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $searchModel app\module\products\ImagesSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Images';
$this->params['breadcrumbs'][] = $this->title;

$gridColumns = [
    ['class' => 'yii\grid\SerialColumn'],

    //'IMAGE_ID',
    'PRODUCT_ID',
    'pRODUCT.PRODUCT_NAME',
    //'IMAGE_URL:url',
    [                      // the owner name of the model
        'label' => 'Product Image',
        //'format' => 'image',
        'vAlign' => 'middle',
        'format' => ['image', ['height' => '175', 'alt' => 'Product Image', 'class' => 'thumbnail']],
        'value' => function ($data) {
            $url = "@web{$data->IMAGE_URL}";
            return $url;
        }
    ],

    [
        //'class' => 'yii\grid\ActionColumn',
        'class' => '\kartik\grid\ActionColumn',
        'dropdown' => true,
        'vAlign' => 'middle',
    ],
];
?>
<div class="panel panel-default">
    <div class="panel-heading"><?= Html::encode($this->title) ?></div>
    <div class="panel-body">
        <hr/>
        <div class="products-index row">
            <?php Pjax::begin(); ?>
            <?= \kartik\grid\GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'layout' => '{summary}{pager}{items}{pager}',
                'export' => false,
                'pjax' => true,
                'summary' => '',
                'responsive' => true,
                'hover' => true,
                'columns' => $gridColumns,
                'resizableColumns' => true,
            ]); ?>
            <?php Pjax::end(); ?>
        </div>
    </div>
</div>