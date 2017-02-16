<?php
/**
 * Created by PhpStorm.
 * User: barsa
 * Date: 2/16/2017
 * Time: 2:40 PM
 */

namespace app\bidding;


class BidRequests extends \yii\base\Component
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
        return $this->Process($approved, $request_id);
    }

    /**
     * @param $approved
     * @param $request_id
     * @return mixed
     */
    private function Process($approved, $request_id)
    {
        if ($request_id == null) {
            //process everything
        } else {
            //process the specific request
        }
        return $approved;
    }
}