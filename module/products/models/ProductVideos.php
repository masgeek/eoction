<?php

namespace app\module\products\models;

use Yii;

/**
 * This is the model class for table "{{%tb_product_video}}".
 *
 * @property integer $VIDEO_ID
 * @property integer $PRODUCT_ID
 * @property string $VIDEO_URL
 * @property integer $AUTOPLAY
 *
 * @property TbProducts $pRODUCT
 */
class ProductVideos extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_product_video}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PRODUCT_ID', 'AUTOPLAY'], 'integer'],
            [['VIDEO_URL'], 'string', 'max' => 255],
            [['PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => TbProducts::className(), 'targetAttribute' => ['PRODUCT_ID' => 'PRODUCT_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'VIDEO_ID' => 'Video  ID',
            'PRODUCT_ID' => 'Product  ID',
            'VIDEO_URL' => 'Video  Url',
            'AUTOPLAY' => 'Autoplay',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPRODUCT()
    {
        return $this->hasOne(TbProducts::className(), ['PRODUCT_ID' => 'PRODUCT_ID']);
    }

    /**
     * @inheritdoc
     * @return ProductVideosQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ProductVideosQuery(get_called_class());
    }
}
