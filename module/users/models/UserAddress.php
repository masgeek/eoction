<?php

namespace app\module\users\models;

use Yii;

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
 * @property integer $PRIMARY_ADDRESS
 * @property string $CREATED
 * @property string $UPDATED
 *
 * @property Users $uSER
 */
class UserAddress extends \yii\db\ActiveRecord
{
    const BILLING_ADDRESS = 'BILLING ADDRESS';
    const MAILING_ADDRESS = 'MAILING ADDRESS';
    const PRIMARY_ADDRESS = true;

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
            [['USER_ID', 'NAME', 'COMPANY', 'STREET1', 'CITY', 'POSTALCODE', 'COUNTRY'], 'required'],
            [['USER_ID'], 'integer'],
            [['USER_ID', 'PRIMARY_ADDRESS','RESIDENTIAL'], 'boolean'],
            [['CREATED', 'UPDATED', 'PHONE'], 'safe'],
            [['NAME'], 'string', 'max' => 100],
            [['COMPANY'], 'string', 'max' => 150],
            [['STREET1', 'STREET2', 'STREET3'], 'string', 'max' => 200],
            [['CITY', 'STATE', 'POSTALCODE', 'PHONE'], 'string', 'max' => 50],
            [['COUNTRY', 'ADDRESS_TYPE'], 'string', 'max' => 20],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ADDRESS_ID' => 'Address ID',
            'USER_ID' => 'User ID',
            'NAME' => 'Name',
            'COMPANY' => 'Company Name',
            'STREET1' => 'Street Address 1',
            'STREET2' => 'Street Address 2',
            'STREET3' => 'Street Address 3',
            'CITY' => 'City',
            'STATE' => 'State',
            'POSTALCODE' => 'Postal Code',
            'COUNTRY' => 'Country',
            'PHONE' => 'Phone',
            'RESIDENTIAL' => 'Is Residential address',
            'ADDRESS_TYPE' => 'Address Type',
            'PRIMARY_ADDRESS' => 'Primary Address',
            'CREATED' => 'Created On',
            'UPDATED' => 'Updated On',
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
