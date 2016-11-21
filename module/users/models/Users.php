<?php

namespace app\module\users\models;

use Yii;

/**
 * This is the model class for table "{{%tb_users}}".
 *
 * @property integer $USER_ID
 * @property string $FULL_NAMES
 * @property string $EMAIL_ADDRESS
 * @property string $USERNAME
 * @property string $PASSWORD_HASH
 * @property string $ACCOUNT_AUTH_KEY
 * @property string $PHONE_NO
 * @property string $TIMEZONE
 * @property string $COUNTRY
 * @property integer $SOCIAL_ID
 * @property integer $STATUS
 * @property string $DATE_CREATED
 * @property string $DATE_UPDATED
 *
 * @property TbHashTable[] $tbHashTables
 * @property TbItemsCart[] $tbItemsCarts
 * @property TbItemsWishlist[] $tbItemsWishlists
 * @property TbProductBids[] $tbProductBids
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
            [['FULL_NAMES', 'EMAIL_ADDRESS', 'USERNAME', 'PASSWORD_HASH'], 'required'],
            [['SOCIAL_ID', 'STATUS'], 'integer'],
            [['DATE_CREATED', 'DATE_UPDATED'], 'safe'],
            [['FULL_NAMES', 'EMAIL_ADDRESS', 'PASSWORD_HASH', 'ACCOUNT_AUTH_KEY'], 'string', 'max' => 255],
            [['USERNAME'], 'string', 'max' => 20],
            [['PHONE_NO'], 'string', 'max' => 30],
            [['TIMEZONE'], 'string', 'max' => 10],
            [['COUNTRY'], 'string', 'max' => 15],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'USER_ID' => 'User  ID',
            'FULL_NAMES' => 'Full  Names',
            'EMAIL_ADDRESS' => 'Email  Address',
            'USERNAME' => 'Defaults to email address at first',
            'PASSWORD_HASH' => 'Password  Hash',
            'ACCOUNT_AUTH_KEY' => 'Account  Auth  Key',
            'PHONE_NO' => 'Phone  No',
            'TIMEZONE' => 'Timezone',
            'COUNTRY' => 'Country',
            'SOCIAL_ID' => 'Social  ID',
            'STATUS' => 'Active or inactive',
            'DATE_CREATED' => 'Date  Created',
            'DATE_UPDATED' => 'Date  Updated',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTbHashTables()
    {
        return $this->hasMany(TbHashTable::className(), ['USER_ID' => 'USER_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTbItemsCarts()
    {
        return $this->hasMany(TbItemsCart::className(), ['USER_ID' => 'USER_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTbItemsWishlists()
    {
        return $this->hasMany(TbItemsWishlist::className(), ['USER_ID' => 'USER_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTbProductBids()
    {
        return $this->hasMany(TbProductBids::className(), ['USER_ID' => 'USER_ID']);
    }
}
