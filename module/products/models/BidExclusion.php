<?php

namespace app\module\products\models;

use Yii;

/**
 * This is the model class for table "bid_exclusion".
 *
 * @property int $EXCLUSION_ID
 * @property int $PRODUCT_ID
 * @property int $BIDDING_PERIOD
 * @property int $EXCLUSION_PERIOD
 * @property int $HIGH_DEMAND
 * @property string $DATE_CREATED
 * @property string $DATE_UPDATED
 *
 * @property FryProducts $pRODUCT
 */
class BidExclusion extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'bid_exclusion';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PRODUCT_ID', 'BIDDING_PERIOD', 'EXCLUSION_PERIOD'], 'required'],
            [['PRODUCT_ID', 'BIDDING_PERIOD', 'EXCLUSION_PERIOD', 'HIGH_DEMAND'], 'integer'],
            [['DATE_CREATED', 'DATE_UPDATED'], 'safe'],
            [['PRODUCT_ID'], 'unique'],
            [['PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => FryProducts::className(), 'targetAttribute' => ['PRODUCT_ID' => 'productid']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'EXCLUSION_ID' => 'Exclusion  ID',
            'PRODUCT_ID' => 'Product  ID',
            'BIDDING_PERIOD' => 'How long to include the item from bid (hours)',
            'EXCLUSION_PERIOD' => 'How long to exclude the item from bid (hours)',
            'HIGH_DEMAND' => 'If item is high demand do not exclude it',
            'DATE_CREATED' => 'Date  Created',
            'DATE_UPDATED' => 'Date  Updated',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPRODUCT()
    {
        return $this->hasOne(FryProducts::className(), ['productid' => 'PRODUCT_ID']);
    }
}
