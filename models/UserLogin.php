<?php

namespace app\models;

use app\module\products\models\ProductBids;
use Yii;
use yii\base\NotSupportedException;
use yii\db\ActiveRecord;
use yii\base\Security;
use yii\web\IdentityInterface;

/**
 * This is the model class for table "{{%tb_users}}".
 *
 * @property integer $USER_ID
 * @property string $FULL_NAMES
 * @property string $EMAIL_ADDRESS
 * @property string $ACCOUNT_TYPE
 * @property string $PASSWORD_HASH
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
 * @property HashTable[] $tbHashTables
 * @property ItemsCart[] $tbItemsCarts
 * @property ItemsWishlist[] $tbItemsWishlists
 * @property ProductBids[] $tbProductBids
 */
class UserLogin extends ActiveRecord implements IdentityInterface
{
    public $ACCOUNT_TYPE;
    public $ACCOUNT_AUTH_KEY;
    public $PASSWORD_RESET_TOKEN;
    public $passwordHashCost = 13;

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
            [['EMAIL_ADDRESS', 'PASSWORD_HASH'], 'required'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'EMAIL_ADDRESS' => 'Email Address',
            'PASSWORD_HASH' => 'Password',
        ];
    }


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
        return static::findOne(['ACCESS_TOKEN' => $token]);
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
        return static::findOne(['EMAIL_ADDRESS' => $username]);
    }

    /**
     * @return bool
     */
    public function getAccountType(){
        if($this->ACCOUNT_TYPE=='A'){ //A means it is an admin account
            return true;
        }
        return false;
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
        return $this->ACCOUNT_AUTH_KEY;
    }


    /**
     *
     *
     * @inheritdoc
     * @param string $authKey
     * @return bool
     **/
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
        return $this->PASSWORD_HASH === sha1($password);
    }

    /**
     * Generates password hash from password and sets it to the model
     *
     * @param string $password
     */
    public function setPassword($password)
    {

        $this->LOGIN_ID = Security::generatePasswordHash($password);
    }

    /**
     * gets the hashed password
     * @return string
     */
    public function getPassword()
    {
        return $this->LOGIN_ID;
    }

    /**
     * Generates "remember me" authentication key
     */
    /* public function generateAuthKey()
     {
         $this->AUTH_KEY = Security::generateRandomKey();
     }*/

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
}
