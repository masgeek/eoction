<?php

namespace app\module\users\models;

use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "{{%user_recovery}}".
 *
 * @property int $RECOVERY_ID
 * @property int $USER_ID
 * @property string $RECOVERY_TOKEN
 * @property int $EXPIRES
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
    public function beforeValidate()
    {
        $date = new Expression('NOW()');
        if (parent::beforeValidate()) {
            if ($this->isNewRecord) {
                //$this->DATE_ADDED = $date; //@TODO edit to mach data field columns
                //$this->EXPIRY_DATE = ProductManager::SetProductExpiryDate(); //@TODO edit to mach data field columns
            }
                //$this->DATE_BOUGHT = $date; //@TODO edit to mach data field columns
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
            'RECOVERY_ID' => 'Recovery  ID',
            'USER_ID' => 'User  ID',
            'RECOVERY_TOKEN' => 'Recovery  Token',
            'EXPIRES' => 'Expires',
        ];
    }
}
