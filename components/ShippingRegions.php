<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2017/01/31
 * Time: 14:39
 */

namespace app\components;


use app\module\products\models\ShippingService;
use yii\base\Component;

class ShippingRegions extends Component
{
    private $region_service = [];
    private $region_shipping_cost;

    public $default_service;
    public $default_package;
    public $us_region_shipping_cost;
    public $canada_region_shipping_cost;
    public $other_region_shipping_cost;

    public function init()
    {
        parent::init();
    }

    /**
     * pass country code and get region shipping cost
     * @param $country_code
     * @return mixed
     */
    public function shippingcost($country_code = 'OTHER')
    {
        return $this->GetRegionShippingCost($country_code);
    }

    /**
     * @param $country_code
     * @return mixed
     */
    public function shippingservice($country_code = 'OTHER')
    {
        return $this->GetRegionShippingService($country_code);
    }

    public function shippingpackage()
    {
        return $this->default_package;
    }
    /* Private functions */


    /**
     * @param $country_code
     * @return mixed
     */
    protected function GetRegionShippingCost($country_code)
    {
        try {
            switch ($country_code) {
                case 'US':
                case 'USA':
                    $this->default_service = ShippingPackages::USPS_FIRST_CLASS_MAIL;
                    $this->region_shipping_cost = $this->us_region_shipping_cost[$this->default_service];
                    break;
                case 'CA':
                    $this->region_shipping_cost = $this->canada_region_shipping_cost[$this->default_service];
                    break;
                case 'OTHER':
                default:
                    $this->region_shipping_cost = $this->other_region_shipping_cost[$this->default_service];
                    break;
            }
        } catch (\ErrorException $ex) {
            throw new \OutOfBoundsException("Invalid service type '{$this->default_service}'");
        }
        return $this->region_shipping_cost;
    }


    /**
     * @param $country_code
     * @return mixed
     */
    protected function GetRegionShippingService($country_code)
    {
        try {
            switch ($country_code) {
                case 'US':
                case 'USA':
                    $this->region_service = [
                        ShippingPackages::USPS_FIRST_CLASS_MAIL => ShippingPackages::USPS_FIRST_CLASS_MAIL,
                        ShippingPackages::USPS_PRIORITY_MAIL => ShippingPackages::USPS_PRIORITY_MAIL
                    ];
                    break;
                case 'CA':
                case 'OTHER':
                default:
                    $this->region_service = [ShippingPackages::USPS_FIRST_CLASS_MAIL_INTERNATIONAL => ShippingPackages::USPS_FIRST_CLASS_MAIL_INTERNATIONAL];
                    break;
            }
        } catch (\ErrorException $ex) {
            throw new \OutOfBoundsException("Invalid package type '{$this->default_service}'");
        }

        return $this->region_service;
    }
}