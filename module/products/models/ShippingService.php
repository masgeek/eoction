<?php

namespace app\module\products\models;

use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "shipping_service".
 *
 * @property integer $SERVICE_ID
 * @property integer $PAYPAL_TRANS_ID
 * @property string $REQUESTED_SERVICE
 * @property string $SERVICE_DESC
 * @property string $CARRIER_CODE
 * @property string $SERVICE_CODE
 * @property string $PACKAGE_CODE
 * @property string $CREATED
 * @property string $UPDATED
 *
 * @property PaypalTransactions $pAYPALTRANS
 */
class ShippingService extends \yii\db\ActiveRecord
{
    //public $SERVICE_DESC;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'shipping_service';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PAYPAL_TRANS_ID', 'REQUESTED_SERVICE', 'SERVICE_CODE', 'SERVICE_DESC'], 'required'],
            [['PAYPAL_TRANS_ID'], 'integer'],
            [['PAYPAL_TRANS_ID'], 'unique'],
            [['CREATED', 'UPDATED'], 'safe'],
            [['REQUESTED_SERVICE'], 'string', 'max' => 100],
            [['CARRIER_CODE'], 'string', 'max' => 150],
            [['SERVICE_CODE', 'PACKAGE_CODE', 'SERVICE_DESC'], 'string', 'max' => 200],
            [['PAYPAL_TRANS_ID'], 'exist', 'skipOnError' => true, 'targetClass' => PaypalTransactions::className(), 'targetAttribute' => ['PAYPAL_TRANS_ID' => 'ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'SERVICE_ID' => 'Service ID',
            'PAYPAL_TRANS_ID' => 'PayPal Transaction ID',
            'REQUESTED_SERVICE' => 'Requested Service',
            'SERVICE_DESC' => 'Service Type',
            'CARRIER_CODE' => 'Carrier Type',
            'SERVICE_CODE' => 'Service Type',
            'PACKAGE_CODE' => 'Package Type',
            'CREATED' => 'Created',
            'UPDATED' => 'Updated',
        ];
    }


    /**
     * @inheritdoc
     */
    public function beforeSave($insert)
    {
        $date = new Expression('NOW()');
        if (parent::beforeSave($insert)) {
            if ($this->isNewRecord) {
                $this->CREATED = $date;
            }
            $this->UPDATED = $date;
            return true;
        }
        return false;
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPAYPALTRANS()
    {
        return $this->hasOne(PaypalTransactions::className(), ['ID' => 'PAYPAL_TRANS_ID']);
    }
}
