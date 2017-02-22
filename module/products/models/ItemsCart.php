<?php

namespace app\module\products\models;

use Yii;
use app\module\users\models\Users;
use yii\db\Expression;

/**
 * This is the model class for table "{{%tb_items_cart}}".
 *
 * @property integer $CART_ID
 * @property integer $USER_ID
 * @property integer $PRODUCT_ID
 * @property string $PRODUCT_PRICE
 * @property integer $BIDDED_ITEM
 * @property integer $QUANTITY
 * @property integer $IS_SOLD
 * @property string $PAYPAL_HASH
 * @property string $DATE_ADDED
 * @property string $EXPIRY_DATE
 * @property string $DATE_BOUGHT
 *
 * @property Users $uSER
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
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb()
    {
        return Yii::$app->get('db');
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['USER_ID', 'PRODUCT_ID', 'PRODUCT_PRICE', 'DATE_ADDED', 'EXPIRY_DATE', 'DATE_BOUGHT'], 'required'],
            [['USER_ID', 'PRODUCT_ID', 'BIDDED_ITEM','QUANTITY', 'IS_SOLD'], 'integer'],
            [['PRODUCT_PRICE'], 'number'],
            [['DATE_ADDED', 'EXPIRY_DATE', 'DATE_BOUGHT'], 'safe'],
            [['PAYPAL_HASH'], 'string', 'max' => 100],
            [['USER_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['USER_ID' => 'USER_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'CART_ID' => 'Cart  ID',
            'USER_ID' => 'User  ID',
            'PRODUCT_ID' => 'Product  ID',
            'PRODUCT_PRICE' => 'Product  Price',
            'BIDDED_ITEM' => 'Bidded  Item',
            'QUANTITY' => 'Quantity Sold',
            'IS_SOLD' => 'Sold',
            'PAYPAL_HASH' => 'Use to track which items were paid for',
            'DATE_ADDED' => 'Date  Added',
            'EXPIRY_DATE' => 'Expiry  Date',
            'DATE_BOUGHT' => 'Date  Bought',
        ];
    }


    public function beforeValidate()
    {
        $date = new Expression('NOW()');
        if (parent::beforeValidate()) {
            if ($this->isNewRecord) {
                $this->DATE_ADDED = $date;
                $this->EXPIRY_DATE = $date; //@TODO update expiry date and inquire after how long
            }
            $this->DATE_BOUGHT = $date;
            return true;
        }
        return false;
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUSER()
    {
        return $this->hasOne(Users::className(), ['USER_ID' => 'USER_ID']);
    }

    public function getProductInfo($product_id)
    {
        return FryProducts::findOne($product_id);
    }
}
