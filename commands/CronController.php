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
	public function actionInitBids($from, $to)
	{
		/* @var $activebids \app\bidding\ActiveBids */

		$dates = CronJob::getDateRange($from, $to);
		$command = CronJob::run($this->id, $this->action->id, 0, CronJob::countDateRange($dates));
		if ($command === false) {
			return Controller::EXIT_CODE_ERROR;
		} else {
			//lets check the active bids

			$activebids = \Yii::$app->activebids;
			//$activebids->AddToActiveBids(1);

			$command->finish();
			return Controller::EXIT_CODE_NORMAL;

		}
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
