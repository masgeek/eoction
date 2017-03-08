<?php

namespace app\models;

use app\module\products\models\FryProducts;
use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "bid_requests".
 *
 * @property int $REQUESTED_PRODUCT_ID Request Product ID
 * @property string $CREATED Date Created
 * @property string $UPDATED Date Updated
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

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['CREATED', 'UPDATED'], 'safe'],
            [['REQUESTED_PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => FryProducts::className(), 'targetAttribute' => ['REQUESTED_PRODUCT_ID' => 'productid']],
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
                $this->UPDATED = $date; //@TODO edit to mach data field columns
            }
            $this->CREATED = $date; //@TODO edit to mach data field columns
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
            'REQUESTED_PRODUCT_ID' => 'Request Product ID',
            'CREATED' => 'Date Created',
            'UPDATED' => 'Date Updated',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBidRequesters()
    {
        return $this->hasMany(BidRequesters::className(), ['REQUESTED_ID' => 'REQUESTED_PRODUCT_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getREQUESTEDPRODUCT()
    {
        return $this->hasOne(FryProducts::className(), ['productid' => 'REQUESTED_PRODUCT_ID']);
    }
}
