<?php

namespace app\controllers;


use app\components\ShipStationHandler;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;

use app\models\LoginForm;
use app\models\ContactForm;

use app\models\BidActivity;

use app\components\BidManager;
use app\components\ProductManager;

class SiteController extends Controller
{
    public $layout = '/main';

    /**
     * @inheritdoc
     */
    public function behaviors()
    {

        /*'access' => [
                    'class' => AccessControl::className(),
                    'only' => ['rate-ticket', 'index','view','update','delete','newticket' ],
                    'rules' => [
                            [
                                    'actions' => ['rate-ticket', 'index','view','update','delete','newticket', ],
                                    'allow' => true,
                                    'roles' => ['@'],
                            ],

                    ],
            ],*/

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

    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'auth' => [
                'class' => 'yii\authclient\AuthAction',
                'successCallback' => [$this, 'oAuthSuccess'],
            ],
        ];
    }


    /**
     * This function will be triggered when user is successfuly authenticated using some oAuth client.
     *
     * @param ClientInterface $client
     * @return Response
     */
    public function oAuthSuccess($client)
    {
        // get user data from client
        $userAttributes = $client->getUserAttributes();
        //(new AuthHandler($client))->handle();
        // do some thing with user data. for example with $userAttributes['email']
        var_dump($userAttributes);
        die;
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionGetOrders($order_id = '14847186')
    {
        $shipStationService = new ShipStationHandler();

        $order_resp = $shipStationService->GetSingleOrder($order_id); //for now we have overrriden it
        return $this->render('about');
    }

    public function actionCreateOrders($paypal_hash, $user_id)
    {
        $shipStationService = new ShipStationHandler();

        $order_resp = $shipStationService->CreateNewOrder($paypal_hash, $user_id); //for now we have overriden it

        var_dump($order_resp);
        return $this->render('about');
    }

    /**
     * @return string
     */
    public function actionTest()
    {
        $exclusion_list = BidManager::GetExclusionItems();
        $dataProvider = ProductManager::GetItemsForSale($no_of_items = 1, $auction_param = [1], $min_stock = 1, $exclusion_list,$random=false);

        $this->view->title = 'Live Auction';
        return $this->render('index_test', ['listDataProvider' => $dataProvider]);
    }

    public function actionIndex()
    {
        $exclusion_list = BidManager::GetExclusionItems();
        $dataProvider = ProductManager::GetItemsForSale($no_of_items = 80, $auction_param = [1], $min_stock = 1, $exclusion_list,$random=false);

        $this->view->title = 'Live Auction';
        return $this->render('index', ['listDataProvider' => $dataProvider]);
    }
    public function actionNextItem($product_id = 0)
    {
        $nextItem = BidManager::GetNextItemToBid($product_id);
        return json_encode($nextItem);
    }


    /**
     * @param $id
     * @param $user_id
     * @param $sku
     * @return string
     */
    public function actionPlaceBid($id, $user_id, $sku)
    {
        $resp = [
            'success' => false
        ];
        $activity_count = 1; //this counts the number of activities for the product
        $bidactivity = BidActivity::findOne(['PRODUCT_SKU' => $sku]);


        if ($bidactivity == null) {
            //insert a new record
            $model = new BidActivity();

            $model->isNewRecord = true;
            $model->PRODUCT_ID = $id;
            $model->PRODUCT_SKU = $sku;
            $model->LAST_BIDDING_USER_ID = $user_id;
            $model->ACTIVITY_COUNT = $activity_count;
            //save the data

            if ($model->save()) {
                //no need to alert user return indicator so that we can switch to auction countdown
                //track the bid
                BidManager::TrackUsersBids($user_id, $id, $sku);


                $resp = [
                    'msg' => 'Bid placed successfully',
                    'success' => true,
                    'product_id' => $model->PRODUCT_ID,
                    'sku' => $model->PRODUCT_SKU,
                    'bid_price' => BidManager::GetMaxBidAmount($model->PRODUCT_ID),
                    'discount' => ProductManager::ComputePercentageDiscount($model->PRODUCT_ID),
                    'bid_count' => ProductManager::GetNumberOfBids($model->PRODUCT_ID)
                ];
            } else {
                //alert user
                $resp = [
                    'msg' => $model->getErrors(),
                    'success' => false,
                ];
            }
        } else {
            //update the existing record
            // get the last activity count
            $activity_count = (int)$bidactivity->ACTIVITY_COUNT;
            //now inrement it by one and save it back
            $bidactivity->LAST_BIDDING_USER_ID = $user_id;
            $bidactivity->ACTIVITY_COUNT = $activity_count + 1; //increment by 1
            //save the data
            if ($bidactivity->save()) {
                //no need to alert user return indicator so that we can swithc to auction countdown
                //track the bid per user
                BidManager::TrackUsersBids($user_id, $id, $sku);
                $resp = [
                    'msg' => 'Bid updated successfully',
                    'success' => true,
                    'product_id' => $bidactivity->PRODUCT_ID,
                    'sku' => $bidactivity->PRODUCT_SKU,
                    'bid_price' => BidManager::GetMaxBidAmount($bidactivity->PRODUCT_ID),
                    'discount' => ProductManager::ComputePercentageDiscount($bidactivity->PRODUCT_ID),
                    'bid_count' => ProductManager::GetNumberOfBids($bidactivity->PRODUCT_ID)
                ];
            } else {
                //alert user
                $resp = [
                    'msg' => $bidactivity->getErrors(),
                    'success' => false,
                ];
            }
        }

        //return the json response
        return json_encode($resp);
    }

    /**
     * @param $id
     * @param $user_id
     * @param $sku
     * @return string
     */
    public function actionUpdateBid($id, $user_id, $sku)
    {
        return json_encode("Bid Updated " . $sku);
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionTerms()
    {
        return $this->render('_terms');
    }

    public function actionSellerTerms()
    {
        return $this->render('_seller_terms');
    }

    public function actionAbout()
    {
        return $this->render('about');
    }
}
