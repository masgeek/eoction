<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assetmanager;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class MerchantBowerAsset extends AssetBundle
{
    public $sourcePath = '@bower';

    public $jsOptions = array(
        'position' => \yii\web\View::POS_HEAD
    );

    public $css = [
        //'animate.css/animate.min.css',
        //'tingle/dist/tingle.min.css'
        'simple-line-icons/css/simple-line-icons.css',
        'bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.min.css',
        'morris.js/morris.css',
        'jqvmap/dist/jqvmap.min.css',
        'fullcalendar/dist/fullcalendar.min.css',
    ];

    public $js = [
        //'timer.jquery/dist/timer.jquery.js'
        //'countdown360/dist/jquery.countdown360.js'
        //'velocity/velocity.js',
        //'velocity/velocity.ui.js',
        //'//cdnjs.cloudflare.com/ajax/libs/numeral.js/1.4.5/numeral.min.js',
        //'tingle/dist/tingle.min.js'
        'bootstrap-switch/dist/js/bootstrap-switch.min.js',
        'morris.js/morris.min.js',
        'blockUI/jquery.blockUI.js',
        'cookie/cookie.min.js',
    ];

    public $depends = [
        'yii\web\JqueryAsset',
    ];
}
