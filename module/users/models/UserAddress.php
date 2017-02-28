<?php

namespace app\module\users\models;

use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "{{%tb_user_address}}".
 *
 * @property int $ADDRESS_ID
 * @property int $USER_ID
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
 * @property int $RESIDENTIAL
 * @property string $ADDRESS_TYPE
 * @property int $PRIMARY_ADDRESS
 * @property string $CREATED
 * @property string $UPDATED
 *
 * @property Users $uSER
 * @property Countries $cOUNTRY
 */
class UserAddress extends \yii\db\ActiveRecord
{
    const BILLING_ADDRESS = 'BILLING ADDRESS';
    const SHIPPING_ADDRESS = 'SHIPPING ADDRESS';
    const PRIMARY_ADDRESS = true;
    const SECONDARY_ADDRESS = false;

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
            [['USER_ID', 'NAME', 'STREET1', 'CITY', 'POSTALCODE', 'COUNTRY'], 'required'],
            [['USER_ID', 'RESIDENTIAL', 'PRIMARY_ADDRESS'], 'integer'],
            [['CREATED', 'UPDATED'], 'safe'],
            [['NAME'], 'string', 'max' => 100],
            [['COMPANY'], 'string', 'max' => 150],
            [['STREET1', 'STREET2', 'STREET3'], 'string', 'max' => 200],
            [['CITY', 'STATE', 'POSTALCODE', 'PHONE'], 'string', 'max' => 50],
            [['COUNTRY', 'ADDRESS_TYPE'], 'string', 'max' => 20],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
            [['COUNTRY'], 'exist', 'skipOnError' => true, 'targetClass' => Countries::className(), 'targetAttribute' => ['COUNTRY' => 'COUNTRY_CODE']],
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
                $this->CREATED = $date;
            }
            $this->UPDATED= $date;
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
            'PRIMARY_ADDRESS' => 'Primary  Address',
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

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCOUNTRY()
    {
        return $this->hasOne(Countries::className(), ['COUNTRY_CODE' => 'COUNTRY']);
    }
}
