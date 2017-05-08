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
    public $jsOptions = array (
            'position' => \yii\web\View::POS_HEAD
    );
    public $css = [
            //'animate.css/animate.min.css',
            'tingle/dist/tingle.min.css'
    ];
    public $publishOptions = [
            //'forceCopy'=>true,
    ];
    public $js = [
            'velocity/velocity.min.js',
            'pubnub/dist/web/pubnub.min.js',
            'tingle/dist/tingle.js',
            'numeral/min/numeral.min.js'
    ];
    public $depends = [
            'yii\web\JqueryAsset',
    ];

}
