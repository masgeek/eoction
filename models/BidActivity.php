<?php

namespace app\models;

use app\module\products\models\FryProducts;
use app\module\users\models\Users;
use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "{{%tb_bid_activity}}".
 *
 * @property int $ACTIVITY_ID
 * @property int $PRODUCT_ID Product ID
 * @property int $LAST_BIDDING_USER_ID Last bidding user
 * @property string $PRODUCT_SKU Product SKU
 * @property int $ACTIVITY_COUNT Bid Activity Count
 * @property string $BID_DATE Date of Bid
 *
 * @property FryProducts $pRODUCT
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
            [['PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => FryProducts::className(), 'targetAttribute' => ['PRODUCT_ID' => 'productid']],
            [['LAST_BIDDING_USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['LAST_BIDDING_USER_ID' => 'USER_ID']],
        ];
    }

    /**
    * @inheritdoc
    */
    public function beforeValidate()
    {
        $date = new Expression('NOW()');
        if (parent::beforeValidate()) {
                $this->BID_DATE = $date;
                return true;
        }
        return false;
    }
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ACTIVITY_ID' => 'Activity  ID',
            'PRODUCT_ID' => 'Product ID',
            'LAST_BIDDING_USER_ID' => 'Last bidding user',
            'PRODUCT_SKU' => 'Product SKU',
            'ACTIVITY_COUNT' => 'Bid Activity Count',
            'BID_DATE' => 'Date of Bid',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPRODUCT()
    {
        return $this->hasOne(FryProducts::className(), ['productid' => 'PRODUCT_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLASTBIDDINGUSER()
    {
        return $this->hasOne(Users::className(), ['USER_ID' => 'LAST_BIDDING_USER_ID']);
    }
}
