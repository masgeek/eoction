<?php

Yii::setAlias('@tests', dirname(__DIR__) . '/tests/codeception');

$params = YII_ENV_DEV ? require(__DIR__ . '/params_test.php') : require(__DIR__ . '/params_live.php');
$db = require(__DIR__ . '/eoction.php');

$config = [
	'id' => 'basic-console',
	'basePath' => dirname(__DIR__),
	'bootstrap' => ['log'],
	'controllerNamespace' => 'app\commands',
	'components' => [
		'cache' => [
			'class' => 'yii\caching\FileCache',
		],
		'log' => [
			'targets' => [
				[
					'class' => 'yii\log\FileTarget',
					'levels' => ['error', 'warning'],
				],
				[
					'class' => 'yii\log\FileTarget',
					'levels' => ['info', 'error', 'warning'],
					'categories' => ['activebids'],
					'logVars' => ['$_POST'],
					'logFile' => '@app/runtime/logs/Bids/active_bids.log',
					'maxFileSize' => 1024 * 2,
					'maxLogFiles' => 20,
				],
			],

		],
		'db' => $db,
		'activebids' => require(__DIR__ . '/activebids.php'),
	],
	'params' => $params,
	/*
	'controllerMap' => [
		'fixture' => [ // Fixture generation command line.
			'class' => 'yii\faker\FixtureController',
		],
	],
	*/
];

if (YII_ENV_DEV) {
	// configuration adjustments for 'dev' environment
	$config['bootstrap'][] = 'gii';
	$config['modules']['gii'] = [
		'class' => 'yii\gii\Module',
	];
}

return $config;
