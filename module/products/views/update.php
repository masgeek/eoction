<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\module\products\models\Products */

$this->title = Yii::t('app', 'Update {modelClass}: ', [
    'modelClass' => 'Products',
]) . $model->PRODUCT_ID;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Products'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->PRODUCT_ID, 'url' => ['view', 'id' => $model->PRODUCT_ID]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="products-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
