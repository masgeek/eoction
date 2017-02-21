<?php
require(__DIR__ . '/vendor/autoload.php');
require(__DIR__ . '/vendor/yiisoft/yii2/Yii.php');

$config = require(__DIR__ . '/config/console.php');
//$config = require(__DIR__ . '/../tests/codeception/config/acceptance.php');

$application = new yii\console\Application($config);
$exitCode = $application->run();
exit($exitCode);
