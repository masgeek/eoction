<?php

$params = require(__DIR__ . '/params.php');

$config = [
    'id' => 'basic',
    'name' => 'eOction',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'aliases' => [
        '@bower' => 'vendor/bower-asset',
    ],
    /* modules */
    'modules' => [
        'product' => [
            'class' => 'app\module\products\product',
        ],
        'user' => [
            'class' => 'app\module\users\user',
        ],
        'shopper' => [
            'class' => 'app\module\shopper\Module',
        ],
    ],
    'components' => [
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => '921af581c20b4666ba21f6b8b888688d',
        ],
        /*'assetManager' => [
            'basePath' => '@webroot/my_assets',
        ],*/

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
        'db' => require(__DIR__ . '/db.php'),

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
                'signup' => 'user/users/signup',
                'request-password-reset' => 'site/request-password-reset',
                'reset-password' => 'site/reset-password',
            ],
        ],

        //formatting class
        'formatter' => [
            'class' => 'yii\i18n\Formatter',
            'dateFormat' => 'dd.MM.yyyy',
            'decimalSeparator' => '.',
            'thousandSeparator' => ',',
            'currencyCode' => 'USD',
            'nullDisplay' => '0',
        ],
//Paypal module
        //lets add the paypal components to allow us to do paypal sandbox simulations
        /*'paypal' => [
            'class' => 'kongoon\yii2\paypal\Paypal',
            'clientId' => 'AQymVlI9wso_vCWTOUZXoqQUdg78w3_Mz8VmNWms7eSJYXf9B7UAh4kel-SggfCaZ6oORqXEjKaBGuBo',
            'clientSecret' => 'EIHkGryugLStmJgZP1uwEBKXb5q8nj6JAzjmyxlJdMqprZSbS-gTGTimh2VPwVb-KrmrqHSKaj_69ZLM',
            'currency' => 'USD',
            'isProduction' => false,
            // This is config file for the PayPal system
            'config' => [
                'http.ConnectionTimeOut' => 30,
                'http.Retry' => 2, //retry only once
                'mode' => \kongoon\yii2\paypal\Paypal::MODE_SANDBOX,    // sandbox | live
                'log.LogEnabled' => YII_DEBUG ? 1 : 0, //based on our environment logs will b enabled or not
                'log.FileName' => '@runtime/logs/paypal.log', //logs directory
                'log.LogLevel' => \kongoon\yii2\paypal\Paypal::LOG_LEVEL_FINE,  // FINE | INFO | WARN | ERROR
            ]
        ],*/
        //yii2 authclient
        'authClientCollection' => [
            'class' => 'yii\authclient\Collection',
            'clients' => [
                'facebook' => [
                    'class' => 'yii\authclient\clients\Facebook',
                    'authUrl' => 'https://www.facebook.com/dialog/oauth?display=popup',
                    'clientId' => '1789588324654575',
                    'clientSecret' => 'ababaa956d050715bba974c068a27206',
                    'attributeNames' => ['name', 'email', 'first_name', 'last_name'],
                ],
                'google' => [
                    'class' => 'yii\authclient\clients\Google',
                    'clientId' => '381959696099-97vdona6f7lqm5gmi80ldjnlb4im4cku.apps.googleusercontent.com',
                    'clientSecret' => '6pWTmWc9bO4dMa7MyIVGyV6U',
                ],
            ],
        ],
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
    ];
}

return $config;
