<?php

namespace app\module\users\models;

use Yii;
use app\module\products\models;

/**
 * This is the model class for table "{{%tb_hash_table}}".
 *
 * @property integer $SALT_ID
 * @property integer $USER_ID
 * @property string $SALT
 *
 * @property TbUsers $uSER
 */
class HashTable extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_hash_table}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['USER_ID', 'SALT'], 'required'],
            [['USER_ID'], 'integer'],
            [['SALT'], 'string', 'max' => 255],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'SALT_ID' => 'Salt ID',
            'USER_ID' => 'User ID',
            'SALT' => 'Salt',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUSER()
    {
        return $this->hasOne(TbUsers::className(), ['USER_ID' => 'USER_ID']);
    }
}
