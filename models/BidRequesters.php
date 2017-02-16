<?php

namespace app\models;

use app\module\users\models\Users;
use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "bid_requesters".
 *
 * @property int $REQUESTER_ID
 * @property int $REQUESTED_PRODUCT_ID Request ID
 * @property int $REQUESTING_USER_ID Requested By
 * @property string $CUSTOMER_NOTES Comments
 * @property int $CUSTOMER_NOTIFIED Notified
 * @property int $REQUEST_ACCEPTED Request Accepted
 * @property string $CREATED Date Created
 * @property string $UPDATED Date Updated
 *
 * @property BidRequests $rEQUESTEDPRODUCT
 * @property TbUsers $rEQUESTINGUSER
 */
class BidRequesters extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'bid_requesters';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['REQUESTED_PRODUCT_ID', 'REQUESTING_USER_ID'], 'required'],
            [['REQUESTED_PRODUCT_ID', 'REQUESTING_USER_ID', 'CUSTOMER_NOTIFIED', 'REQUEST_ACCEPTED'], 'integer'],
            [['CUSTOMER_NOTES'], 'string'],
            [['CREATED', 'UPDATED'], 'safe'],
            [['REQUESTED_PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => BidRequests::className(), 'targetAttribute' => ['REQUESTED_PRODUCT_ID' => 'REQUESTED_PRODUCT_ID']],
            [['REQUESTING_USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['REQUESTING_USER_ID' => 'USER_ID']],
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
                $this->CREATED = $date; //@TODO edit to mach data field columns
            }
            $this->UPDATED = $date; //@TODO edit to mach data field columns
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
            'REQUESTER_ID' => 'Requester  ID',
            'REQUESTED_PRODUCT_ID' => 'Request ID',
            'REQUESTING_USER_ID' => 'Requested By',
            'CUSTOMER_NOTES' => 'Comments',
            'CUSTOMER_NOTIFIED' => 'Notified',
            'REQUEST_ACCEPTED' => 'Request Accepted',
            'CREATED' => 'Date Created',
            'UPDATED' => 'Date Updated',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getREQUESTEDPRODUCT()
    {
        return $this->hasOne(BidRequests::className(), ['REQUESTED_PRODUCT_ID' => 'REQUESTED_PRODUCT_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getREQUESTINGUSER()
    {
        return $this->hasOne(Users::className(), ['USER_ID' => 'REQUESTING_USER_ID']);
    }
}
