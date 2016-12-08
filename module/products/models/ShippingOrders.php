<?php

namespace app\module\products\models;

use Yii;

/**
 * This is the model class for table "{{%shipping_orders}}".
 *
 * @property integer $id
 * @property integer $orderId
 * @property string $name
 * @property string $company
 * @property string $street1
 * @property string $street2
 * @property string $street3
 * @property string $city
 * @property string $state
 * @property string $postalCode
 * @property string $country
 * @property string $phone
 * @property string $residential
 * @property string $addressVerified
 * @property string $addressType
 *
 * @property Orders $order
 */
class ShippingOrders extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%shipping_orders}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['orderId', 'name', 'company', 'city', 'postalCode', 'country', 'phone', 'addressType'], 'required'],
            [['orderId'], 'integer'],
            [['company'], 'string'],
            [['name'], 'string', 'max' => 100],
            [['street1', 'street2', 'street3'], 'string', 'max' => 200],
            [['city', 'state', 'postalCode', 'phone'], 'string', 'max' => 50],
            [['country', 'addressVerified', 'addressType'], 'string', 'max' => 20],
            [['residential'], 'string', 'max' => 10],
            [['orderId'], 'exist', 'skipOnError' => true, 'targetClass' => Orders::className(), 'targetAttribute' => ['orderId' => 'orderId']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'orderId' => 'Order ID',
            'name' => 'Name',
            'company' => 'Company',
            'street1' => 'Street1',
            'street2' => 'Street2',
            'street3' => 'Street3',
            'city' => 'City',
            'state' => 'State',
            'postalCode' => 'Postal Code',
            'country' => 'Country',
            'phone' => 'Phone',
            'residential' => 'Residential',
            'addressVerified' => 'Address Verified',
            'addressType' => 'Address Type',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOrder()
    {
        return $this->hasOne(Orders::className(), ['orderId' => 'orderId']);
    }
}
