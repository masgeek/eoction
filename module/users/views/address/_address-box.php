<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 12/7/2016
 * Time: 7:53 PM
 */

/* @var $model app\module\users\models\UserAddress */
use \yii\bootstrap\Html;
use \app\module\users\models\UserAddress;

//'class' => $model->isNewRecord ? 'btn btn-success btn-block noradius' : 'btn btn-primary noradius btn-block'
?>


<div class="col-md-4">
    <div
        class="<?= $model->ADDRESS_TYPE == UserAddress::BILLING_ADDRESS ? 'panel panel-warning' : 'panel panel-info' ?>">
        <div class="panel-heading">
            <span
                class="<?= $model->ADDRESS_TYPE == UserAddress::BILLING_ADDRESS ? 'label label-success' : 'label label-default' ?>">
                <i class="fa fa-map-marker"></i> <?= $model->ADDRESS_TYPE ?>
            </span>
        </div>

        <div class="panel-body">
            <div class="row pull-right">
                <div class="col-xs-6">
                    <?= Html::a('<i class="fa fa-edit fa-1x"></i>',
                        ['update', 'id' => $model->ADDRESS_ID], [
                            'class' => 'btn btn-success',
                            'title' => 'Edit Address'
                        ]) ?>
                </div>
                <div class="col-xs-6">
                    <?= Html::a('<i class="fa fa-remove fa-1x"></i>',
                        \yii\helpers\Url::toRoute(['delete', 'id' => $model->ADDRESS_ID, 'user_id' => $model->USER_ID]),
                        [
                            'data-method' => 'post',
                            'class' => 'btn btn-danger',
                            'title' => 'Remove Address'
                        ]) ?>
                </div>
            </div>
            <address>
                <strong><?= $model->NAME . ', ' . $model->COMPANY ?></strong>
                <br/>
                <?= $model->STREET1 ?>
                <br/>
                <?= $model->CITY ?>, <?= $model->STATE . ' ' . $model->POSTALCODE ?>
                <br/>
                <?= $model->cOUNTRY->COUNTRY_NAME ?>
                <br/>
                <i class="fa fa-phone" aria-hidden="true"></i> <?= $model->PHONE ?>
                <br/>
                <i class="fa fa-envelope-o" aria-hidden="true"></i> <a
                    href="mailto:<?= $model->uSER->EMAIL_ADDRESS ?>"><?= $model->uSER->EMAIL_ADDRESS ?></a>
            </address>
        </div>
    </div>
</div>