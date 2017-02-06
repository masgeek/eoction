<?php
$g = Yii::$app->session->getAllFlashes();

var_dump($g);
?>
<div class="users-login col-md-4 col-md-offset-4">
    <div class="panel panel-default">
        <div class="panel-heading">Enter the email you registered with to recover your password</div>
        <div class="panel-body">
			<?php if (Yii::$app->session->hasFlash('success')): ?>
                <div class="alert alert-success alert-dismissable">
                    <button aria-hidden="true" data-dismiss="alert" class="close" type="button">CLOSE</button>
					<?= Yii::$app->session->getFlash('success') ?>
                </div>
			<?php elseif (Yii::$app->session->hasFlash('error')): ?>
                <div class="alert alert-warning alert-dismissable">
                    <button aria-hidden="true" data-dismiss="alert" class="close" type="button">CLOSE</button>
					<?= Yii::$app->session->getFlash('error') ?>
                </div>
			<?php endif; ?>
			<?= $this->render('_recover') ?>
        </div>
    </div>
</div>
