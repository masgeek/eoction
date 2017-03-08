<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\module\products\models\ShippingService */

$this->title = 'Create Shipping Service';
$this->params['breadcrumbs'][] = ['label' => 'Shipping Services', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="shipping-service-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
