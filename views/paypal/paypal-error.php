<div class="row text-center">
    <div class="col-sm-6 col-sm-offset-3">
        <br><br>
        <h2 style="color:#f2102d">Unable to complete purchase</h2>
        <i class="fa fa-ban fa-5x" style="color: red;"></i>
        <h3>Dear, <?= Yii::$app->user->identity->fullnames ?></h3>
        <p style="font-size:20px;color:#5C5C5C;">We are unable to complete your purchase at this time. Please try
            again later</p>
        <?= \yii\helpers\Html::a('\'<span class="glyphicon glyphicon-shopping-cart"></span> My Cart',
            ['//shop/cart', 'id' => yii::$app->user->id],
            ['title' => 'View Items in cart', 'class' => 'btn btn-danger btn-lg']); ?>
        <br><br>
    </div>
</div>
