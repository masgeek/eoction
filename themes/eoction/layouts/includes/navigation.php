<?php
use yii\helpers\Html;

use app\components\CartManager;

$userid = yii::$app->user->id ? yii::$app->user->id : 1;
?>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="./">
            <?php
            $imgLink = '@web/images/logo.png';
            echo Html::img($imgLink, ['class' => 'img img-responsive', 'width' => 210, 'alt' => Yii::$app->name, 'title' => Yii::$app->name]);
            //echo Html::a(Yii::$app->name,['//site/index'],['class'=>'navbar-brand']); ?>
        </a>

    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav product-nav">
            <li class="active"><?= Html::a('Live Auctions', ['//site/index'], ['title' => 'live auctions']); ?></li>
            <li><?= Html::a('Live TV', ['#'], ['title' => 'live TV']); ?></li>
            <li><?= Html::a('Online Shopping', ['//shop/'], ['title' => 'Online Shopping']); ?></li>
        </ul>
        <ul class="nav navbar-nav navbar-right" style="margin-right: 10px;">
            <?php if (Yii::$app->user->isGuest): ?>
                <li><?= Html::a('Sign In', ['//site/login'], ['title' => 'Sign in to place bids', 'class' => 'text-capitalise']); ?></li>
                <li><?= Html::a('Sign Up Now It\'s Free', ['//site/login'], ['title' => 'Sign in to place bids', 'class' => 'text-capitalise']); ?></li>
            <?php else: ?>
                <li><?= Html::a('<span class="fa fa-user"></span> My Account', ['//users/user/index'], ['class' => 'text-capitalise']); ?></li>
                <li><?= Html::a('<span class="fa fa-heart"></span> My Wishlist', ['//shop/wishlist'], ['title' => 'Items in your wish-list', 'class' => 'text-capitalise']); ?></li>
                <li>
                    <a href="#">
                        <span class="glyphicon glyphicon-shopping-cart"></span> Cart<small id="cart-item"><?= CartManager::GetCartItems($userid) ?> Items</small>
                    </a>
                </li>
            <?php endif; ?>
        </ul>
        <form class="nav navbar-form navbar-left" role="search">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search" name="search-term">
            </div>
            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>
            </button>
        </form>
    </div>
</nav>