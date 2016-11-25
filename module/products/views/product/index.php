<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\module\products\ProductsSearch */
/* @var $model app\module\products\models\Products */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Product Management';
$this->params['breadcrumbs'][] = $this->title;

$gridColumns = [
    ['class' => 'yii\grid\SerialColumn'],

    //'ID',
    //'REGISTRATION_NUMBER',
    /*[
        'header' => 'Student Info',
        'attribute' => 'PRODUCT_ID',
        'width' => '100%',
        'value' => function ($model, $key, $index, $widget) {
            if ($model->rEGISTRATIONNUMBER != null) {
                $reg = $model->rEGISTRATIONNUMBER->REGISTRATION_NUMBER;

                $names = $model->rEGISTRATIONNUMBER->SURNAME;
                $names .= ' ';
                $names .= $model->rEGISTRATIONNUMBER->OTHER_NAMES;
                $student = "$reg - $names";
            } else {
                $student = 'N/A';
            }
            return $student;
        },
        'filterType' => GridView::FILTER_SELECT2,
        'filter' => \yii\helpers\ArrayHelper::map(\app\models\BPSLECTURERS::find()->orderBy('SUPCATCODE')->asArray()->all(), 'ID', 'SURNAME'),
        'filterWidgetOptions' => [
            'pluginOptions' => ['allowClear' => true],
        ],
        'filterInputOptions' => ['placeholder' => 'Any supplier'],
        'group' => true,  // enable grouping,
        'groupedRow' => true,                    // move grouped column to a single grouped row
        'groupOddCssClass' => 'kv-grouped-row',  // configure odd group cell css class
        'groupEvenCssClass' => 'kv-grouped-row', // configure even group cell css class
    ],*/
    'SKU',
    [
        'attribute' => 'PRODUCT_DESCRIPTION',
        //'width' => '10%',
        'filter'=>false
    ],
//'PRODUCT_ID',
    //'UID',
    'SKU',
    'PRODUCT_NAME',
    'CATEGORIES',
    'BRAND_NAME',
    [
        'attribute' => 'PRICE',
        'filter' => false
    ],
    [
        'attribute' => 'RETAIL_PRICE',
        'filter' => false
    ],
    [
        'class' => 'kartik\grid\BooleanColumn',
        'attribute' => 'ALLOW_PURCHASES',
        'vAlign' => 'middle',
    ],
    [
        'class' => 'kartik\grid\BooleanColumn',
        'attribute' => 'AVAILABLE',
        'vAlign' => 'middle',
    ],
    //'VISIBLE',
    //'TRACK_INVENTORY',
    'CURRENT_STOCK_LEVEL',
    //'MIN_STOCK_LEVEL',
    //'STOCK_LOCATION',
    //'STOCK_TYPE',
    //'DATE_ADDED',
    [
        'attribute' => 'DATE_UPDATED',
        'filter' => false
    ],
    // ['class' => 'yii\grid\ActionColumn'],
    // Action column
    [
        'class' => '\kartik\grid\ActionColumn',
        'width' => '10%',
        'dropdown' => false,
        'vAlign' => 'middle',
        'template' => '{image}',
        'buttons' => [
            'image' => function ($url, $model, $key) {
                return Html::a('Add Image <i class="glyphicon glyphicon-camera"></i>', $url);
            },
        ],
        'urlCreator' => function ($action, $model, $key, $index) {
            if ($action === 'image') {
                $url = \yii\helpers\Url::toRoute(['//product/images/add-image', 'product_id' => $model->PRODUCT_ID]);
                return $url;
            }
        },
    ],
    [
        'class' => '\kartik\grid\ActionColumn',
        'dropdown' => true,
        'vAlign' => 'middle',
        'template' => '{update}{view}{delete}',
        'deleteOptions' => ['label' => '<i class="glyphicon glyphicon-remove"></i>Remove'],
        'visible'=>true
    ]
];
?>

<div class="panel panel-default">
    <div class="panel-heading"><?= Html::encode($this->title) ?></div>
    <div class="panel-body">
        <div class="row">
            <?= Html::a('Add New Product', ['create'], ['class' => 'btn btn-success']) ?>
        </div>
        <hr/>
        <div class="products-index row">
            <?= GridView::widget([
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
        </div>
    </div>
</div>

<!--
<div class="products-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>

    </p>
    GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'layout' => '{summary}{pager}{items}{pager}',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'PRODUCT_ID',
            //'UID',
            'SKU',
            'PRODUCT_NAME',
            'CATEGORIES',
            'BRAND_NAME',
            'PRICE',
            'RETAIL_PRICE',
            'ALLOW_PURCHASES',
            //'VISIBLE',
            'AVAILABLE',
            //'TRACK_INVENTORY',
            'CURRENT_STOCK_LEVEL',
            'MIN_STOCK_LEVEL',
            'STOCK_LOCATION',
            //'STOCK_TYPE',
            //'DATE_ADDED',
            'DATE_UPDATED',

            //['class' => 'yii\grid\ActionColumn'],
            ['class' => 'yii\grid\ActionColumn',
                'template' => '{view}{delete}{update}{image}',
                'buttons' => [
                    'info' => function ($url, $model) {
                        return Html::a('<span class="glyphicon glyphicon-info-sign"></span>', $url, [
                            'title' => Yii::t('app', 'Add Product Images'),
                        ]);
                    }
                ],
                'urlCreator' => function ($action, $model, $key, $index) {
                    if ($action === 'image') {
                        $url = \yii\helpers\Url::toRoute(['//images/add-images', 'id' => $model->PRODUCT_ID]);
                        return $url;
                    }
                }
            ]
        ],
    ]);
</div>
-->