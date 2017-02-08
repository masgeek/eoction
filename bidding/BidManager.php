<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/21
 * Time: 13:08
 *
 * @var $item app\module\products\models\Products
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */


namespace app\bidding;

use yii\db\Expression;
use yii\helpers\Html;

use app\components\ProductManager;
use app\module\products\models\BidExclusion;
use app\module\products\models\FryProductImages;
use app\module\products\models\FryProducts;
use app\module\users\models\Users;

use app\models\BidActivity;
use app\module\products\models\ProductBids;

class BidManager
{
	/**
	 *Add items to the bid activity table
	 * this will help us avoid refetching the same product
	 * @param $listDataProvider
	 */
	public static function AddItemsToBidActivity($listDataProvider, $multimodel = true)
	{

		/* @var $item FryProducts */
		/* @var $listDataProvider FryProducts */
		$expression = new Expression('NOW()');
		if ($multimodel) {
			foreach ($listDataProvider->models as $item) {
				//loop through the model array
				$model = new BidActivity();
				$model->isNewRecord = true;
				$model->PRODUCT_ID = $item->productid;
				$model->PRODUCT_SKU = $item->sku;
				$model->ACTIVITY_COUNT = 0;
				$model->BID_DATE = $expression;
				//save the data
				if ($model->save()) {/* do something */
				}
			}
		} else {
			//when only one model value is passed
			$model = new BidActivity();
			$model->isNewRecord = true;
			$model->PRODUCT_ID = $listDataProvider->productid;
			$model->PRODUCT_SKU = $listDataProvider->sku;
			$model->ACTIVITY_COUNT = 0;
			$model->BID_DATE = $expression;
			//save the data

			if ($model->save()) {/* do something */
			}
		}
	}

	/**
	 * @param int $product_id
	 */
	public static function RemoveItemsFromBidActivity($product_id = 0)
	{
		//BidActivity::findOne(['PRODUCT_ID' => $product_id, 'ACTIVITY_COUNT' => 0])->delete();
		BidActivity::findOne(['ACTIVITY_COUNT' => 0])->delete();
	}

	/**
	 * Track product bid information per user and also indicate who has won which bid
	 * @param $user_id
	 * @param $product_id
	 * @param $sku
	 *
	 * @return boolean
	 */
	public static function TrackUsersBids($user_id, $product_id, $sku, $bid_won = 0)
	{
		$bid_successful = false;
		$bid_amount_increment = BidManager::NextBidAmount($product_id);


		$expression = new Expression('NOW()');
		//first lets check if the product is already tracked
		$bidactivity = ProductBids::findOne([
			'PRODUCT_ID' => $product_id,
			'USER_ID' => $user_id,
		]);


		if ($bidactivity != null) {
			//do the update
			//lets add the data
			$bidactivity->BID_AMOUNT = $bid_amount_increment;
			$bidactivity->PRODUCT_ID = $product_id;
			$bidactivity->USER_ID = $user_id;
			$bidactivity->BID_WON = $bid_won;
			$bidactivity->BID_TIME = $expression;

			if ($bidactivity->save()) {
				$bid_successful = true;
			}
		} else {
			$model = new ProductBids();
			$model->isNewRecord = true;

			//lets add the data
			$model->BID_AMOUNT = $bid_amount_increment;
			$model->PRODUCT_ID = $product_id;
			$model->USER_ID = $user_id;
			$model->BID_WON = $bid_won;
			$model->BID_TIME = $expression;
			if ($model->save()) {
				$bid_successful = true;
			}
		}

		return $bid_successful; //saving status
	}


	/**
	 * increment bid based on the incremental amount
	 * $1-10 = increment is $1
	 * $11-30 = increment is $2
	 * $31-100 = increment is $5
	 * $100-1000 = increment is $10
	 * $1000 and above = increment is $100
	 * @param $product_id
	 * @return int|string
	 */
	public static function NextBidAmount($product_id)
	{
		//first we check if there is already a bid if not this is ther first bid and we will get teh base bid price
		//$increment_value = 1; //default is one//\Yii::$app->params['BidIncrementValue'];
		$productInfo = FryProducts::findOne($product_id);

		$next_bid_amount = $productInfo->price;

		$max_amount = (int)BidManager::GetMaxBidAmount($product_id, $format = false, $check_if_first_bid = true);

		if ($max_amount > 0) {
			if ($max_amount >= 1 && $max_amount <= 10) {
				$increment_value = 1;
			} elseif ($max_amount >= 11 && $max_amount <= 30) {
				$increment_value = 2;
			} elseif ($max_amount >= 31 && $max_amount <= 100) {
				$increment_value = 5;
			} elseif ($max_amount >= 101 && $max_amount <= 1000) {
				$increment_value = 10;
			} elseif ($max_amount > 1000) {
				$increment_value = 100;
			}

			$next_bid_amount = $max_amount + (int)$increment_value;
		}
		return $next_bid_amount;

	}

	public static function GetInitialBidAmount($product_id)
	{
		$starting_bid = FryProducts::find()
			->select('price')
			->where(['productid' => $product_id])
			->max('price');

		return $starting_bid;
	}


	/**
	 * return teh user id of the winning user
	 * @param $product_id
	 * @param $sku
	 * @return int
	 */
	public static function GetBidWinner($product_id, $sku)
	{
		$bid_winner = 0;
		$bid_winner_data = BidActivity::find()
			->select('LAST_BIDDING_USER_ID')
			->where(['PRODUCT_ID' => $product_id])
			->andWhere(['PRODUCT_SKU' => $sku])
			->asArray()
			->one();

		if (count($bid_winner_data) == 1) {
			$bid_winner = $bid_winner_data['LAST_BIDDING_USER_ID'];
		}

		return (int)$bid_winner;
	}

	public static function MarkBidAsWon($user_id, $product_id)
	{
		//then add it to the cart

		$bid_won_model = ProductBids::findOne([
				'USER_ID' => $user_id,
				'PRODUCT_ID' => $product_id,
				'BID_WON' => 0]
		);
		if ($bid_won_model != null) {
			$bid_won_model->BID_WON = 1; //indicate this bid as won

			if ($bid_won_model->save()) {
				//remove the same item not won from the bid activity table
				ProductBids::deleteAll(['PRODUCT_ID' => $product_id, 'BID_WON' => 0]);
				//add to cart to await payment
				$resp = CartManager::AddItemsToCart($bid_won_model->USER_ID, $bid_won_model->PRODUCT_ID, $bid_won_model->BID_AMOUNT, $bidden_item = 1);
			}
			return $resp;
		}

		return null;
	}

	/**
	 * Returns the maximum amount for an item
	 * @param $product_id integer
	 * @param $format boolean
	 * @param $check_if_first_bid boolean
	 * @return float
	 */
	public static function GetMaxBidAmount($product_id, $format = true, $check_if_first_bid = false)
	{
		$formatter = \Yii::$app->formatter;
		$bid_amount = ProductBids::find()
			->where(['PRODUCT_ID' => $product_id])
			->andWhere(['BID_WON' => 0])
			->max('BID_AMOUNT');

		if ($check_if_first_bid) {
			return $bid_amount;
		}

		if ($bid_amount == null || (int)$bid_amount <= 0) {
			$bid_amount = BidManager::GetInitialBidAmount($product_id);
		}
		if ($format) {
			$max_bid_amount = $formatter->asCurrency($bid_amount);
		} else {
			$max_bid_amount = $bid_amount;
		}
		return $max_bid_amount;
	}

	/**
	 * Get an items retail price
	 * @param $product_id
	 * @return float
	 */
	public static function GetItemRetailAmount($product_id)
	{
		$retail_price = ProductBids::find([
			'PRODUCT_ID' => $product_id,
		])->max('RETAIL_PRICE');

		return (float)$retail_price;
	}

	public static function GetTotalItemBids($product_id, $sku)
	{

	}

	/**
	 * Get the user who is leading in a products bid
	 * @param $product_id
	 * @param $sku
	 * @param bool $bid_won
	 * @return string
	 */
	public static function GetWinningUser($product_id, $sku, $bid_won = false)
	{


		$winning_name = '-';
		$logged_in_id = \Yii::$app->user->id;
		$winning_user_id = BidManager::GetBidWinner($product_id, $sku);

		//if ($logged_in_id == $winning_user_id && $winning_user_id > 0) {
		//$winning_name = $bid_won ? 'you have won!' : 'you are winning';
		//} else {
		if ($winning_user_id > 0) {
			$userData = Users::findOne($winning_user_id);

			$winning_name = $bid_won ? $userData->FULL_NAMES . ' has won!' : $userData->FULL_NAMES . ' is winning';
		}
		//}

		return $winning_name;
	}

	/**
	 * @param int $product_id
	 * @return array
	 */
	public static function GetNextItemToBid($product_id)
	{
		/* @var $productModel FryProducts */
		$exclusionItems = BidManager::GetExclusionItems();

		$exclusionItems[] = $product_id; //add the passed id to the array


		$productModel = FryProducts::find()
			->where([
				'NOT IN', 'productid', $exclusionItems,
			])
			->andWhere(['>=', 'stock_level', 1])//stock levels should be greater or equal to 1
			//->andWhere('!=','PRODUCT_ID',$product_id)
			//->orderBy(['rand()' => SORT_DESC])//randomly pick products
			//->limit(1)//limit to one record only
			->one();

		//if data is null recursivelly call the function again
		if ($productModel == null) {
			//select without using the exclusion list
			$productModel = FryProducts::find()
				->Where(['>=', 'stock_level', 1])
				->andWhere(['!=', 'productid', $product_id])
				->offset($product_id)
				->one();

		}

		$next_item_id = $productModel->productid;
		$sku = $productModel->sku;
		$product_name = $productModel->name;
		$retail_price_raw = $productModel->buyitnow;
		$starting_bid_price_raw = $productModel->price;
		$product_image_raw = $productModel->image1;
		BidManager::AddToExclusionList($productModel->productid, 0);
		//add the item to bid activity
		BidManager::AddItemsToBidActivity($productModel, $multimodel = false); //add the picked item to bid activity table


		$product_list = BidManager::BuildProductHtmlList($next_item_id, $sku, $product_name, $retail_price_raw, $starting_bid_price_raw, $product_image_raw);
		return $product_list;
	}

	/**
	 * @return array
	 */
	public static function GetExclusionItems()
	{

		$maxExpiry = 3600 * 5;
		$usersTimezone = 'GMT';
		date_default_timezone_set($usersTimezone);
		$date = date('Y-m-d  H:i:s');
		$currentDate = strtotime($date);

		//clean the table
		//BidManager::RemoveItemsFromBidActivity();
		$nested_items_array = BidExclusion::find()
			->select(['PRODUCT_ID', 'EXCLUSION_PERIOD', 'BIDDING_PERIOD'])
			->where('HIGH_DEMAND=0')
			->orderBy(['AUCTION_COUNT' => SORT_ASC])
			->asArray()
			->all();
		//flatten the nested arrays
		$exclusion_array = [];
		foreach ($nested_items_array as $item) {
			$bidDuration = $item['BIDDING_PERIOD'];
			$futureExpiry = $item['EXCLUSION_PERIOD'];

			$bid_duration = floor((($bidDuration - $currentDate) / 60));
			$bid_expiry = floor((($futureExpiry - $currentDate) / 60));

			if ($bid_expiry > 0 || $bid_duration >= 0) {
				$exclusion_array[] = $item['PRODUCT_ID'];
			}
		}

		return $exclusion_array;
	}

	public static function AddToExclusionList($product_id, $high_demand = false)
	{
		$bidding_duration = 10;
		$exclusion_duration = 30;

		/* @var $model BidExclusion */
		//exclusion is in seconds 1hr 3600 seconds
		//$exclusion_time = date("Y-m-d H:i:s", $futureDate);
		//compute exclusion period
		$usersTimezone = 'GMT';
		date_default_timezone_set($usersTimezone);
		$date = date('Y-m-d  H:i:s');
		$currentDate = strtotime($date);
		$bidDuration = strtotime($date . "+$bidding_duration minutes");
		$futureDate = strtotime($date . "+$exclusion_duration minutes");


		//first lest check if the record exists
		$model = BidExclusion::findOne(['PRODUCT_ID' => $product_id]);
		if ($model == null) {
			//prepare new record insertion
			$model = new BidExclusion();
			$model->isNewRecord = true;

			$model->PRODUCT_ID = $product_id;
		} else {
			//default is to update the record
			$model->isNewRecord = false;
			$model->AUCTION_COUNT = (int)($model->AUCTION_COUNT) + 1; //increment by one
		}
		$model->BIDDING_PERIOD = $bidDuration;
		$model->EXCLUSION_PERIOD = $futureDate;
		$model->HIGH_DEMAND = $high_demand ? 1 : 0; //indicate if the product is in high demand

		if ($model->save()) {
			return true;
		}

		\Yii::error($model->getErrors(), 'bidExclusions'); //log to an exclusions log file
		return false; //return false indicating teh update/insert failed
	}

	/**
	 * @param $product_id
	 * @param $sku
	 * @param $product_name
	 * @param $retail_price_raw
	 * @param $starting_bid_price_raw
	 * @param $product_image_raw
	 * @return array
	 */
	private static function BuildProductHtmlList($product_id, $sku, $product_name, $retail_price_raw, $starting_bid_price_raw, $product_image_raw)
	{
		/* @var $imageObject FryProductImages */
		$formatter = \Yii::$app->formatter;
		$imageHost = \Yii::$app->params['ExternalImageServerLink'];
		$imageFolder = \Yii::$app->params['ExternalImageServerFolder'];

		$imageModel = new FryProducts();

		$product_image = ProductManager::CheckImageExists($product_image_raw);
		$shipping_cost = $formatter->asCurrency(ProductManager::ComputeShippingCost($product_id));
		$retail_price = $formatter->asCurrency($retail_price_raw);
		$starting_bid_price = $formatter->asCurrency($starting_bid_price_raw);
		//$shipping_cost = ProductManager::ComputeShippingCost($product_id);
		$bids = ProductManager::GetNumberOfBids($product_id);
		$discount = ProductManager::ComputePercentageDiscount($product_id);

		//$alias_path =  \Yii::getAlias('@web');


		$imageHtml = Html::img($product_image, [
			'id' => 'product_image_' . $product_id,
			'class' => 'img-responsive proportion-image',
			'alt' => $product_name,
		]);


		$html_list = <<<BID_BOX
<div class="col-xs-18 col-sm-6 col-md-3 column productbox" id="item_box_$product_id">
    <div class="hidden">
        <input type="text" id="bid_count_$product_id" value="0" readonly="readonly"/>
        <input type="text" id="bid_price_$product_id" value="0" readonly="readonly"/>
        <input type="text" id="bid_type_$product_id" value="1" readonly="readonly"/>
        <input type="text" id="bid_placed_$product_id" value="0" readonly="readonly"/>
        <input type="text" id="product_sku_$product_id" value="$sku" readonly="readonly"/>
    </div>
    <div class="thumbnail">
        <div class="proportion-image" id="image_box$product_id">{$imageHtml}</div>
        <div class="caption">
            <div class="row">
                <div class="col-md-12 col-xs-12 bidding-price text-center text-uppercase">
                    Bid Price: <span id="bid_price$product_id">$starting_bid_price</span>
                </div>
            </div>
            <div class="row">
                <div id="bid_button_$product_id">
                    <button class="btn btn-bid btn-bid-active btn-block noradius text-uppercase" id="placebid_$product_id">
            <span class="hammer-icon pull-left"></span>Bid Now
            </button>
                </div>
                <div class="bidProgress noplacedbids" id="progressBar$product_id"></div>
            </div>
            <div class="row text-center">
                <div class="text-uppercase bid-message bid-status"><span
                            id="bid_status_$product_id">Accepting Bids</span></div>
                <div class="text-uppercase winning-user text-muted"><span id="winning_user_$product_id">-</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <a href="#" class="btn btn-default btn-product noborder">
                        <span class="small" id="shipping_$product_id">Shipping $shipping_cost</span>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <a class="btn btn-default btn-product text-uppercase noborder"><span class="bidcount"><span
                                    id="bids_placed_$product_id">$bids</span> Bid(s)</span></a>
                </div>
                <div class="col-md-6">
                    <a href="#" class="btn btn-default btn-product noborder">
                        <span class="crossed retail-price text-uppercase">$retail_price</span>
                        <span class="discount text-uppercase" id="discount_$product_id">$discount%</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
BID_BOX;


		//return the item list now
		$product_box = [
			'bid_price' => $starting_bid_price,
			'discount' => $discount,
			'bid_count' => $bids,
			'product_id' => $product_id,
			'sku' => $sku,
			'html_data' => $html_list
		];
		return $product_box;
	}
}