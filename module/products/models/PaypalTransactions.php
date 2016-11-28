<?php

namespace app\module\products\models;

use app\module\users\models\Users;
use Yii;

/**
 * This is the model class for table "{{%tb_paypal_transactions}}".
 *
 * @property integer $ID
 * @property integer $USER_ID
 * @property integer $PRODUCT_ID
 * @property string $PAYMENT_ID
 * @property string $HASH
 * @property integer $COMPLETE
 * @property string $CREATE_TIME
 * @property string $UPDATE_TIME
 *
 * @property Products $pRODUCT
 * @property Users $uSER
 */
class PaypalTransactions extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_paypal_transactions}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['USER_ID', 'PRODUCT_ID', 'PAYMENT_ID', 'HASH', 'CREATE_TIME'], 'required'],
            [['USER_ID', 'PRODUCT_ID', 'COMPLETE'], 'integer'],
            [['CREATE_TIME', 'UPDATE_TIME'], 'safe'],
            [['PAYMENT_ID', 'HASH'], 'string', 'max' => 100],
            [['PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Products::className(), 'targetAttribute' => ['PRODUCT_ID' => 'PRODUCT_ID']],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ID' => 'ID',
            'USER_ID' => 'User  ID',
            'PRODUCT_ID' => 'Product  ID',
            'PAYMENT_ID' => 'Payment  ID',
            'HASH' => 'Hash',
            'COMPLETE' => 'Complete',
            'CREATE_TIME' => 'Create  Time',
            'UPDATE_TIME' => 'Update  Time',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPRODUCT()
    {
        return $this->hasOne(Products::className(), ['PRODUCT_ID' => 'PRODUCT_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUSER()
    {
        return $this->hasOne(Users::className(), ['USER_ID' => 'USER_ID']);
    }
}
