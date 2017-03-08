<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\commands;

use yii\console\Controller;

/**
 * This command echoes the first argument that you have entered.
 *
 * This command is provided as an example for you to learn how to create console commands.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class HelloController extends Controller
{
    /**
     * @param string $message
     * @return int
     */
    public function actionIndex($message = 'Active bids cron command ran every 10 minutes')
    {
        /* @var $activebids \app\bidding\ActiveBids */
        $activebids = \Yii::$app->activebids;


        \Yii::info('Starting cron', 'activebids'); //log to an exclusions log file;
        //lets check the active bids
        //$activebids->maximum_items = 24;

        $activebids->Remove_Expired_Exclusions();

        $activebids->Remove_Won_Expired_Items(); //proces the active bids

        \Yii::info('Finished cron', 'activebids'); //log to an exclusions log file;
        echo $message . "\n";
    }
}
