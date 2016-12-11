<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\module\products\models\ShippingService */
/* @var $payment_id string */

$this->title = 'Confirm Order';
//$this->params['breadcrumbs'][] = ['label' => 'Shipping Services', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="shipping-service-confirm-order">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'payment_id' => $payment_id
    ]) ?>

</div>
