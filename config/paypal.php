<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 11/28/2016
 * Time: 4:52 PM
 */
return [
    'class' => 'kongoon\yii2\paypal\Paypal',
    'clientId' => 'AcH9OlDvwD4g5S7fE4U1m-7tee_CiC6mPH_fxFKzgbiknxg8fTt9xH-VjKNuiLwXhDVg5mLmFx_wKhlS',
    'clientSecret' => 'ECucZFofNjTKFaTBKqaFHLJxwTGtLfm9dP-s5LIE64IVVNucnwX9qqhfbc6ILyGcI0-WZFJhriThIBtL',
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
];