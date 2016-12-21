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
<div class="col-sm-4 col-sm-offset-4 col-md-8 video-container">
    <h3 class="video-mobile-headline"><?= $this->title ?></h3>
    <div class="vid">
        <!--<img class="responsive placard" src="" alt=""/>-->
        <iframe width="640" height="360" src="<?= $url ?>" allowfullscreen="" frameborder="0"></iframe>
    </div><!--End vid-->
</div>

<hr/>

<style>
    .video-container {
        background: #ccc;
        padding: 10px 10px 0px 10px;
    }

    .vid {
        position: relative;
        padding-bottom: 56.25%;
        padding-top: 30px;
        height: 0;
        overflow: hidden;
        margin-bottom: 25px;
    }

    .vid iframe, .vid object, .vid embed {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }

    .video-mobile-headline {
        display: none;
        margin: 0px;
    }

    /*Mobile Rendering. Add to the very end of your CSS file.*/
    @media only screen and (max-device-width: 800px), only screen and (device-width: 1024px) and (device-height: 600px), only screen and (width: 1280px) and (orientation: landscape), only screen and (device-width: 800px), only screen and (max-width: 767px) {
        .video-container {
            padding-bottom: 10px;
        }

        .flex-video {
            padding-top: 0;
        }
    }

    @media (max-width: 767px) {
        .video-mobile-headline {
            display: block;
        }
    }
</style>
