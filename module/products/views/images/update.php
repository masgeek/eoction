<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\module\products\models\Images */

$this->title = 'Update Images: ' . $model->IMAGE_ID;
$this->params['breadcrumbs'][] = ['label' => 'Images', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->IMAGE_ID, 'url' => ['view', 'id' => $model->IMAGE_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="images-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
