<?php
/**
 * Created by PhpStorm.
 * User: barsa
 * Date: 2/7/2017
 * Time: 1:18 PM
 */


namespace app\bidding;

use app\module\products\models\TbActiveBids;
use yii\base\Component;
use yii\base\InvalidConfigException;

class ActiveBids extends Component
{

	public $maximum_items;
	public $bidding_minute_duration;
	public $timezone;
	public $current_date;

	public function init()
	{
		parent::init();
		if ($this->maximum_items == null || $this->maximum_items <= 0) {
			throw new InvalidConfigException('Maximum items should equal to or greater than 1');
		}

		if ($this->bidding_minute_duration == null || $this->bidding_minute_duration < 5) {
			throw new InvalidConfigException('Bidding duration should be at least 5 minutes');
		}

		if ($this->timezone == null) {
			$this->timezone = 'GMT';
		}

		if ($this->current_date == null) {
			$this->current_date = date('Y-m-d  H:i:s');
		}

		//set the current timezone
		date_default_timezone_set($this->timezone);
	}

	/**
	 * @return mixed
	 */
	public function FetchBidItems()
	{
		return $this->maximum_items;
	}

	public function AddToActiveBids($product_id)
	{
		/* @var $model TbActiveBids */
		$model = $this->ValidateItem($product_id);

		$model->BIDDING_DURATION = $this->ComputeBidDuration(); //get the bid duration
		if ($model->save()) {
			return true;//saved
		} else {
			\Yii::error($model->getErrors(), 'bidExclusions'); //log to an exclusions log file;
		}
		return false;
	}

	/**
	 * Check if a record already exists
	 * @param $product_id
	 * @return bool|static
	 */
	private function ValidateItem($product_id)
	{
		$model = TbActiveBids::findOne(['PRODUCT_ID' => $product_id]);
		if ($model == null) {
			//i is a new record
			$model = new TbActiveBids();
			$model->isNewRecord = true;
			$model->PRODUCT_ID = $product_id;
		}
		return $model; //return the model if the record does exist
	}

	/**
	 * returns the bid duration timestamp
	 * @return false|int
	 */
	private function ComputeBidDuration()
	{
		//$currentDate = strtotime($date);
		$bidDuration = strtotime($this->current_date . "+$this->bidding_minute_duration minutes");
		return $bidDuration;
	}

	/**
	 * @param $bid_duration
	 * @return float
	 */
	private function GetRemainingBidDuration($bid_duration)
	{
		$currentDate = strtotime($this->current_date);
		$remaining_time = floor((($bid_duration - $currentDate) / 60));
		return $remaining_time;
	}
}