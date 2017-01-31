<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2017/01/31
 * Time: 14:39
 */

namespace app\components;

use yii\base\Component;

class ShippingRegions extends Component
{
    public $region_package;
    public $package_type;
    public $region_shipping_cost;

    public $us_region_shipping_cost;
    public $canada_region_shipping_cost;
    public $other_region_shipping_cost;

    public function init()
    {
        parent::init();
        $this->package_type = 'normal';
    }

    /**
     * pass country code and get region shipping cost
     * @param $country_code
     * @return mixed
     */
    public function shippingcost($country_code)
    {
        return $this->GetRegionShippingCost($country_code);
    }

    /**
     * @param $country_code
     * @return mixed
     */
    public function shippingpackage($country_code)
    {
        return $this->GetRegionShippingPackage($country_code);
    }

    /* Private functions */

    /**
     * @param $country_code
     * @return mixed
     */
    private function GetRegionShippingCost($country_code)
    {
        switch ($country_code) {
            case 'US':
            case 'USA':
                $this->region_shipping_cost = $this->us_region_shipping_cost[$this->package_type];
                break;
            case 'CA':
                $this->region_shipping_cost = $this->canada_region_shipping_cost[$this->package_type];
                break;
            default:
                $this->region_shipping_cost = $this->other_region_shipping_cost[$this->package_type];
                break;
        }
        return $this->region_shipping_cost;
    }


    /**
     * @param $country_code
     * @return mixed
     */
    private function GetRegionShippingPackage($country_code)
    {
        return $this->region_package;
    }
}