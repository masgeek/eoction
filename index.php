<?php

//exit('<h1>Site is updating...please standby</h1>');
// comment out the following two lines when deployed to production
defined('YII_DEBUG') or define('YII_DEBUG', TRUE);
defined('YII_ENV') or define('YII_ENV', 'dev');



require(__DIR__ . '/vendor/autoload.php');
require(__DIR__ . '/vendor/yiisoft/yii2/Yii.php');

$config = require(__DIR__ . '/config/config.php');

(new yii\web\Application($config))->run();
