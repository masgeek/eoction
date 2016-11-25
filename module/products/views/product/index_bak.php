<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\module\products\ProductsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Product Management';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="products-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Add New Product', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
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
                        $url  = \yii\helpers\Url::toRoute(['//images/add-images', 'id' => $model->PRODUCT_ID]);
                        return $url;
                    }
                }
            ]
        ],
    ]); ?>
</div>
