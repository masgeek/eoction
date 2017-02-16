<?php
/**
 * Created by PhpStorm.
 * User: barsa
 * Date: 2/16/2017
 * Time: 2:40 PM
 */

namespace app\bidding;


use app\models\BidRequesters;
use yii\base\Component;

class BidRequests extends Component
{
    public $timezone;
    public $current_date;

    public function init()
    {
        parent::init();

        if ($this->timezone == null) {
            $this->timezone = 'GMT';
        }

        if ($this->current_date == null) {
            $this->current_date = date('Y-m-d  H:i:s');
        }

        //set the current timezone
        date_default_timezone_set($this->timezone);
    }

    public function ProcessRequests($approved, $request_id = null)
    {
        //$this->ProcessProcess($request_id, $approved ? 1 : 0);
        return $this->Process($approved ? 1 : 0, $request_id);
    }

    /**
     * @param $approved
     * @param $request_id
     * @return boolean
     */
    private function Process($approved, $request_id)
    {
        $result = false;
        $requests = new BidRequesters();
        if ($request_id == null) {
            //process everything
            $result = BidRequesters::updateAll(['REQUEST_ACCEPTED' => $approved], 'REQUEST_ACCEPTED=0');
        } else {
            //process the specific request
        }
        return $result;
    }
}