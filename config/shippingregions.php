<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 2/28/2017
 * Time: 19:31
 */

return [
    'class' => 'app\components\ShippingRegions',
    'additional_shipping_charge' => 2,
    'default_package' => [
        'package' => 'package'
    ],
    'default_service' => 'usps_first_class_mail_international',
    'us_region_shipping_cost' => [
        'usps_first_class_mail' => 6,
        'usps_priority_mail' => 10
    ],
    'canada_region_shipping_cost' => [
        'usps_first_class_mail_international' => 14
    ],
    'other_region_shipping_cost' => [
        'usps_first_class_mail_international' => 54
    ]
];