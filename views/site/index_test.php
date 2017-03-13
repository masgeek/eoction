<?php
use \yii\helpers\Html;
use \yii\widgets\Pjax;
?>


<?php \yii\widgets\Pjax::begin(); ?>
<?= \yii\helpers\Html::a("Refresh", ['site/index2','id'=>1], ['class' => 'btn btn-lg btn-primary']) ?>
    <h1>Current time: <?= $time ?></h1>
<?php \yii\widgets\Pjax::end(); ?>

<div class="col-sm-12 col-md-6">
    <?php Pjax::begin(); ?>
    <?= Html::a("Generate Random String", ['site/index2'], ['class' => 'btn btn-lg btn-primary']) ?>
    <h3><?= $randomString ?></h3>
    <?php Pjax::end(); ?>
</div>
<div class="col-sm-12 col-md-6">
    <?php Pjax::begin(); ?>
    <?= Html::a("Generate Random Key", ['site/index2'], ['class' => 'btn btn-lg btn-primary']) ?>
    <h3><?= $randomKey ?><h3>
            <?php Pjax::end(); ?>
</div>
