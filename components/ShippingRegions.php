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
    private $region_package;
    private $region_shipping_cost;

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
    public function shippingpackage($country_code = 'OTHER')
    {
        return $this->GetRegionShippingPackage($country_code);
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
                    $this->region_shipping_cost = $this->us_region_shipping_cost[$this->default_package];
                    break;
                case 'CA':
                    $this->region_shipping_cost = $this->canada_region_shipping_cost[$this->default_package];
                    break;
                case 'OTHER':
                default:
                    $this->region_shipping_cost = $this->other_region_shipping_cost[$this->default_package];
                    break;
            }
        } catch (\ErrorException $ex) {
            throw new \OutOfBoundsException("Invalid package type '{$this->default_package}'");
        }
        return $this->region_shipping_cost;
    }


    /**
     * @param $country_code
     * @return mixed
     */
    protected function GetRegionShippingPackage($country_code)
    {
        return $this->region_package = 'Priority mail';
    }
}