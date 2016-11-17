<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/07
 * Time: 15:57
 */

namespace app\controllers;

use app\module\products\models\Products;
use Yii;
use yii\data\ActiveDataProvider;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\components\BidManager;
use app\components\ProductManager;

class ShopController extends Controller
{
    public $layout = 'column1';

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    public function actionItemUpdate($product_id, $sku)
    {
        //lets fetch the auction details of a product
        //number of bids
        //current bid price
        $updateData = [
            'product_id'=>$product_id,
            'bid_price'=>BidManager::GetMaxBidAmount($product_id),
            'bid_count'=>ProductManager::GetNumberOfBids($product_id),
            'discount' => ProductManager::ComputePercentageDiscount($product_id),
        ];
        return json_encode($updateData);
    }

    //entry page
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Products::find()
                ->where(['>=', 'CURRENT_STOCK_LEVEL', 1])//stock levels should be greater or equal to 1
                ->orderBy('PRODUCT_ID ASC'),
            'pagination' => [
                'pageSize' => 20
            ],
        ]);


        $this->view->title = 'Online Shopping';
        return $this->render('//site/shop', ['listDataProvider' => $dataProvider]);
    }
}