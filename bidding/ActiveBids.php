<?php
/**
 * Created by PhpStorm.
 * User: barsa
 * Date: 2/7/2017
 * Time: 1:18 PM
 */

namespace app\bidding;

use yii\base\Component;
use yii\base\InvalidConfigException;

class ActiveBids extends Component
{

	public $maximum_items;

	public function init()
	{
		parent::init();
		if ($this->maximum_items == null || $this->maximum_items <= 0) {
			throw new InvalidConfigException('Maximum items should equal to or greater than 1');
		}
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
$model = new ActiveBids()
	}
}