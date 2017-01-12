<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 11/28/2016
 * Time: 4:52 PM
 *
 * lets add the paypal components to allow us to do paypal sandbox simulations
 * sandbox accouhnt lody.tacastacas-facilitator@pristone.net
 */
return [
    'class' => 'kongoon\yii2\paypal\Paypal',
	/* Test credentials*/
    //'clientId' => 'AcH9OlDvwD4g5S7fE4U1m-7tee_CiC6mPH_fxFKzgbiknxg8fTt9xH-VjKNuiLwXhDVg5mLmFx_wKhlS',
    //'clientSecret' => 'ECucZFofNjTKFaTBKqaFHLJxwTGtLfm9dP-s5LIE64IVVNucnwX9qqhfbc6ILyGcI0-WZFJhriThIBtL',

	/* Live credentials */
	'clientId' => 'AbQ6qNiZGyARxRd7fdzxYAQv2n-S4fOd_zUJNvPV9TwgyamXj7Fe-616wRbTIOlbrWf804AQmPnO2C1N',
    'clientSecret' => 'ELmHPLvIY5DDnUYIOgkSXHGOvGI3cYmkW-JTaylYemR8RT9Dg2WYlCegeleClZrz3MvL7cARXMNAh2Rm',
    'currency' => 'USD',
    'isProduction' => true,
    // This is config file for the PayPal system
    'config' => [
        'http.ConnectionTimeOut' => 60, //script timeout in seconds
        'http.Retry' => 2, //retry only once
        'mode' => \kongoon\yii2\paypal\Paypal::MODE_LIVE,    // sandbox | live
        'log.LogEnabled' => YII_DEBUG ? 1 : 0, //based on our environment logs will b enabled or not
        //'log.FileName' => '@runtime/logs/paypal.log', //logs directory
        'log.LogLevel' => \kongoon\yii2\paypal\Paypal::LOG_LEVEL_FINE,  // FINE | INFO | WARN | ERROR
    ]
];