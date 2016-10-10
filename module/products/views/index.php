<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\module\products\search\ProductSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Products');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="products-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Create Products'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>
<?php Pjax::begin(); ?>    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'PRODUCT_ID',
            'UID',
            'SKU',
            'PRODUCT_NAME',
            'CATEGORIES',
            // 'BRAND_NAME',
            // 'PRICE',
            // 'RETAIL_PRICE',
            // 'ALLOW_PURCHASES',
            // 'VISIBLE',
            // 'AVAILABLE',
            // 'TRACK_INVENTORY',
            // 'CURRENT_STOCK_LEVEL',
            // 'MIN_STOCK_LEVEL',
            // 'STOCK_LOCATION',
            // 'STOCK_TYPE',
            // 'DATE_ADDED',
            // 'DATE_UPDATED',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
<?php Pjax::end(); ?></div>
