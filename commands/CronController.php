<?php

namespace app\commands;


use fedemotta\cronjob\models\CronJob;
use yii\console\Controller;

class CronController extends Controller
{

	/**
	 * Run SomeModel::some_method for a period of time
	 * @param string $from
	 * @param string $to
	 * @return int exit code
	 */
	private function actionInitBids($from, $to)
	{
		/* @var $activebids \app\bidding\ActiveBids */

		$activebids = \Yii::$app->activebids;

		\Yii::info('Starting cron', 'activebids'); //log to an exclusions log file;
		$dates = CronJob::getDateRange($from, $to);
		$command = CronJob::run($this->id, $this->action->id, 0, CronJob::countDateRange($dates));
		if ($command === false) {
			\Yii::error('Cron failed', 'activebids'); //log to an exclusions log file;
			return Controller::EXIT_CODE_ERROR;
		} else {
			//lets check the active bids
			//$activebids->maximum_items = 20;
			$result = $activebids->Remove_Won_Expired_Items(); //proces the active bids
			echo "Removing expired items $result \n";
			$command->finish();
			\Yii::info("Finishing cron $result expired items removed", 'activebids'); //log to an exclusions log file;
			return Controller::EXIT_CODE_NORMAL;
		}
	}

    private function actionInitRequests($from, $to)
    {
        /* @var $bidRequests \app\bidding\BidRequests */

        $bidRequests = \Yii::$app->bidrequests;

        //\Yii::info('Starting cron', 'activebids'); //log to an exclusions log file;
        $dates = CronJob::getDateRange($from, $to);
        $command = CronJob::run($this->id, $this->action->id, 0, CronJob::countDateRange($dates));
        if ($command === false) {
            \Yii::error('Cron failed', 'activebids'); //log to an exclusions log file;
            return Controller::EXIT_CODE_ERROR;
        } else {
            $result = $bidRequests->ProcessRequests($approved = false); //process the requests
            echo "Processing bid requests $result \n";
            $command->finish();
            //\Yii::info("Finishing cron $result expired items removed", 'activebids'); //log to an exclusions log file;
            return Controller::EXIT_CODE_NORMAL;
        }
    }

	public function actionActiveRequests(){
        return $this->actionInitRequests(date("Y-m-d"), date("Y-m-d"));
    }
	public function actionActiveBids()
	{
		return $this->actionInitBids(date("Y-m-d"), date("Y-m-d"));
	}

	public function actionIndex()
	{
		echo $this->message . "\n";
	}

}
