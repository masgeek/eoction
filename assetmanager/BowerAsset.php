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
class BowerAsset extends AssetBundle
{
    public $sourcePath = '@bower';

    public $css = [
        'animate.css/animate.min.css'
    ];

    public $js = [
        //'timer.jquery/dist/timer.jquery.js'
        //'countdown360/dist/jquery.countdown360.js'
        'velocity/velocity.min.js',
        'velocity/velocity.ui.min.js'
    ];

    public $depends = [
        'yii\web\JqueryAsset',
    ];
}
