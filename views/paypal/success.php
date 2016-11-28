<?php

$full_names = Yii::$app->user->identity->fullnames;
$email = Yii::$app->user->identity->emailaddress;
?>
<div class="row text-center">
    <div class="col-sm-6 col-sm-offset-3">
        <br><br>
        <h2 style="color:#0fad00">Success</h2>
        <i class="fa fa-check-circle-o fa-5x" style="color: green;"></i>
        <h3>Dear, <?= $full_names ?></h3>
        <p style="font-size:20px;color:#5C5C5C;">Thank you for completing your purchase. We have sent you an email to
            "<?= $email ?>" confirming your payment</p>
        <?= \yii\helpers\Html::a('Continue Shopping',
            ['//shop/cart'],
            ['title' => 'Continue Shopping', 'class' => 'btn btn-success btn-lg']); ?>
        <br/>
        <br/>
    </div>
</div>