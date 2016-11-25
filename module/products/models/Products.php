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
 * @property string $PRODUCT_DESCRIPTION
 * @property string $CATEGORIES
 * @property string $BRAND_NAME
 * @property string $PRICE
 * @property double $RETAIL_PRICE
 * @property integer $ALLOW_PURCHASES
 * @property integer $VISIBLE
 * @property integer $AVAILABLE
 * @property integer $ALLOW_AUCTION
 * @property string $TRACK_INVENTORY
 * @property integer $CURRENT_STOCK_LEVEL
 * @property integer $MIN_STOCK_LEVEL
 * @property string $STOCK_LOCATION
 * @property string $STOCK_TYPE
 * @property string $DATE_ADDED
 * @property string $DATE_UPDATED
 *
 * @property ProductAttributes[] $productAttributes
 * @property Images[] $productImages
 * @property ProductVideos[] $productVideos
 */
class Products extends \yii\db\ActiveRecord
{
    public $PRODUCT_DESCRIPTION;

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
            [['ALLOW_PURCHASES', 'VISIBLE', 'AVAILABLE', 'ALLOW_AUCTION', 'CURRENT_STOCK_LEVEL', 'MIN_STOCK_LEVEL'], 'integer'],
            [['DATE_ADDED', 'DATE_UPDATED', 'PRODUCT_DESCRIPTION'], 'safe'],
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
            'PRODUCT_ID' => 'Product Id',
            'UID' => 'Universal ID',
            'SKU' => 'Stock Keeping Unit',
            'PRODUCT_NAME' => 'Product Name',
            'PRODUCT_DESCRIPTION' => 'Product Description',
            'CATEGORIES' => 'Categories',
            'BRAND_NAME' => 'Brand  Name',
            'PRICE' => 'Bid Price',
            'RETAIL_PRICE' => 'Retail Price',
            'ALLOW_PURCHASES' => 'Purchase Allowed',
            'VISIBLE' => 'Visible',
            'AVAILABLE' => 'Available',
            'ALLOW_AUCTION' => 'Allow Auction',
            'TRACK_INVENTORY' => 'Track  Inventory',
            'CURRENT_STOCK_LEVEL' => 'Current  Stock  Level',
            'MIN_STOCK_LEVEL' => 'Minimum Stock Level',
            'STOCK_LOCATION' => 'Stock  Location',
            'STOCK_TYPE' => 'Stock  Type',
            'DATE_ADDED' => 'Date Added',
            'DATE_UPDATED' => 'Last Updated',
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
        return $this->hasMany(Images::className(), ['PRODUCT_ID' => 'PRODUCT_ID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductVideos()
    {
        return $this->hasMany(ProductVideos::className(), ['PRODUCT_ID' => 'PRODUCT_ID']);
    }

    /**
     * @param null $product_id
     * @return Images|mixed|null|string
     */
    public function getSingleImage($product_id = null)
    {
        $image = null;
        if ($product_id == null) {
            $images = $this->productImages;
            if (is_array($images) && !empty($images)) {
                $image = $images[0]; //get only the first index
            }
        } else {
            $images = Images::find()
                ->where(['PRODUCT_ID' => $product_id])
                ->one();
            if ($images != null) {
                $image = $images->IMAGE_URL;
            }
        }
        return $image;
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
