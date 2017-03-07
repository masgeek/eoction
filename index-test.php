<?php

//this is defines for the cron job
defined('STDIN') or define('STDIN', fopen('php://stdin', 'r'));
defined('STDOUT') or define('STDOUT', fopen('php://stdout', 'w'));

require(__DIR__ . '/vendor/autoload.php');
require(__DIR__ . '/vendor/yiisoft/yii2/Yii.php');

$config = require(__DIR__ . '/config/console.php');
//$config = require(__DIR__ . '/../tests/codeception/config/acceptance.php');

$application = new yii\console\Application($config);
$exitCode = $application->run();
exit($exitCode);
