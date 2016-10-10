<?php

namespace app\module\products\models;

use Yii;

/**
 * This is the model class for table "{{%tb_products}}".
 *
 * @property integer $PRODUCT_ID
 * @property string $UID
 * @property string $SKU
 * @property string $PRODUCT_NAME
 * @property string $CATEGORIES
 * @property string $BRAND_NAME
 * @property double $PRICE
 * @property double $RETAIL_PRICE
 * @property integer $ALLOW_PURCHASES
 * @property integer $VISIBLE
 * @property integer $AVAILABLE
 * @property string $TRACK_INVENTORY
 * @property integer $CURRENT_STOCK_LEVEL
 * @property integer $MIN_STOCK_LEVEL
 * @property string $STOCK_LOCATION
 * @property string $STOCK_TYPE
 * @property string $DATE_ADDED
 * @property string $DATE_UPDATED
 *
 * @property TbProductAttributes[] $ProductAttributes
 * @property TbProductImages[] $ProductImages
 * @property TbProductVideo[] $ProductVideos
 */
class Products extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_products}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['SKU', 'PRODUCT_NAME', 'BRAND_NAME', 'PRICE', 'RETAIL_PRICE', 'CURRENT_STOCK_LEVEL'], 'required'],
            [['PRICE', 'RETAIL_PRICE'], 'number'],
            [['ALLOW_PURCHASES', 'VISIBLE', 'AVAILABLE', 'CURRENT_STOCK_LEVEL', 'MIN_STOCK_LEVEL'], 'integer'],
            [['DATE_ADDED', 'DATE_UPDATED'], 'safe'],
            [['UID'], 'string', 'max' => 100],
            [['SKU', 'PRODUCT_NAME', 'CATEGORIES', 'BRAND_NAME', 'TRACK_INVENTORY', 'STOCK_LOCATION', 'STOCK_TYPE'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'PRODUCT_ID' => Yii::t('app', 'Product Id'),
            'UID' => Yii::t('app', 'Universal ID'),
            'SKU' => Yii::t('app', 'Stock Keeping Unit'),
            'PRODUCT_NAME' => Yii::t('app', 'Product Name'),
            'CATEGORIES' => Yii::t('app', 'Categories'),
            'BRAND_NAME' => Yii::t('app', 'Brand  Name'),
            'PRICE' => Yii::t('app', 'Price'),
            'RETAIL_PRICE' => Yii::t('app', 'Retail  Price'),
            'ALLOW_PURCHASES' => Yii::t('app', 'Purchase Allowed'),
            'VISIBLE' => Yii::t('app', 'Visible'),
            'AVAILABLE' => Yii::t('app', 'Available'),
            'TRACK_INVENTORY' => Yii::t('app', 'Track  Inventory'),
            'CURRENT_STOCK_LEVEL' => Yii::t('app', 'Current  Stock  Level'),
            'MIN_STOCK_LEVEL' => Yii::t('app', 'Minimum Stock Level'),
            'STOCK_LOCATION' => Yii::t('app', 'Stock  Location'),
            'STOCK_TYPE' => Yii::t('app', 'Stock  Type'),
            'DATE_ADDED' => Yii::t('app', 'Date Added'),
            'DATE_UPDATED' => Yii::t('app', 'Last Updated'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductAttributes()
    {
        return $this->hasMany(ProductAttributes::className(), ['PRODUCT_ID' => 'PRODUCT_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductImages()
    {
        return $this->hasMany(ProductImages::className(), ['PRODUCT_ID' => 'PRODUCT_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductVideos()
    {
        return $this->hasMany(ProductVideo::className(), ['PRODUCT_ID' => 'PRODUCT_ID']);
    }

    /**
     * @inheritdoc
     * @return ProductsQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ProductsQuery(get_called_class());
    }
}
