<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/07
 * Time: 16:00
 */

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use yii\base\Controller;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?= Yii::$app->language ?>">
    <?php require_once __DIR__ . '/includes/header.php'; ?>
    <body>
    <?php $this->beginBody() ?>

    <div class="wrap">
        <!-- navigation bar -->
        <?php require_once __DIR__ . '/includes/navigation.php'; ?>
        <!-- end navigation bar -->
        <!-- container -->
        <div class="container">
            <?= $content; ?>
        </div> <!-- /container -->
    </div>
    <?php require_once __DIR__ . '/includes/footer.php'; ?>
    <?php $this->endBody() ?>
    </body>
    </html>
<?php $this->endPage() ?>