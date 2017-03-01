<?php

namespace app\module\users\models;

use Yii;

/**
 * This is the model class for table "countries".
 *
 * @property string $COUNTRY_CODE
 * @property string $COUNTRY_NAME
 *
 * @property Timezones[] $timezones
 */
class Countries extends \yii\db\ActiveRecord
{

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'countries';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['COUNTRY_CODE'], 'required'],
            [['COUNTRY_CODE'], 'string', 'max' => 5],
            [['COUNTRY_NAME'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'COUNTRY_CODE' => 'Country  Code',
            'COUNTRY_NAME' => 'Country  Name',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTimezones()
    {
        return $this->hasMany(Timezones::className(), ['COUNTRY_CODE' => 'COUNTRY_CODE']);
    }
}
