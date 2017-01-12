<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 12/21/2016
 * Time: 9:15 PM
 */


/* @var $this yii\web\View */

use yii\helpers\Html;
use cics\widgets\VideoEmbed;

$url = '//www.youtube.com/embed/MY7dEN3nrnY';
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-m-8 col-md-offset-4">
        <h3><?= $this->title ?></h3>
    </div>
</div>
<!--
<div class="row">
    <div class="col-m-8 col-md-offset-4">
        <?= VideoEmbed::widget([
            'url' => $url,
            'container_id' => 'yourCustomId',
            'container_class' => '',
        ]); ?>
    </div>
</div>
-->

<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item center-block" src="<?= $url ?>"></iframe>
        </div>
    </div>
</div>
