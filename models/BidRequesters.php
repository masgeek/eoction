<?php

namespace app\models;

use Yii;
use app\module\users\models\Users;


/**
 * This is the model class for table "bid_requesters".
 *
 * @property integer $REQUESTER_ID
 * @property integer $REQUESTED_PRODUCT_ID
 * @property integer $REQUESTING_USER_ID
 * @property string $CUSTOMER_NOTES
 * @property integer $CUSTOMER_NOTIFIED
 * @property integer $REQUEST_ACCEPTED
 * @property string $CREATED
 * @property string $UPDATED
 *
 * @property BidRequests $rEQUESTEDPRODUCT
 * @property Users $rEQUESTINGUSER
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
