<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\module\products\models\Images */

$this->title = $model->IMAGE_ID;
$this->params['breadcrumbs'][] = ['label' => 'Images', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="images-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->IMAGE_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->IMAGE_ID], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        //'template' => "<tr><th>{label}</th><td>{value}</td></tr>",
        'attributes' => [
            'IMAGE_ID',
            'PRODUCT_ID',
            [                      // the owner name of the model
                'label' => 'Product Image',
                //'format' => 'image',
                'format' => ['image', ['height' => '100', 'alt' => $model->pRODUCT->PRODUCT_NAME]],
                'value' => "@web{$model->IMAGE_URL}"
            ]
        ],
    ]) ?>

</div>
