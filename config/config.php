<?php

$params = YII_ENV_DEV ? require(__DIR__ . '/params_test.php') : require(__DIR__ . '/params_live.php');

$config = [
	'id' => 'basic',
	'name' => YII_DEBUG ? 'EOCTION DEV' : 'EOCTION',
	'basePath' => dirname(__DIR__),
	'bootstrap' => ['log'],
	'aliases' => [
		'@bower' => 'vendor/bower-asset',
	],
	/* modules */
	'modules' => [
		'gridview' => [
			'class' => 'kartik\grid\Module'
		],
		'product' => [
			'class' => 'app\module\products\product',
		],
		'user' => [
			'class' => 'app\module\users\user',
		],
		'shopper' => [
			'class' => 'app\module\shopper\Module',
		],
		'merchantportal' => [
			'class' => 'app\module\merchant\admin',
			'defaultRoute' => 'merchant', //default controller
		],
	],
	'components' => [
		'request' => [
			// !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
			'cookieValidationKey' => '921af581c20b4666ba21f6b8b888688d',
		],
		'assetManager' => [
			//'basePath' => '@webroot/my_assets',
			'class' => 'yii\web\AssetManager',
			'linkAssets' => true,
			'forceCopy' => YII_DEBUG,
		],
		/* custom view template*/
		'view' => [
			'theme' => [
				'pathMap' => [
					'@app/views' => 'themes/eoction'
				],
				//'baseUrl' => 'themes/eoction' /* base url */
			]
		],
		'cache' => [
			'class' => 'yii\caching\FileCache',
		],
		'user' => [
			'identityClass' => 'app\models\UserLogin',
			//'identityClass' => 'app\module\users\models\Users',
			'enableAutoLogin' => false,
		],
		'errorHandler' => [
			'errorAction' => 'site/error',
		],
		'mailer' => [
			'class' => 'yii\swiftmailer\Mailer',
			'viewPath' => '@app/mail',
			// send all mails to a file by default. You have to set
			// 'useFileTransport' to false and configure a transport
			// for the mailer to send real emails.
			'useFileTransport' => false,
			'transport' => [
				'class' => 'Swift_SmtpTransport',
				'host' => 'mail.eoction.com',
				'username' => 'noreply@eoction.com',
				'password' => 'PSeOction',
				'port' => '587',
				//'encryption' => 'tls',
			],
		],
		//emailing component
		'emailer' => [
			'class' => 'app\components\EmailComponent',
			'from' => ['noreply@eoction.com' => 'Eoction'],
		],

		/*'log' => [
			'traceLevel' => YII_DEBUG ? 3 : 0,
			'targets' => [
				[
					'class' => 'yii\log\FileTarget',
					'levels' => ['error', 'warning'],
				],
			],
		],*/
		'log' => [
			'traceLevel' => YII_DEBUG ? 3 : 0,
			'targets' => [
				[
					'class' => 'yii\log\FileTarget',
					'levels' => ['error', 'warning'],
					'logVars' => [null],
				],
				[
					'class' => 'yii\log\FileTarget',
					'levels' => ['info', 'error', 'warning'],
					'categories' => ['bidExclusions'],
					'logFile' => '@app/runtime/logs/Bids/bid_exclusions.log',
					'logVars' => [null],
					'maxFileSize' => 1024 * 2,
					'maxLogFiles' => 20,
				],
				[
					'class' => 'yii\log\FileTarget',
					'levels' => ['info'],
					'categories' => ['Notifications'],
					'logFile' => '@app/runtime/logs/Notifications/notification.log',
					'logVars' => [null],
					'maxFileSize' => 1024 * 2,
					'maxLogFiles' => 50,
				],
			],
		],
		'db' => require(__DIR__ . '/eoction.php'),
		//'affy' => require(__DIR__ . '/affy.php'),

		'urlManager' => [
			'enablePrettyUrl' => true,
			'showScriptName' => false,
			'enableStrictParsing' => false,
			'rules' => [
				//default rules
				'<controller:\w+>/<id:\d+>' => '<controller>',
				'<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
				'<controller:\w+>/<action:\w+>' => '<controller>/<action>',
				//custom rules
				'/' => 'site',
				'login' => 'site/login',
				'logout' => 'site/logout',
				'create-orders' => 'site/create-orders',
				'get-orders' => 'site/get-orders',
				'signup' => 'user/users/signup',
				'my-addresses' => 'user/address/index',
				'products' => 'product/product/index',
				'orders' => 'product/orders/index',
				'add-image' => 'product/images/add-image',
				'request-password-reset' => 'site/request-password-reset',
				'reset-password' => 'site/reset-password',
				//merchant portal access
				'merchant' => 'merchantportal/merchant/index',
			],
		],

		//formatting class
		'formatter' => [
			'class' => 'yii\i18n\Formatter',
			'dateFormat' => 'dd.MM.yyyy',
			'decimalSeparator' => '.',
			'thousandSeparator' => ',',
			//'timeZone' => 'GMT', //default time zones and format
			'currencyCode' => 'USD',
			'nullDisplay' => '0',
		],
//Paypal module
		'paypal' => require(__DIR__ . '/paypal.php'),
		//yii2 authclient
		'authClientCollection' => require(__DIR__ . '/oauth.php'),
		//Shipping regions components
		'shippingregions' => [
			'class' => 'app\components\ShippingRegions',
			'default_package' => [
				'package' => 'package'
			],
			'default_service' => 'usps_first_class_mail_international',
			'us_region_shipping_cost' => [
				'usps_first_class_mail' => 6,
				'usps_priority_mail' => 10
			],
			'canada_region_shipping_cost' => [
				'usps_first_class_mail_international' => 14
			],
			'other_region_shipping_cost' => [
				'usps_first_class_mail_international' => 54
			]
		],
		//Active bids manager
		'activebids' => require (__DIR__.'/activebids.php'),
	],
	'params' => $params,
];
if (YII_DEBUG) {
	// configuration adjustments for 'dev' environment
	$config['bootstrap'][] = 'debug';
	$config['modules']['debug'] = [
		'class' => 'yii\debug\Module',
		'allowedIPs' => ['127.0.0.1', '::1', '192.168.0.*', '192.168.56.*', '75.157.241.9']
	];
	$config['modules']['webshell'] = [
		'class' => 'samdark\webshell\Module',
		// 'yiiScript' => Yii::getAlias('@root'). '/yii', // adjust path to point to your ./yii script
		'allowedIPs' => ['127.0.0.1', '::1', '154.70.4.147']
	];
	$config['bootstrap'][] = 'gii';
	$config['modules']['gii'] = [
		'class' => 'yii\gii\Module',
		'generators' => [
			'model' => [
				'class' => 'yii\gii\generators\model\Generator',
				'templates' => ['mymodel' => '@app/mygenerators/model/beforesave']
			]
		]
	];
}

return $config;
