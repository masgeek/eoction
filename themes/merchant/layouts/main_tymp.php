<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\base\Controller;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assetmanager\AppAsset;
use app\assetmanager\FontAssets;
use app\assetmanager\BowerAsset;

//AppAsset::register($this);
//BowerAsset::register($this);
//FontAssets::register($this);
?>
<?php $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?= Yii::$app->language ?>">
    <body>
    <?php $this->beginBody() ?>
    <!-- container -->
    <div class="container-fluid">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= $content; ?>
    </div> <!-- /container -->
    <?php $this->endBody() ?>
    </body>
    </html>
<?php $this->endPage() ?>