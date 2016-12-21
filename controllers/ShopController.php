<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/07
 * Time: 15:57
 */

namespace app\controllers;

use app\components\CartManager;
use app\module\products\models\ItemsCart;
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

    //entry page
    public function actionIndex()
    {
        $dataProvider = ProductManager::GetItemsForSale($no_of_items = 20, $for_auction = [1, 0], $min_stock = 1, $exclusion_list = [],$random = false);
        $this->view->title = 'Online Shopping';
        return $this->render('//site/shop', ['listDataProvider' => $dataProvider]);
    }

    /**
     * @param $product_id
     * @param $sku
     * @return string
     */
    public function actionItemUpdate($product_id, $sku)
    {
        //lets fetch the auction details of a product
        //number of bids
        //current bid price
        $updateData = [
            'product_id' => $product_id,
            'bid_price' => BidManager::GetMaxBidAmount($product_id),
            'bid_count' => ProductManager::GetNumberOfBids($product_id),
            'discount' => ProductManager::ComputePercentageDiscount($product_id),
        ];
        return json_encode($updateData);
    }

    /**
     * @param $user_id
     * @param $product_id
     * @param $sku
     * @return string
     */
    public function actionBidWon($user_id, $product_id, $sku)
    {
        $resp = [];
        $bid_winner = BidManager::GetBidWinner($product_id, $sku);
        if ($bid_winner > 0) {
            $resp = BidManager::MarkBidAsWon($user_id, $product_id);
        }

        return json_encode($resp);
    }


    /**
     * @param $user_id
     * @param $product_id
     * @param $price
     * @return \yii\web\Response
     */
    public function actionAddToCart($user_id, $product_id, $price)
    {
        //check if user is logged in
        if (Yii::$app->user->isGuest):
            //redirect to login
            return $this->redirect(['//login']);
        else:
            //add it to the cart
            $resp = CartManager::AddItemsToCart($user_id, $product_id, $price);

            if ($resp == true) {
                return $this->redirect(['//shop/cart', 'id' => $user_id]);
            }
            //return to shopping page
            return $this->redirect(['//shop/index']);
        endif;
    }

    public function actionRemoveItem($id)
    {
        //delete cart item
        $resp = [
            'REMOVED' => false
        ];
        if (ItemsCart::findOne($id)->delete()) {
            $resp = ['REMOVED' => true];
        }
        return json_encode($resp);
    }

    public function actionCart($id)
    {
        $cartDataProvider = ProductManager::GetUserCartItems($id, $sold_status = [0]);
        return $this->render('my-cart', ['cartDataProvider' => $cartDataProvider, 'user_id' => $id]);
    }

    public function actionWishlist()
    {
        return $this->render('//site/coming-soon');
    }

    public function actionPurgeDb($action)
    {
        ProductManager::CleanBiddingData();
    }
}