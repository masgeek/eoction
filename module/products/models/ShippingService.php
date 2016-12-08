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
            [['PAYPAL_TRANS_ID', 'REQUESTED_SERVICE', 'SERVICE_CODE'], 'required'],
            [['PAYPAL_TRANS_ID'], 'integer'],
            [['CREATED', 'UPDATED'], 'safe'],
            [['REQUESTED_SERVICE'], 'string', 'max' => 100],
            [['CARRIER_CODE'], 'string', 'max' => 150],
            [['SERVICE_CODE', 'PACKAGE_CODE'], 'string', 'max' => 200],
            [['PAYPAL_TRANS_ID'], 'exist', 'skipOnError' => true, 'targetClass' => PaypalTransactions::className(), 'targetAttribute' => ['PAYPAL_TRANS_ID' => 'ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'SERVICE_ID' => 'Service  ID',
            'PAYPAL_TRANS_ID' => 'Paypal  Trans  ID',
            'REQUESTED_SERVICE' => 'Requested  Service',
            'CARRIER_CODE' => 'Carrier  Code',
            'SERVICE_CODE' => 'Service  Code',
            'PACKAGE_CODE' => 'Package  Code',
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
