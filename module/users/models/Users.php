<?php

namespace app\module\users\models;

use Yii;
use yii\base\NotSupportedException;
use yii\db\ActiveRecord;
use yii\helpers\Security;
use yii\web\IdentityInterface;

/**
 * This is the model class for table "{{%tb_users}}".
 *
 * @property integer $USER_ID
 * @property string $USERNAME
 * @property string $PASSWORD
 * @property string $REPEAT_PASSWORD
 * @property string $FULL_NAMES
 * @property string $EMAIL_ADDRESS
 * @property string $LOGIN_ID
 * @property string $PHONE_NO
 * @property string $TIMEZONE
 * @property string $COUNTRY
 * @property integer $SOCIAL_ID
 * @property string $DATE_CREATED
 * @property string $DATE_UPDATED
 * @property string $AUTH_KEY
 * @property string $PASSWORD_RESET_TOKEN
 *
 * @property HashTable[] $tbHashTables
 * @property ItemsCart[] $tbItemsCarts
 * @property ProductBids[] $tbProductBids
 */
class Users extends \yii\db\ActiveRecord implements IdentityInterface
{

    public $REPEAT_PASSWORD;
    /** INCLUDE USER LOGIN VALIDATION FUNCTIONS**/
    /**
     * @inheritdoc
     */
    public static function findIdentity($id)
    {
        return static::findOne($id);
    }

    /**
     * @inheritdoc
     */
    /* modified */
    public static function findIdentityByAccessToken($token, $type = null)
    {
        return static::findOne(['access_token' => $token]);
    }

    /* removed
        public static function findIdentityByAccessToken($token)
        {
            throw new NotSupportedException('"findIdentityByAccessToken" is not implemented.');
        }
    */
    /**
     * Finds user by username
     *
     * @param  string $username
     * @return static|null
     */
    public static function findByUsername($username)
    {
        return static::findOne(['USERNAME' => $username]);
    }

    /**
     * Finds user by password reset token
     *
     * @param  string $token password reset token
     * @return static|null
     */
    public static function findByPasswordResetToken($token)
    {
        $expire = \Yii::$app->params['user.passwordResetTokenExpire'];
        $parts = explode('_', $token);
        $timestamp = (int)end($parts);
        if ($timestamp + $expire < time()) {
            // token expired
            return null;
        }

        return static::findOne([
            'PASSWORD_RESET_TOKEN' => $token
        ]);
    }

    /**
     * @inheritdoc
     */
    public function getId()
    {
        return $this->getPrimaryKey();
    }

    /**
     * @inheritdoc
     */
    public function getAuthKey()
    {
        return $this->AUTH_KEY;
    }

    /**
     * @inheritdoc
     */
    public function validateAuthKey($authKey)
    {
        return $this->getAuthKey() === $authKey;
    }

    /**
     * Validates password
     *
     * @param  string $password password to validate
     * @return boolean if password provided is valid for current user
     */
    public function validatePassword($password)
    {
        return $this->PASSWORD === sha1($password);
    }

    /**
     * Generates password hash from password and sets it to the model
     *
     * @param string $password
     */
    public function setPassword($password)
    {
        $this->PASSWORD = Security::generatePasswordHash($password);
    }

    /**
     * Generates "remember me" authentication key
     */
    public function generateAuthKey()
    {
        $this->AUTH_KEY = Security::generateRandomKey();
    }

    /**
     * Generates new password reset token
     */
    public function generatePasswordResetToken()
    {
        $this->PASSWORD_RESET_TOKEN = Security::generateRandomKey() . '_' . time();
    }

    /**
     * Removes password reset token
     */
    public function removePasswordResetToken()
    {
        $this->PASSWORD_RESET_TOKEN = null;
    }

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
            [['USERNAME', 'PASSWORD', 'FULL_NAMES', 'EMAIL_ADDRESS'], 'required'],
            [['USERNAME','EMAIL_ADDRESS'], 'unique'],
            [['REPEAT_PASSWORD'], 'required', 'on'=>'signup,changepass'],
            [['SOCIAL_ID'], 'integer'],
            [['DATE_CREATED', 'DATE_UPDATED'], 'safe'],
            [['USERNAME'], 'string', 'max' => 20],
            [['PASSWORD', 'FULL_NAMES', 'EMAIL_ADDRESS', 'AUTH_KEY', 'PASSWORD_RESET_TOKEN'], 'string', 'max' => 255],
            [['LOGIN_ID'], 'string', 'max' => 300],
            [['PHONE_NO'], 'string', 'max' => 30],
            [['TIMEZONE'], 'string', 'max' => 10],
            [['COUNTRY'], 'string', 'max' => 15],
            ['REPEAT_PASSWORD', 'compare', 'compareAttribute'=>'PASSWORD', 'skipOnEmpty' => false, 'message'=>"Passwords don't match",'on'=>'signup,changepass'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'USER_ID' => 'User  ID',
            'USERNAME' => 'Username',
            'PASSWORD' => 'Password',
            'REPEAT_PASSWORD' => 'Confirm Password',
            'FULL_NAMES' => 'Full Names',
            'EMAIL_ADDRESS' => 'Email Address',
            'LOGIN_ID' => 'Login  ID',
            'PHONE_NO' => 'Phone  No',
            'TIMEZONE' => 'Timezone',
            'COUNTRY' => 'Country',
            'SOCIAL_ID' => 'Social  ID',
            'DATE_CREATED' => 'Date  Created',
            'DATE_UPDATED' => 'Date  Updated',
            'AUTH_KEY' => 'Auth  Key',
            'PASSWORD_RESET_TOKEN' => 'Password  Reset  Token',
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
    public function getTbProductBids()
    {
        return $this->hasMany(TbProductBids::className(), ['USER_ID' => 'USER_ID']);
    }
}
