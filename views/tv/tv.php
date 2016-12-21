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
    <div class="col-sm-6">
        <?= VideoEmbed::widget([
            'url' => $url,
            'container_id' => 'yourCustomId',
            'container_class' => '',
        ]); ?>
    </div>
</div>
<!--
<div class="row">
    <div class="col-sm-8 col-sm-offset-2">
        <h2><?= $this->title ?></h2>
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="<?= $url ?>"></iframe>
        </div>
    </div>
</div>
-->