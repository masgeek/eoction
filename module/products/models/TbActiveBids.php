<?php

namespace app\module\products\models;

use Yii;
use yii\db\Expression;

/**
 * This is the model class for table "tb_active_bids".
 *
 * @property int $ACTIVE_ID
 * @property int $PRODUCT_ID
 * @property int $BIDDING_DURATION How long the item will be on bid if is not won
 * @property int $ITEM_WON Indicate if item is won or not
 * @property string $DATE_CREATED
 * @property string $DATE_UPDATED
 *
 * @property FryProducts $pRODUCT
 */
class TbActiveBids extends \yii\db\ActiveRecord
{
	/**
	 * @inheritdoc
	 */
	public static function tableName()
	{
		return 'tb_active_bids';
	}

	/**
	 * @inheritdoc
	 */
	public function rules()
	{
		return [
			[['PRODUCT_ID', 'BIDDING_DURATION'], 'required'],
			[['PRODUCT_ID', 'BIDDING_DURATION', 'ITEM_WON'], 'integer'],
			[['DATE_CREATED', 'DATE_UPDATED'], 'safe'],
			[['PRODUCT_ID'], 'unique'],
			[['PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => FryProducts::className(), 'targetAttribute' => ['PRODUCT_ID' => 'productid']],
		];
	}

	/**
	 * @inheritdoc
	 */
	public function beforeSave($insert)
	{
		$date = new Expression('NOW()');
		if (parent::beforeSave($insert)) {
			if ($this->isNewRecord) {
				$this->DATE_CREATED = $date;
			}
			$this->DATE_UPDATED = $date;
			return true;
		}
		return false;
	}

	/**
	 * @inheritdoc
	 */
	public function attributeLabels()
	{
		return [
			'ACTIVE_ID' => 'Active  ID',
			'PRODUCT_ID' => 'Product  ID',
			'BIDDING_DURATION' => 'How long the item will be on bid if is not won',
			'ITEM_WON' => 'Indicate if item is won or not',
			'DATE_CREATED' => 'Date  Created',
			'DATE_UPDATED' => 'Date  Updated',
		];
	}

	/**
	 * @return \yii\db\ActiveQuery
	 */
	public function getPRODUCT()
	{
		return $this->hasOne(FryProducts::className(), ['productid' => 'PRODUCT_ID']);
	}
}
