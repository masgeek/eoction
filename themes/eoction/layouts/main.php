<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\base\Controller;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use app\assets\FontAssets;
use app\assets\BowerAsset;

AppAsset::register($this);
BowerAsset::register($this);
FontAssets::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<?php require_once __DIR__ . '/includes/header.php'; ?>
<body>
<?php $this->beginBody() ?>

    <!-- navigation bar -->
    <?php require_once __DIR__ . '/includes/navigation.php'; ?>
    <!-- end navigation bar -->

<!-- container -->
<div class="container-fluid">
    <?= $content; ?>
</div> <!-- /container -->

<?php require_once __DIR__ . '/includes/footer.php'; ?>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>


<?php
$this->registerJs('
    $(".product-nav a").on("click", function(){
        $(".nav").find(".active").removeClass("active");
        $(this).parent().addClass("active");
    });');
