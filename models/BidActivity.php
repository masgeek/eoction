<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%tb_bid_activity}}".
 *
 * @property integer $PLACED_ID
 * @property integer $PRODUCT_ID
 * @property string $PRODUCT_SKU
 * @property integer $ACTIVITY_COUNT
 * @property string $BID_DATE
 *
 * @property Products $pRODUCT
 * @property Products $pRODUCTSKU
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
            [['PRODUCT_ID', 'PRODUCT_SKU', 'ACTIVITY_COUNT', 'BID_DATE'], 'required'],
            [['PRODUCT_ID', 'ACTIVITY_COUNT'], 'integer'],
            [['BID_DATE'], 'safe'],
            [['PRODUCT_SKU'], 'string', 'max' => 255],
            [['PRODUCT_SKU'], 'unique'],
            [['PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Products::className(), 'targetAttribute' => ['PRODUCT_ID' => 'PRODUCT_ID']],
            [['PRODUCT_SKU'], 'exist', 'skipOnError' => true, 'targetClass' => Products::className(), 'targetAttribute' => ['PRODUCT_SKU' => 'SKU']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'PLACED_ID' => 'Placed ID',
            'PRODUCT_ID' => 'Product ID',
            'PRODUCT_SKU' => 'Product SKU',
            'ACTIVITY_COUNT' => 'Bid Activity Count',
            'BID_DATE' => 'Bid Date',
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
    public function getPRODUCTSKU()
    {
        return $this->hasOne(Products::className(), ['SKU' => 'PRODUCT_SKU']);
    }
}
