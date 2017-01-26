<?php

namespace app\models;

use app\module\products\models\FryProducts;
use Yii;

/**
 * This is the model class for table "{{%bid_requests}}".
 *
 * @property integer $REQUEST_ID
 * @property integer $PRODUCT_ID
 * @property string $CREATED
 * @property string $UPDATED
 *
 * @property BidRequesters[] $bidRequesters
 * @property FryProducts $pRODUCT
 */
class BidRequests extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%bid_requests}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PRODUCT_ID'], 'required'],
            [['PRODUCT_ID'], 'integer'],
            [['CREATED', 'UPDATED'], 'safe'],
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
            'REQUEST_ID' => 'Request ID',
            'PRODUCT_ID' => 'Product ID',
            'CREATED' => 'Date Created',
            'UPDATED' => 'Date Updated',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBidRequesters()
    {
        return $this->hasMany(BidRequesters::className(), ['REQUEST_ID' => 'REQUEST_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPRODUCT()
    {
        return $this->hasOne(FryProducts::className(), ['productid' => 'PRODUCT_ID']);
    }
}
