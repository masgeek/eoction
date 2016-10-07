<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><?= Yii::$app->name; ?></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Live Auctions</a></li>
                <li><a href="#">Live TV</a></li>
                <li><a href="#">Online Shopping</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span></span> My Account</a></li>
                <li><a href="#"><span></span> My Wishlist</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart
                        <small id="cart-item">0 Items</small>
                    </a></li>
            </ul>
            <form class="nav navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search" name="search-term">
                </div>
                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>
                </button>
            </form>
        </div>
    </div>
</nav>