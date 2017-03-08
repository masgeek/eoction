<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\module\products\models\ShippingService */
/* @var $payment_id string */

$this->title = 'Confirm Order';
//$this->params['breadcrumbs'][] = ['label' => 'Shipping Services', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="shipping-service-confirm-order row">
    <div class="col-md-8 col-md-offset-2">
        <h2>We are ready to confirm your order</h2>
        <?= $this->render('_form', [
            'model' => $model,
            'payment_id' => $payment_id
        ]) ?>
    </div>
</div>
