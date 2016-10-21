<?php

namespace app\module\products\models;

use Yii;
use app\module\users\models;

/**
 * This is the model class for table "{{%tb_product_bids}}".
 *
 * @property integer $BID_ID
 * @property integer $PRODUCT_ID
 * @property integer $USER_ID
 * @property string $BID_AMOUNT
 * @property string $BID_TIME
 * @property integer $BID_WON
 *
 * @property Products $PRODUCT
 * @property Users $USER
 */
class ProductBids extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_product_bids}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PRODUCT_ID', 'USER_ID', 'BID_AMOUNT'], 'required'],
            [['PRODUCT_ID', 'USER_ID', 'BID_WON'], 'integer'],
            [['BID_AMOUNT'], 'number'],
            [['BID_TIME'], 'safe'],
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
            'BID_ID' => 'Bid ID',
            'PRODUCT_ID' => 'Product ID',
            'USER_ID' => 'User ID',
            'BID_AMOUNT' => 'Bid Amount',
            'BID_TIME' => 'Bid Time',
            'BID_WON' => 'Bid Won',
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
