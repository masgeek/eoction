<?php

namespace app\module\products\models;

use app\module\users\models\Users;
use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "{{%tb_paypal_transactions}}".
 *
 * @property integer $ID
 * @property integer $USER_ID
 * @property string $PAYMENT_ID
 * @property string $HASH
 * @property integer $COMPLETE
 * @property string $CREATE_TIME
 * @property string $UPDATE_TIME
 *
 * @property TbUsers $uSER
 */
class PaypalTransactions extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%paypal_transactions}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['USER_ID', 'PAYMENT_ID', 'HASH'], 'required'],
            [['USER_ID', 'COMPLETE'], 'integer'],
            [['CREATE_TIME', 'UPDATE_TIME'], 'safe'],
            [['PAYMENT_ID', 'HASH'], 'string', 'max' => 100],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ID' => 'ID',
            'USER_ID' => 'User  ID',
            'PAYMENT_ID' => 'Payment  ID',
            'HASH' => 'Hash',
            'COMPLETE' => 'Complete',
            'CREATE_TIME' => 'Create  Time',
            'UPDATE_TIME' => 'Update  Time',
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
                $this->CREATE_TIME = $date;
            }
            $this->UPDATE_TIME = $date;
            return true;
        }
        return false;
    }
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUSER()
    {
        return $this->hasOne(Users::className(), ['USER_ID' => 'USER_ID']);
    }
}
