<?php

namespace app\module\users\models;

use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "{{%tb_user_address}}".
 *
 * @property integer $ADDRESS_ID
 * @property integer $USER_ID
 * @property string $NAME
 * @property string $COMPANY
 * @property string $STREET1
 * @property string $STREET2
 * @property string $STREET3
 * @property string $CITY
 * @property string $STATE
 * @property string $POSTALCODE
 * @property string $COUNTRY
 * @property string $PHONE
 * @property string $RESIDENTIAL
 * @property string $ADDRESS_TYPE
 * @property string $CREATED
 * @property string $UPDATED
 *
 * @property Users $uSER
 */
class UserAddress extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_user_address}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['USER_ID', 'NAME', 'COMPANY', 'STREET1', 'CITY', 'POSTALCODE', 'COUNTRY', 'PHONE'], 'required'],
            [['USER_ID'], 'integer'],
            [['COMPANY'], 'string'],
            [['CREATED', 'UPDATED'], 'safe'],
            [['NAME'], 'string', 'max' => 100],
            [['STREET1', 'STREET2', 'STREET3'], 'string', 'max' => 200],
            [['CITY', 'STATE', 'POSTALCODE', 'PHONE'], 'string', 'max' => 50],
            [['COUNTRY', 'ADDRESS_TYPE'], 'string', 'max' => 20],
            [['RESIDENTIAL'], 'string', 'max' => 10],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
        ];
    }


    /**
     * @param bool $insert
     * @return bool
     */
    public function beforeSave($insert)
    {
        $date = new Expression('NOW()');
        if (parent::beforeSave($insert)) {
            if ($this->isNewRecord) {
                $this->CREATED = $date;
            }
            $this->UPDATED = $date;
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
            'ADDRESS_ID' => 'Address  ID',
            'USER_ID' => 'User  ID',
            'NAME' => 'Name',
            'COMPANY' => 'Company',
            'STREET1' => 'Street1',
            'STREET2' => 'Street2',
            'STREET3' => 'Street3',
            'CITY' => 'City',
            'STATE' => 'State',
            'POSTALCODE' => 'Postalcode',
            'COUNTRY' => 'Country',
            'PHONE' => 'Phone',
            'RESIDENTIAL' => 'Residential',
            'ADDRESS_TYPE' => 'Address  Type',
            'CREATED' => 'Created',
            'UPDATED' => 'Updated',
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
