<?php

namespace app\models;

use app\module\products\models\Products;
use app\module\users\models\Users;
use Yii;

/**
 * This is the model class for table "{{%tb_items_cart}}".
 *
 * @property integer $CART_ID
 * @property integer $USER_ID
 * @property integer $PRODUCT_ID
 * @property string $PRODUCT_PRICE
 * @property string $DATE_ADDED
 * @property string $EXPIRY_DATE
 * @property integer $IS_SOLD
 *
 * @property Users $uSER
 * @property Products $pRODUCT
 */
class ItemsCart extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_items_cart}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['USER_ID', 'PRODUCT_ID', 'PRODUCT_PRICE', 'DATE_ADDED', 'EXPIRY_DATE'], 'required'],
            [['USER_ID', 'PRODUCT_ID', 'IS_SOLD'], 'integer'],
            [['PRODUCT_PRICE'], 'number'],
            [['DATE_ADDED', 'EXPIRY_DATE'], 'safe'],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
            [['PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Products::className(), 'targetAttribute' => ['PRODUCT_ID' => 'PRODUCT_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'CART_ID' => 'Cart Item ID',
            'USER_ID' => 'User ID',
            'PRODUCT_ID' => 'Product ID',
            'PRODUCT_PRICE' => 'Product Price',
            'DATE_ADDED' => 'Date Added',
            'EXPIRY_DATE' => 'Expiry Date',
            'IS_SOLD' => 'Item Sold',
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
    public function getPRODUCT()
    {
        return $this->hasOne(Products::className(), ['PRODUCT_ID' => 'PRODUCT_ID']);
    }
}
