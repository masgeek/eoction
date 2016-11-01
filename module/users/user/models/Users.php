<?php

namespace app\module\users\user\models;

use Yii;

/**
 * This is the model class for table "{{%tb_users}}".
 *
 * @property integer $USER_ID
 * @property string $USERNAME
 * @property string $FIRST_NAMES
 * @property string $LAST_NAME
 * @property string $EMAIL_ADDRESS
 * @property string $PASSWORD
 * @property string $PHONE_NO
 * @property string $TIMEZONE
 * @property string $COUNTRY
 * @property string $SOURCE_ID
 * @property string $DATE_CREATED
 * @property string $DATE_UPDATED
 *
 * @property HashTable[] $tbHashTables
 * @property ProductBids[] $tbProductBids
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
            [['USERNAME', 'FIRST_NAMES'], 'required'],
            [['DATE_CREATED', 'DATE_UPDATED'], 'safe'],
            [['USERNAME'], 'string', 'max' => 20],
            [['FIRST_NAMES', 'LAST_NAME'], 'string', 'max' => 100],
            [['EMAIL_ADDRESS'], 'string', 'max' => 255],
            [['PASSWORD'], 'string', 'max' => 400],
            [['PHONE_NO'], 'string', 'max' => 30],
            [['TIMEZONE', 'COUNTRY'], 'string', 'max' => 10],
            [['SOURCE_ID'], 'string', 'max' => 50],
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
            'FIRST_NAMES' => 'First Names',
            'LAST_NAME' => 'Last Name',
            'EMAIL_ADDRESS' => 'Email Address',
            'PASSWORD' => 'Password',
            'PHONE_NO' => 'Phone No',
            'TIMEZONE' => 'Timezone',
            'COUNTRY' => 'Country',
            'SOURCE_ID' => 'Source ID',
            'DATE_CREATED' => 'Date Created',
            'DATE_UPDATED' => 'Date Updated',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getHashTables()
    {
        return $this->hasMany(HashTable::className(), ['USER_ID' => 'USER_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductBids()
    {
        return $this->hasMany(ProductBids::className(), ['USER_ID' => 'USER_ID']);
    }
}
