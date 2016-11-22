<?php

namespace app\module\users\models;

use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "{{%tb_users}}".
 *
 * @property integer $USER_ID
 * @property string $FULL_NAMES
 * @property string $EMAIL_ADDRESS
 * @property string $PASSWORD_HASH
 * @property string $REPEAT_PASSWORD
 * @property string $CHANGE_PASS
 * @property string $ACCOUNT_ACCESS_TOKEN
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
    public $REPEAT_PASSWORD;
    public $CHANGE_PASS;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_users}}';
    }

    public function scenarios()
    {
        $scenarios = parent::scenarios();
        //$scenarios['update'] = [];//Scenario Values Only Accepted
        $scenarios['signup'] = ['PASSWORD_HASH', 'REPEAT_PASSWORD', 'FULL_NAMES', 'EMAIL_ADDRESS'];//Scenario Values Only Accepted
        return $scenarios;
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['FULL_NAMES', 'EMAIL_ADDRESS'], 'required'],
            [['PASSWORD_HASH', 'REPEAT_PASSWORD'], 'required', 'on' => 'signup'],
            [['EMAIL_ADDRESS'], 'unique'],
            [['EMAIL_ADDRESS'], 'email'],
            [['SOCIAL_ID', 'STATUS'], 'integer'],
            [['CHANGE_PASS'], 'boolean'],
            [['DATE_CREATED', 'DATE_UPDATED'], 'safe'],
            [['FULL_NAMES', 'EMAIL_ADDRESS', 'PASSWORD_HASH', 'REPEAT_PASSWORD', 'ACCOUNT_ACCESS_TOKEN', 'ACCOUNT_AUTH_KEY'], 'string', 'max' => 255],
            [['PHONE_NO'], 'string', 'max' => 30],
            [['TIMEZONE'], 'string', 'max' => 10],
            [['COUNTRY'], 'string', 'max' => 15],
            ['REPEAT_PASSWORD', 'compare', 'compareAttribute' => 'PASSWORD_HASH', 'skipOnEmpty' => false, 'message' => "Passwords don't match"] //password confirmation rule
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'USER_ID' => 'User ID',
            'FULL_NAMES' => 'Full Names',
            'EMAIL_ADDRESS' => 'Email Address',
            'PASSWORD_HASH' => 'Password',
            'REPEAT_PASSWORD' => 'Confirm Password',
            'ACCOUNT_ACCESS_TOKEN' => 'Account Access Token',
            'ACCOUNT_AUTH_KEY' => 'Account Auth Key',
            'PHONE_NO' => 'Phone Number',
            'TIMEZONE' => 'Timezone',
            'COUNTRY' => 'Country',
            'SOCIAL_ID' => 'Social ID',
            'STATUS' => 'Active or inactive',
            'DATE_CREATED' => 'Date Created',
            'DATE_UPDATED' => 'Date Updated',
        ];
    }

    public function beforeSave($insert)
    {
        $date = new Expression('NOW()');
        if (parent::beforeSave($insert)) {
            if ($this->isNewRecord) {
                $this->ACCOUNT_AUTH_KEY = \Yii::$app->security->generateRandomString();
                $this->DATE_CREATED = $date;
                $this->PASSWORD_HASH = sha1($this->PASSWORD_HASH); //hash the user password
            }
            if ($this->CHANGE_PASS) {
                //it is in update mode check if password change was requested
                $this->PASSWORD_HASH = sha1($this->PASSWORD_HASH); //hash the user password
            }
            $this->DATE_UPDATED = $date;
            return true;
        }
        return false;
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
        return $this->hasMany(ItemsCart::className(), ['USER_ID' => 'USER_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTbItemsWishlists()
    {
        return $this->hasMany(ItemsWishlist::className(), ['USER_ID' => 'USER_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTbProductBids()
    {
        return $this->hasMany(ProductBids::className(), ['USER_ID' => 'USER_ID']);
    }
}
