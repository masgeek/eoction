<?php

namespace app\module\products\models;

use Yii;

/**
 * This is the model class for table "{{%orders}}".
 *
 * @property integer $orderId
 * @property string $orderNumber
 * @property string $orderKey
 * @property string $orderDate
 * @property string $createDate
 * @property string $modifyDate
 * @property string $paymentDate
 * @property string $shipByDate
 * @property string $orderStatus
 * @property integer $customerId
 * @property string $customerUsername
 * @property string $customerEmail
 *
 * @property ShippingOrders[] $shippingOrders
 */
class Orders extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%orders}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['orderNumber', 'orderKey', 'orderStatus', 'customerUsername', 'customerEmail'], 'required'],
            [['orderDate', 'createDate', 'modifyDate','customerId', 'paymentDate', 'shipByDate'], 'safe'],
            [['customerId'], 'integer'],
            [['orderNumber', 'orderKey', 'customerUsername', 'customerEmail'], 'string', 'max' => 100],
            [['orderStatus'], 'string', 'max' => 20],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'orderId' => 'Order ID',
            'orderNumber' => 'Order Number',
            'orderKey' => 'Order Key',
            'orderDate' => 'Order Date',
            'createDate' => 'Create Date',
            'modifyDate' => 'Modify Date',
            'paymentDate' => 'Payment Date',
            'shipByDate' => 'Ship By Date',
            'orderStatus' => 'Order Status',
            'customerId' => 'Customer ID',
            'customerUsername' => 'Customer Username',
            'customerEmail' => 'Customer Email',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getShippingOrders()
    {
        return $this->hasMany(ShippingOrders::className(), ['orderId' => 'orderId']);
    }
}
