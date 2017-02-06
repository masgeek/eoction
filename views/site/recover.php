<div class="users-login col-md-4 col-md-offset-4">
	<div class="panel panel-default">
		<div class="panel-heading">Please login to proceed</div>
		<div class="panel-body">
			<?php if (Yii::$app->session->hasFlash('success')): ?>
				<div class="alert alert-success alert-dismissable">
					<button aria-hidden="true" data-dismiss="alert" class="close" type="button">CLOSE</button>
					<?= Yii::$app->session->getFlash('success') ?>
				</div>
			<?php endif; ?>
			<?= $this->render('_recover') ?>
		</div>
	</div>
</div>
