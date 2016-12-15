<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 12/11/2016
 * Time: 6:55 PM
 */

namespace app\components;


use app\module\users\models\Countries;
use app\module\users\models\Timezones;
use yii\helpers\ArrayHelper;

class AccountManager
{

    public static function GetCountryList()
    {
        $list = Countries::find()->select(['COUNTRY_CODE', 'COUNTRY_NAME'])->asArray()->all();

        $country_list = ArrayHelper::map($list, 'COUNTRY_CODE', 'COUNTRY_NAME');
        return $country_list;
    }

    public static function GetTimeZones()
    {
        /* @var $countryModel Countries */
        /* @var $timezone Timezones */

        $dat = Countries::find()
            ->joinWith(['timezones'])
            ->select(['*'])
            ->groupBy('timezones.TIMEZONE')
            //->orderBy(['cnt' => 'DESC'])
            ->all();
        $countryModel = Countries::find()->all();

        foreach ($dat as $countryModel) {
            ///var_dump($countryModel->timezones);
            $timezones = $countryModel->timezones;
            foreach ($timezones as $timezone) {
                $timezone_list[$timezone->TIMEZONE_ID] = "(GMT+{$timezone->GMT_OFFSET}) {$timezone->TIMEZONE}";
            }

        };

        return $timezone_list;
    }

    public static function AddressProvided($user_id)
    {
        return false;
    }
}