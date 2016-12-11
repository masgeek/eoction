<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 12/11/2016
 * Time: 6:55 PM
 */

namespace app\components;


use app\module\users\models\Countries;

class AccountManager
{

    public static function GetCountryList()
    {
        $list = Countries::findAll();

        return $list;
    }
}