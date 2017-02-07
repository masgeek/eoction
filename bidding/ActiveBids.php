<?php
/**
 * Created by PhpStorm.
 * User: barsa
 * Date: 2/7/2017
 * Time: 1:18 PM
 */

namespace app\bidding;

use yii\base\Component;

class ActiveBids extends Component
{

	public $maximum_items;

	public function init()
	{
		parent::init();
	}

	public function getBidItems($test)
	{
		return $this->maximum_items;
	}
}