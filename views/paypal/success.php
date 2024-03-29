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
        <p style="font-size:20px;color:#803e39;">Thank you for completing your purchase.</p>
        <p style="font-size:20px;color:#5C5C5C;">Your order will be processed soon. We have sent you an email to
            "<?= $email ?>" regarding your order status</p>
        <?= \yii\helpers\Html::a('Continue Shopping',
            ['//shop'],
            ['title' => 'Continue Shopping', 'class' => 'btn btn-success btn-lg']); ?>
        <br/>
        <br/>
    </div>
</div>