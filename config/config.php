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
        ]
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

        /* external files*/
        /*'assetManager' => [
            'assetMap' => [
                'jquery.js' => '//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js',
            ],
        ],*/
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
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
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
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
    ];

    $config['modules']['webshell'] = [
        'class' => 'samdark\webshell\Module',
        // 'yiiScript' => Yii::getAlias('@root'). '/yii', // adjust path to point to your ./yii script
        'allowedIPs' => ['127.0.0.1', '::1', '192.168.0.2']
    ];
    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
    ];
}

return $config;
