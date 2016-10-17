<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';

    public $css = [
        'css/site.css',
        'css/products.css',
        'css/social-icons/social-icons.css',
        //'js/as_progress/css/asProgress.css',
        /*'css/theme-shop.css',
        'css/theme-elements.css',
        'css/ultimate.css',
        'css/style-2.css',
        'css/skin-1.css',
        'css/js_composer.min.css',*/
    ];

    public $js = [
        //'js/jquery.progressTimer.js',
        //'js/as_progress/jquery-asProgress.js',
        //'js/as_progress/jquery-asProgress.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        //'yii\jui\JuiAsset',
        //'yii\bootstrap\BootstrapAsset',
        'yii\bootstrap\BootstrapPluginAsset',
        '\rmrevin\yii\fontawesome\AssetBundle'
    ];
}
