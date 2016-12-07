<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 12/7/2016
 * Time: 7:53 PM
 */

/* @var $model app\module\users\models\UserAddress */


$model->NAME;
$model->COMPANY;
$model->POSTALCODE;
$model->STREET1;
$model->CITY;
$model->COUNTRY;
?>


<div class="col-md-4">
    <div class="panel panel-primary">
        <div class="panel-heading"><span class="badge text-capitalise"><?= $model->ADDRESS_TYPE ?>:</span></div>
        <div class="panel-body">
            <address>
                <strong><?= $model->NAME . ', ' . $model->COMPANY ?>.</strong>
                <br/>
                <?= $model->STREET1 ?>
                <br/>
                <?= $model->CITY ?>, <?= $model->STATE . ' ' . $model->POSTALCODE ?>
                <br/>
                <i class="fa fa-phone" aria-hidden="true"></i> <?= $model->PHONE ?>
                <br/>
                <i class="fa fa-envelope-o" aria-hidden="true"></i> <a
                    href="mailto:<?= $model->uSER->EMAIL_ADDRESS ?>"><?= $model->uSER->EMAIL_ADDRESS ?></a>
            </address>
        </div>
    </div>
</div>