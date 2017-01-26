<?php

namespace app\models;

use Yii;
use app\module\products\models\FryProducts;


/**
 * This is the model class for table "bid_requests".
 *
 * @property integer $REQUESTED_PRODUCT_ID
 * @property string $CREATED
 * @property string $UPDATED
 *
 * @property BidRequesters[] $bidRequesters
 * @property FryProducts $rEQUESTEDPRODUCT
 */
class BidRequests extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'bid_requests';
    }

    public static function primaryKey()
    {
        return 'REQUESTED_PRODUCT_ID'; //override the primary key
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['REQUESTED_PRODUCT_ID'], 'required'],
            [['REQUESTED_PRODUCT_ID'], 'integer'],
            [['CREATED', 'UPDATED'], 'safe'],
            [['REQUESTED_PRODUCT_ID'], 'unique'],
            [['REQUESTED_PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => FryProducts::className(), 'targetAttribute' => ['REQUESTED_PRODUCT_ID' => 'productid']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'REQUESTED_PRODUCT_ID' => 'Product ID',
            'CREATED' => 'Date Created',
            'UPDATED' => 'Date Updated',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBidRequesters()
    {
        return $this->hasMany(BidRequesters::className(), ['REQUESTED_PRODUCT_ID' => 'REQUESTED_PRODUCT_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getREQUESTEDPRODUCT()
    {
        return $this->hasOne(FryProducts::className(), ['productid' => 'REQUESTED_PRODUCT_ID']);
    }
}
