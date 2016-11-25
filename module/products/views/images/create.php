<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\module\products\models\Images */
/* @var $product_id string */

$this->title = 'Create Images';
$this->params['breadcrumbs'][] = ['label' => 'Images', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="images-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'product_id'=>$product_id
    ]) ?>

</div>
