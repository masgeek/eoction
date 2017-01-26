<?php

namespace app\models;

use app\module\users\models\Users;
use Yii;

/**
 * This is the model class for table "{{%bid_requesters}}".
 *
 * @property integer $REQUESTER_ID
 * @property integer $REQUEST_ID
 * @property integer $USER_ID
 * @property string $CUSTOMER_NOTES
 * @property integer $CUSTOMER_NOTIFIED
 * @property integer $REQUEST_ACCEPTED
 * @property string $CREATED
 * @property string $UPDATED
 *
 * @property BidRequests $rEQUEST
 * @property Users $uSER
 */
class BidRequesters extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%bid_requesters}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['REQUEST_ID', 'USER_ID'], 'required'],
            [['REQUEST_ID', 'USER_ID', 'CUSTOMER_NOTIFIED', 'REQUEST_ACCEPTED'], 'integer'],
            [['CUSTOMER_NOTES'], 'string'],
            [['CREATED', 'UPDATED'], 'safe'],
            [['REQUEST_ID'], 'exist', 'skipOnError' => true, 'targetClass' => BidRequests::className(), 'targetAttribute' => ['REQUEST_ID' => 'REQUEST_ID']],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'REQUESTER_ID' => 'Requester  ID',
            'REQUEST_ID' => 'Request ID',
            'USER_ID' => 'Requested By',
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
    public function getREQUEST()
    {
        return $this->hasOne(BidRequests::className(), ['REQUEST_ID' => 'REQUEST_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUSER()
    {
        return $this->hasOne(Users::className(), ['USER_ID' => 'USER_ID']);
    }
}
