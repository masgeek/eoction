<?php
/**
 * Created by PhpStorm.
 * User: barsa
 * Date: 3/8/2017
 * Time: 1:44 PM
 */

namespace app\components;


class TimeComponent
{

    /**
     * get the timestamp of the expiry period
     * @param int $duration duration of the expiry
     * @param string $format format in minutes days weeks or months
     * @return false|int
     */
    public function ComputeExpiryDuration($duration, $format = 'minutes')
    {

        $current_date = date('Y-m-d  H:i:s');

        $bidDuration = strtotime($current_date . "+$duration $format");

        return $bidDuration;
    }

    /**
     * @param int $maximum_duration in minutes
     * @return int
     */
    public
    function GetRemainingDuration($maximum_duration)
    {
        $current_date = strtotime(date('Y-m-d  H:i:s')); //convert to strtotime
        (int)$remaining_time = round((($maximum_duration - $current_date) / 60), PHP_ROUND_HALF_DOWN);

        \Yii::info("Duration $remaining_time remaining", 'activebids'); //log to an exclusions log file;

        return $remaining_time;
    }
}