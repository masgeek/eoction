<?php

namespace app\module\users\models;

use Yii;

/**
 * This is the model class for table "timezones".
 *
 * @property integer $TIMEZONE_ID
 * @property string $COUNTRY_CODE
 * @property string $TIMEZONE
 * @property integer $GMT_OFFSET
 * @property integer $DST_OFFSET
 * @property integer $RAW_OFFSET
 *
 * @property Countries $cOUNTRYCODE
 */
class Timezones extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'timezones';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['GMT_OFFSET', 'DST_OFFSET', 'RAW_OFFSET'], 'integer'],
            [['COUNTRY_CODE'], 'string', 'max' => 255],
            [['TIMEZONE'], 'string', 'max' => 30],
            [['COUNTRY_CODE'], 'exist', 'skipOnError' => true, 'targetClass' => Countries::className(), 'targetAttribute' => ['COUNTRY_CODE' => 'COUNTRY_CODE']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'TIMEZONE_ID' => 'Timezone  ID',
            'COUNTRY_CODE' => 'Country  Code',
            'TIMEZONE' => 'Timezone',
            'GMT_OFFSET' => 'Gmt  Offset',
            'DST_OFFSET' => 'Dst  Offset',
            'RAW_OFFSET' => 'Raw  Offset',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCOUNTRYCODE()
    {
        return $this->hasOne(Countries::className(), ['COUNTRY_CODE' => 'COUNTRY_CODE']);
    }
}
