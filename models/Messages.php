<?php

namespace app\models;

use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "messages".
 *
 * @property int $REQUESTER_ID
 * @property string $RECIPIENT Recipient could be phone or email
 * @property string $MESSAGE Message body
 * @property string $CHANNEL Could be SMS, EMAIL orPUSH
 * @property int $MESSAGE_SENT Request Accepted
 * @property string $CREATED Date Added
 * @property string $UPDATED Date Sent
 */
class Messages extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'messages';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['RECIPIENT'], 'required'],
            [['MESSAGE'], 'string'],
            [['MESSAGE_SENT'], 'integer'],
            [['CREATED', 'UPDATED'], 'safe'],
            [['RECIPIENT'], 'string', 'max' => 40],
            [['CHANNEL'], 'string', 'max' => 5],
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
                //$this->DATE_CREATED = $date; //@TODO edit to mach data field columns
            }
            //$this->DATE_UPDATED = $date; //@TODO edit to mach data field columns
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
            'RECIPIENT' => 'Recipient could be phone or email',
            'MESSAGE' => 'Message body',
            'CHANNEL' => 'Could be SMS, EMAIL orPUSH',
            'MESSAGE_SENT' => 'Request Accepted',
            'CREATED' => 'Date Added',
            'UPDATED' => 'Date Sent',
        ];
    }
}
