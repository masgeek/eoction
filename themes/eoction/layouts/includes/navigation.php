<?php
use yii\helpers\Html;

use app\components\CartManager;

$home = \yii\helpers\Url::toRoute(['//site']);

$cartUrl = \yii\helpers\Url::toRoute(['shop/cart-items']);
?>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="<?= $home ?>">
            <?php
            $imgLink = '@web/images/logo.png';
            echo Html::img($imgLink, ['class' => 'img img-responsive', 'width' => 210, 'alt' => Yii::$app->name, 'title' => Yii::$app->name]);
            //echo Html::a(Yii::$app->name,['//site/index'],['class'=>'navbar-brand']); ?>
        </a>

    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav product-nav">
            <li class="active"><?= Html::a('Live Auctions', ['//site/index'], ['title' => 'live auctions']); ?></li>
            <li><?= Html::a('Bid Request', ['//shop/bid-request'], ['title' => 'Request Item for bidding']); ?></li>
            <li><?= Html::a('Live TV', ['//tv/live-tv'], ['title' => 'live TV']); ?></li>
            <li><?= Html::a('Online Shopping', ['//shop/'], ['title' => 'Online Shopping']); ?></li>
        </ul>
        <ul class="nav navbar-nav navbar-right" style="margin-right: 10px;">
            <?php if (Yii::$app->user->isGuest): ?>
                <li><?= Html::a('Log In', ['//site/login'], ['title' => 'Sign in to place bids', 'class' => 'text-capitalise']); ?></li>
                <li><?= Html::a('Sign Up Now It\'s Free', ['//user/users/signup'], ['title' => 'Sign in to place bids', 'class' => 'text-capitalise']); ?></li>
            <?php else: ?>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">My Account
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><?= Html::a('<span class="fa fa-user"></span> My Account', ['//user/users/my-profile', 'id' => yii::$app->user->id], ['class' => 'text-capitalise']); ?></li>
                        <?php if (Yii::$app->user->identity->accounttype) { ?>
                            <hr/>
                            <li><?= Html::a('<span class="fa fa-cog"></span> Product Manager', ['//products'], ['class' => 'text-capitalise']); ?></li>
                        <?php } ?>
                        <hr/>
                        <!--<li><?= Html::a('<span class="fa fa-lock"></span> Logout', ['//site/logout'], ['class' => 'text-capitalise']); ?></li>-->
                        <?= Html::beginForm(['/site/logout'], 'post') ?>
                        <li><?= Html::submitButton('Logout (' . Yii::$app->user->identity->EMAIL_ADDRESS . ')', ['class' => 'btn btn-link logout']) ?></li>
                        <?= Html::endForm() ?>
                    </ul>
                </li>
                <li><?= Html::a('<span class="fa fa-heart"></span> My Wishlist', ['//shop/wishlist'], ['title' => 'Items in your wish-list', 'class' => 'text-capitalise']); ?></li>
                <li>
                    <?= Html::a('<span class="glyphicon glyphicon-shopping-cart"></span> Cart <small class="badge" id="cart-items">' . CartManager::GetCartItems(yii::$app->user->id) . '</small>',
                        ['//shop/cart', 'id' => yii::$app->user->id],
                        ['title' => 'Items in your cart', 'class' => 'text-capitalise', 'id' => 'cart']); ?>
                    <!--<a href="#">
                        <span class="glyphicon glyphicon-shopping-cart"></span> Cart
                        <small id="cart-item"><span class="badge"><?= CartManager::GetCartItems(yii::$app->user->id) ?></span> Items</small>
                    </a>-->
                </li>
            <?php endif; ?>
        </ul>
        <form class="nav navbar-form navbar-left" role="search">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search" name="search-term">
                <?= Html::textInput('cart_url', $cartUrl, ['readonly' => true, 'id' => 'update_url', 'class' => 'hidden']) ?>
            </div>
            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>
            </button>
        </form>
    </div>
</nav>