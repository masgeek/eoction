<?php

namespace app\controllers;


use fedemotta\cronjob\models\CronJob;
use yii\web\Controller;


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
		$dates  = CronJob::getDateRange($from, $to);
		$command = CronJob::run($this->id, $this->action->id, 0, CronJob::countDateRange($dates));
		if ($command === false){
			return false;
		}else{
			foreach ($dates as $date) {
				//this is the function to execute for each day
				//SomeModel::some_method((string) $date);
			}
			$command->finish();
			return true;

		}
	}

    public function actionActiveBids()
    {
	    return $this->actionInitBids(date("Y-m-d"), date("Y-m-d"));
    }

}
