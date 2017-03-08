<?php

namespace app\module\users\models;

/**
 * This is the model class for table "{{%user_recovery}}".
 *
 * @property int $RECOVERY_ID
 * @property int $USER_ID
 * @property string $RECOVERY_TOKEN
 * @property string $REQUESTING_IP
 * @property int $EXPIRES
 *
 * @property Users $uSER
 */
class UserRecovery extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%user_recovery}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['USER_ID', 'RECOVERY_TOKEN', 'EXPIRES'], 'required'],
            [['USER_ID', 'EXPIRES'], 'integer'],
            [['RECOVERY_TOKEN'], 'string', 'max' => 100],
            [['REQUESTING_IP'], 'string', 'max' => 40],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'RECOVERY_ID' => 'Recovery  ID',
            'USER_ID' => 'User  ID',
            'RECOVERY_TOKEN' => 'Recovery  Token',
            'REQUESTING_IP' => 'Requesting  Ip',
            'EXPIRES' => 'Expires',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUSER()
    {
        return $this->hasOne(Users::className(), ['USER_ID' => 'USER_ID']);
    }
}
