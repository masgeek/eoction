<?php
/**
 * Created by PhpStorm.
 * User: barsa
 * Date: 2/7/2017
 * Time: 1:18 PM
 */


namespace app\bidding;

use app\module\products\models\BidExclusion;
use app\module\products\models\FryProducts;
use app\module\products\models\TbActiveBids;
use function GuzzleHttp\json_decode;
use yii\base\Component;
use yii\base\InvalidConfigException;
use yii\data\ActiveDataProvider;
use yii\db\Expression;

class ActiveBids extends \yii\base\Component
{

    public $maximum_items;
    public $bidding_minute_duration;
    public $timezone;
    public $current_date;

    public function init()
    {
        parent::init();
        if ($this->maximum_items == null || $this->maximum_items <= 0) {
            throw new InvalidConfigException('Maximum items should equal to or greater than 1');
        }

        if ($this->bidding_minute_duration == null || $this->bidding_minute_duration < 1) {
            throw new InvalidConfigException('Bidding duration should be at least 1 minute(s)');
        }

        if ($this->timezone == null) {
            $this->timezone = 'GMT';
        }

        if ($this->current_date == null) {
            $this->current_date = date('Y-m-d  H:i:s');
        }

        //set the current timezone
        date_default_timezone_set($this->timezone);
    }

    /**
     * Add items to the active bids table
     * @param $product_id
     * @return bool
     */
    public function AddToActiveBids($product_id)
    {
        /* @var $model TbActiveBids */
        $model = $this->ValidateItem($product_id);

        $model->BIDDING_DURATION = $this->ComputeBidDuration(); //get the bid duration
        if ($model->save()) {
            return true;//saved
        } else {
            \Yii::error($model->getErrors(), 'bidExclusions'); //log to an exclusions log file;
        }
        return false;
    }

    /**
     * @param $item_count
     * @return $this
     */
    public function ProcessNextBidItems()
    {
        /* @var $model TbActiveBids */
        $exclusion_list = $this->GetExcludedItems();


        $items_to_fetch = 0;
        $exclusion_array = [];

        $item_provider = TbActiveBids::find()
            ->select(['PRODUCT_ID'])
            ->andWhere(['NOT IN', 'PRODUCT_ID', $exclusion_list])
            ->limit($this->maximum_items)
            ->asArray()
            ->all();

        $item_count = count($item_provider);

        //check if item count is less than the specified minimum
        if ($item_count < $this->maximum_items) {
            //update the active bids table first with the number of missing items
            $items_to_fetch = ($this->maximum_items - $item_count);
            \Yii::trace("Active items to fetch $items_to_fetch out of $item_count of max $this->maximum_items", 'activebids'); //log to an exclusions log file;
        }

        if ($items_to_fetch > 0) {
            foreach ($item_provider as $key => $model) {
                $exclusion_array[] = $model['PRODUCT_ID'];
            }
            if (count($exclusion_array) <= 0) {
                $this->UpdateActiveBids($items_to_fetch, $exclusion_list);
            } else {
                $this->UpdateActiveBids($items_to_fetch, $exclusion_array);
            }

            \Yii::trace("Fetching items $items_to_fetch", 'activebids'); //log to an exclusions log file;
        }
        return true;
    }

    public function Remove_Expired_Exclusions()
    {
        $query = BidExclusion::find()
            ->select(['PRODUCT_ID', 'EXCLUSION_PERIOD'])
            ->asArray()
            ->all();

        \Yii::trace("--------------------EXPIRED EXCLUSIONS-----------------------", 'activebids'); //log to an exclusions log file;
        foreach ($query as $key => $model) {
            //call function to compute duration
            $product_id = $model['PRODUCT_ID'];
            $remaining = $this->GetRemainingItemDuration($model['EXCLUSION_PERIOD']);

            \Yii::trace("Bid exclusion remaining duration $remaining  for item $product_id", 'activebids'); //log to an exclusions log file;
            //if remaining is less than zero delete that one
            $expired_array[] = $remaining;
            //before deleting add to bid exclusion list
            if ($remaining <= 0) {
                BidManager::RemoveFromExclusionList($product_id);
                \Yii::trace("Removed item $product_id", 'activebids'); //log to an exclusions log file;
            }
        }
        \Yii::trace("--------------------EXPIRED EXCLUSIONS-----------------------", 'activebids'); //log to an exclusions log file;
    }

    public function Remove_Won_Expired_Items()
    {
        $query = TbActiveBids::find()
            ->select(['PRODUCT_ID', 'BIDDING_DURATION'])
            ->asArray()
            ->all();

        \Yii::trace("-------------------------------------------", 'activebids'); //log to an exclusions log file;
        foreach ($query as $key => $model) {
            //call function to compute duration
            $product_id = $model['PRODUCT_ID'];
            $remaining = $this->GetRemainingItemDuration($model['BIDDING_DURATION']);
            //if remaining is less than zero delete that one
            $expired_array[] = $remaining;
            //before deleting add to bid exclusion list
            if ($remaining <= 0) {
                BidManager::AddToExclusionList($product_id);
                $this->RemoveExpiredBid($product_id);
                \Yii::trace("Removed item $product_id from Active Bids", 'activebids'); //log to an exclusions log file;
            } else {
                \Yii::info("Active Item remaining time is $remaining for product id $product_id", 'activebids'); //log to an exclusions log file;
            }
        }
        \Yii::trace("-------------------------------------------", 'activebids'); //log to an exclusions log file;
        return $this->ProcessNextBidItems();
    }

    public function GetExclusionList()
    {
        return $this->GetExcludedItems();
    }

    public function RemoveExpiredBid($product_id)
    {
        try {
            $model = TbActiveBids::findOne(['PRODUCT_ID' => $product_id]);
            if ($model != null) {
                $model->delete(); //delete if there is a record existing
            }
        } catch (ErrorException $e) {
            \Yii::error("Error deleting product with id $product_id $e->getMessage()", 'activebids'); //log to an exclusions log file;
        }
    }

    /**
     * Indicates if a bid is active or not
     * @param $product_id
     * @param int $bid_active
     * @return bool
     */
    public function FlagBidActiveStatus($product_id, $bid_active = 0)
    {
        /* @var $model TbActiveBids */
        $model = $this->ValidateItem($product_id);
        $model->BID_ACTIVE = $bid_active;
        if ($model->save()) {
            return true;
        } else {
            //log the errors
            $errors = json_encode($model->getErrors());
            \Yii::error("Error deleting product with id $product_id $errors", 'activebids'); //log to an exclusions log file;
        }

        return false;
    }
//=============================== PRIVATE FUNCTIONS ========================================================


    /**
     * Check if a record already exists
     * @param $product_id
     * @return bool|static
     */
    private
    function ValidateItem($product_id)
    {
        $model = TbActiveBids::findOne(['PRODUCT_ID' => $product_id]);
        if ($model == null) {
            //i is a new record
            $model = new TbActiveBids();
            $model->isNewRecord = true;
            $model->PRODUCT_ID = $product_id;
        }
        return $model; //return the model if the record does exist
    }

    /**
     * returns the bid duration timestamp
     * @return false|int
     */
    private
    function ComputeBidDuration()
    {
        //$currentDate = strtotime($date);
        $bidDuration = strtotime($this->current_date . "+$this->bidding_minute_duration minutes");
        return $bidDuration;
    }

    /**
     * @param $bid_duration
     * @return int
     */
    private
    function GetRemainingItemDuration($bid_duration)
    {
        $currentDate = strtotime($this->current_date);
        (int)$remaining_time = round((($bid_duration - $currentDate) / 60), PHP_ROUND_HALF_DOWN);

        // \Yii::info("Duration $remaining_time remaining of $bid_duration", 'activebids'); //log to an exclusions log file;
        return $remaining_time;
    }

    /**
     * Process the next batch of items to be added to the active bids table
     * @param $items_to_update
     * @param $excluded_items
     */
    private
    function UpdateActiveBids($items_to_update, $excluded_items, $allow_auction = [1])
    {
        $products_records = FryProducts::find()
            ->select('productid')
            ->andWhere(['NOT IN', 'productid', $excluded_items])
            ->andWhere(['IN', 'allow_auction', $allow_auction])
            ->orderBy(new Expression('rand()'))
            ->limit($items_to_update)
            ->asArray()
            ->all();

        foreach ($products_records as $value) {
            //now add it to the bid activebbids table
            $this->AddToActiveBids($value['productid']);
        }
        //next return to process bids table
        //$this->ProcessNextBidItems(); //called recursively until we have all our items
    }

    /**
     * get items in the bid exclusion list
     * @return array
     */
    private
    function GetExcludedItems()
    {
        $exclusion_array = [];
        //clean the table
        //BidManager::RemoveItemsFromBidActivity();
        $nested_items_array = BidExclusion::find()
            ->select(['PRODUCT_ID', 'EXCLUSION_PERIOD', 'BIDDING_PERIOD'])
            //->where('HIGH_DEMAND = 0')
            //->orderBy(['AUCTION_COUNT' => SORT_ASC])
            ->asArray()
            ->all();
        //flatten the nested arrays

        foreach ($nested_items_array as $item) {
            $bid_duration = $item['BIDDING_PERIOD'];
            $futureExpiry = $item['EXCLUSION_PERIOD'];

            $bid_duration = $this->GetRemainingItemDuration($bid_duration);
            $bid_expiry = $this->GetRemainingItemDuration($futureExpiry);

            if ($bid_expiry > 0 || $bid_duration >= 0) {
                $exclusion_array[] = $item['PRODUCT_ID'];
            }
        }

        return $exclusion_array;
    }

//End of the class
}