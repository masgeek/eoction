<?php

namespace app\module\products\models;

use Yii;

/**
 * This is the model class for table "{{%tb_product_attributes}}".
 *
 * @property integer $ATTRIBUTE_ID
 * @property integer $PRODUCT_ID
 * @property string $ATTRIBUTE_NAME
 * @property string $ATTRIBUTE
 *
 * @property Products $PRODUCT
 */
class ProductsAttributes extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_product_attributes}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PRODUCT_ID', 'ATTRIBUTE_NAME', 'ATTRIBUTE'], 'required'],
            [['PRODUCT_ID'], 'integer'],
            [['ATTRIBUTE_NAME'], 'string', 'max' => 50],
            [['ATTRIBUTE'], 'string', 'max' => 100],
            [['PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => TbProducts::className(), 'targetAttribute' => ['PRODUCT_ID' => 'PRODUCT_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ATTRIBUTE_ID' => Yii::t('app', 'Attribute  ID'),
            'PRODUCT_ID' => Yii::t('app', 'Product  ID'),
            'ATTRIBUTE_NAME' => Yii::t('app', 'Attribute  Name'),
            'ATTRIBUTE' => Yii::t('app', 'Attribute'),
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
     * @return ProductsAttributesQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ProductsAttributesQuery(get_called_class());
    }
}
