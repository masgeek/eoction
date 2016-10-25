<?php

namespace app\module\users\user\models;

use Yii;
use app\module\products\models;

/**
 * This is the model class for table "{{%tb_users}}".
 *
 * @property integer $USER_ID
 * @property string $USERNAME
 * @property string $FULL_NAMES
 * @property string $EMAIL_ADDRESS
 * @property string $LOGIN_ID
 * @property string $PHONE_NO
 * @property string $TIMEZONE
 * @property string $COUNTRY
 * @property integer $SOCIAL_ID
 * @property string $DATE_CREATED
 * @property string $DATE_UPDATED
 *
 * @property HashTable[] $HashTables
 * @property ProductBids[] $ProductBids
 */
class Users extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_users}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['USERNAME', 'FULL_NAMES'], 'required'],
            [['SOCIAL_ID'], 'integer'],
            [['DATE_CREATED', 'DATE_UPDATED'], 'safe'],
            [['USERNAME'], 'string', 'max' => 20],
            [['FULL_NAMES', 'EMAIL_ADDRESS'], 'string', 'max' => 255],
            [['LOGIN_ID'], 'string', 'max' => 300],
            [['PHONE_NO'], 'string', 'max' => 30],
            [['TIMEZONE', 'COUNTRY'], 'string', 'max' => 10],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'USER_ID' => 'User ID',
            'USERNAME' => 'Username',
            'FULL_NAMES' => 'Full Names',
            'EMAIL_ADDRESS' => 'Email Address',
            'LOGIN_ID' => 'Login ID',
            'PHONE_NO' => 'Phone No',
            'TIMEZONE' => 'Timezone',
            'COUNTRY' => 'Country',
            'SOCIAL_ID' => 'Social ID',
            'DATE_CREATED' => 'Date Created',
            'DATE_UPDATED' => 'Date Updated',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTbHashTables()
    {
        return $this->hasMany(HashTable::className(), ['USER_ID' => 'USER_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTbProductBids()
    {
        return $this->hasMany(ProductBids::className(), ['USER_ID' => 'USER_ID']);
    }
}
