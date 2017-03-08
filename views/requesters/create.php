<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\BidRequesters */

$this->title = 'Create Bid Requesters';
$this->params['breadcrumbs'][] = ['label' => 'Bid Requesters', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bid-requesters-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
