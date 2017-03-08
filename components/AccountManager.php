<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 12/11/2016
 * Time: 6:55 PM
 */

namespace app\components;


use app\bidding\ActiveBids;
use app\bidding\BidManager;
use app\module\users\models\Countries;
use app\module\users\models\Timezones;
use app\module\users\models\UserAddress;
use app\module\users\models\UserRecovery;
use app\module\users\models\Users;
use yii\base\Security;
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
        $address = UserAddress::find(['USER_ID' => $user_id])->all();
        if ($address != null) {
            return true;
        }

        return false;
    }

    /**
     * gets a users address
     * @param $user_id
     * @param string $address_type
     * @return static
     */
    public static function GetUserAddress($user_id, $address_type = null, $return_country = false)
    {
        $addressInfo = UserAddress::findOne([
            'USER_ID' => $user_id,
            //'ADDRESS_TYPE' => $address_type //start with billing address
        ]);
        if ($return_country && $addressInfo != null) {
            return $addressInfo->COUNTRY;
        }
        return $addressInfo;
    }

    public function GenerateRecoveryToken($user_id)
    {
        $sec = new Security();
        $active = new ActiveBids();
        $time = new TimeComponent();

        //FryProducts::updateAllCounters(['stock_level' => $items_to_reduce], "productid=$product_id");
        $token = $sec->generateRandomString(); //generateRandomKey() . '_' . time();;
        //Users::updateAll(['ACCOUNT_ACCESS_TOKEN' => $token], ['USER_ID' => $user_id]);

        $model = new UserRecovery();
        $model->USER_ID = $user_id;
        $model->RECOVERY_TOKEN = $token;
        $model->EXPIRES = $time->ComputeExpiryDuration(3);


        if ($model->save()) {
            return $time->ComputeExpiryDuration($model->EXPIRES) . $model->RECOVERY_TOKEN;
        } else {
            var_dump($model->getErrors());
        }
    }
}