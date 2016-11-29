<div class="row text-center">
    <div class="col-sm-6 col-sm-offset-3">
        <br><br>
        <h2 style="color:#f2102d">Transaction Cancelled</h2>
        <i class="fa fa-ban fa-5x" style="color: red;"></i>
        <h3>Dear, <?= Yii::$app->user->identity->fullnames ?></h3>
        <p style="font-size:20px;color:#5C5C5C;">You have cancelled your purchase. Your account won't be billed.</p>
        <?= \yii\helpers\Html::a('My Cart',
            ['//shop/cart', 'id' => yii::$app->user->id],
            ['title' => 'Go to my cart', 'class' => 'btn btn-warning btn-lg']); ?>
        <br/>
        <br/>
    </div>
</div>
