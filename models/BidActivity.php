<?php

namespace app\models;

use app\module\products\models\Products;
use app\module\users\models\Users;
use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "{{%tb_bid_activity}}".
 *
 * @property integer $ACTIVITY_ID
 * @property integer $PRODUCT_ID
 * @property integer $LAST_BIDDING_USER_ID
 * @property string $PRODUCT_SKU
 * @property integer $ACTIVITY_COUNT
 * @property string $BID_DATE
 *
 * @property Products $pRODUCT
 * @property Products $pRODUCTSKU
 * @property Users $lASTBIDDINGUSER
 */
class BidActivity extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_bid_activity}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PRODUCT_ID', 'LAST_BIDDING_USER_ID', 'PRODUCT_SKU', 'BID_DATE'], 'required'],
            [['PRODUCT_ID', 'LAST_BIDDING_USER_ID', 'ACTIVITY_COUNT'], 'integer'],
            [['BID_DATE'], 'safe'],
            [['PRODUCT_SKU'], 'string', 'max' => 255],
            [['PRODUCT_SKU'], 'unique'],
            [['PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Products::className(), 'targetAttribute' => ['PRODUCT_ID' => 'PRODUCT_ID']],
            [['PRODUCT_SKU'], 'exist', 'skipOnError' => true, 'targetClass' => Products::className(), 'targetAttribute' => ['PRODUCT_SKU' => 'SKU']],
            [['LAST_BIDDING_USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['LAST_BIDDING_USER_ID' => 'USER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ACTIVITY_ID' => 'Activity ID',
            'PRODUCT_ID' => 'Product ID',
            'LAST_BIDDING_USER_ID' => 'Last bidding user',
            'PRODUCT_SKU' => 'Product SKU',
            'ACTIVITY_COUNT' => 'Bid Activity Count',
            'BID_DATE' => 'Bid  Date',
        ];
    }

    public function beforeValidate()
    {//auto add the date before validate
        $date = new Expression('NOW()');
        if (parent::beforeValidate()) {
            $this->BID_DATE = $date;
            return true;
        }
        return false;
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
    public function getPRODUCTSKU()
    {
        return $this->hasOne(Products::className(), ['SKU' => 'PRODUCT_SKU']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLASTBIDDINGUSER()
    {
        return $this->hasOne(Users::className(), ['USER_ID' => 'LAST_BIDDING_USER_ID']);
    }
}
