<?php

namespace app\module\products\models;

use Yii;

/**
 * This is the model class for table "{{%tb_product_images}}".
 *
 * @property integer $IMAGE_ID
 * @property integer $PRODUCT_ID
 * @property string $IMAGE_URL
 *
 * @property Products $PRODUCT
 */
class Images extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_product_images}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PRODUCT_ID', 'IMAGE_URL'], 'required'],
            [['PRODUCT_ID'], 'integer'],
            [['IMAGE_URL'], 'string', 'max' => 255],
            [['PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Products::className(), 'targetAttribute' => ['PRODUCT_ID' => 'PRODUCT_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'IMAGE_ID' => 'Image ID',
            'PRODUCT_ID' => 'Product ID',
            'IMAGE_URL' => 'Image Url',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPRODUCT()
    {
        return $this->hasOne(Products::className(), ['PRODUCT_ID' => 'PRODUCT_ID']);
    }

    /**
     * @inheritdoc
     * @return ImagesQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ImagesQuery(get_called_class());
    }
}
