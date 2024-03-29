<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/07
 * Time: 15:57
 */

namespace app\controllers;


use app\module\products\models\FryProducts;
use app\module\products\ProductsSearch;
use Yii;
use yii\filters\AccessControl;
use yii\helpers\VarDumper;
use yii\web\Controller;
use yii\filters\VerbFilter;

use app\bidding\BidManager;
use app\components\ProductManager;
use app\components\CartManager;
use app\module\products\models\ItemsCart;

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
        $session = Yii::$app->session;
        $session->set('search_url', \yii\helpers\Url::toRoute(['search-shop']));

        $cartModel = new ItemsCart();
        $dataProvider = ProductManager::GetItemsForSale($no_of_items = 4);
        return $this->render('shop', ['listDataProvider' => $dataProvider, 'cartModel' => $cartModel]);
    }

    public function actionSearchShop($q)
    {
        $search = new ProductsSearch();
        $cartModel = new ItemsCart();
        $this->view->title = 'Search - Online Shopping';
        $dataProvider = $search->productsearch($q, $no_of_items = 20, $auction_param = [1, 0], $min_stock = 0);

        return $this->render('shop', ['listDataProvider' => $dataProvider, 'cartModel' => $cartModel]);
    }

    /**
     * @param int $product_id
     * @param $sku
     * @param int $starting_bid
     * @return string
     */
    public function actionItemUpdate($product_id, $sku, $starting_bid = 0)
    {
        /* @var $model FryProducts */

        //lets fetch the auction details of a product
        //number of bids
        //current bid price
        $model = FryProducts::findOne($product_id);

        if ($starting_bid > 0) {
            $bid_price = $starting_bid;
        } else {
            $bid_price = $model->price;
        }

        $discount = ProductManager::ComputePercentageDiscount($model->buyitnow, $bid_price);

        $updateData = [
            'product_id' => $product_id,
            'sku' => $sku,
            'bid_price' => BidManager::GetMaxBidAmount($product_id, true, false, $starting_bid),
            'bid_count' => ProductManager::GetNumberOfBids($product_id),
            'discount' => $discount,
            //'winning_user' => BidManager::GetWinningUser($product_id, $sku, false)
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
        $resp_code = 0;
        $bid_winner = BidManager::GetBidWinner($product_id, $sku);
        $winning_user = BidManager::GetWinningUser($product_id, $sku, true);
        $winning_amount = BidManager::GetMaxBidAmount($product_id);

        if ($bid_winner > 0) {
            $resp_code = BidManager::MarkBidAsWon($user_id, $product_id);
        }

        $resp = [
            'resp' => $resp_code,
            'winning_amount' => $winning_amount,
            'winning_user' => $winning_user
        ];

        return json_encode($resp);
    }


    public function actionAddToCart()
    {
        $model = new ItemsCart();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['//shop/cart', 'id' => $model->USER_ID]);
        } else {
            return $this->redirect(['//shop/index']);
        }
    }

    public function actionAddToCart2($user_id, $product_id, $price)
    {
        //check if user is logged in
        if (Yii::$app->user->isGuest):
            //redirect to login
            return $this->redirect(['//login']);
        else:
            //add it to the cart
            $resp = CartManager::AddItemsToCart($user_id, $product_id, $price, 0, 0);

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
            'removed' => false
        ];
        if (ItemsCart::findOne($id)->delete()) {
            $resp = [
                'removed' => true,
                'items_count' => CartManager::GetCartItems(yii::$app->user->id),
                'item_total' => 45
            ];
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


    public function actionWinningUser($product_id, $sku, $bid_won = false)
    {
        $winner = BidManager::GetWinningUser($product_id, $sku, $bid_won);

        return json_encode($winner);
    }

    public function actionCartItems()
    {

        $items_count = CartManager::GetCartItems(yii::$app->user->id);
        $resp = [
            'items_count' => $items_count
        ];
        return json_encode($resp);
    }

    public function actionPurgeDb()
    {
        ProductManager::CleanBiddingData();
    }
}