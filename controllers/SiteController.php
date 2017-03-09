<?php

namespace app\controllers;

use app\bidding\ActiveBids;
use app\components\AccountManager;
use app\components\TimeComponent;
use app\module\products\models\FryProducts;
use app\module\users\models\UserRecovery;
use Yii;
use yii\base\Security;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;

use app\models\LoginForm;
use app\models\ContactForm;

use app\bidding\BidManager;
use app\models\BidActivity;

use app\components\ProductManager;
use app\components\ShipStationHandler;

use app\module\products\ProductsSearch;
use app\module\users\models\Users;

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

        //var_dump($order_resp);
        return $this->render('about');
    }

    /**
     * @return string
     */
    public function actionTest()
    {
        //return BidManager::AddToExclusionList(1);
        $to = ['barsamms@gmail.com' => 'Sammy Barasa'];
        Yii::$app->emailer->subject = 'Message subject here';
        Yii::$app->emailer->names = 'Sammy Barasa';
        Yii::$app->emailer->plainTextMessage = 'Hello plaintext';
        Yii::$app->emailer->htmlMessage = '<i>Hello html</i>';

        //return Yii::$app->emailer->SendEmail($to);

        //die;
        $session = Yii::$app->session;
        $session->set('search_url', \yii\helpers\Url::toRoute(['search-bids']));

        //$exclusion_list = BidManager::GetExclusionItems();
        $dataProvider = ProductManager::GetItemsForBidding($no_of_items = 20, $item_won = [0], $bid_active = [0, 1]);

        $this->view->title = 'Test Live Auction';
        return $this->render('index', ['listDataProvider' => $dataProvider]);
    }


    /*public function actionIndex2()
    {
        $security = new Security();
        $randomString = $security->generateRandomString();
        $randomKey = $security->generateRandomKey();

        return $this->render('index', [
            'time' => date('H:i:s'),
            'randomString' => $randomString,
            'randomKey' => $randomKey,
        ]);
    }*/

    public function actionIndex()
    {
        $this->view->title = 'Eoction - Live Auction';

        $listDataProvider = ProductManager::GetItemsForBidding($no_of_items = YII_DEBUG ? 4 : 40, $item_won = [1, 0]);

        return $this->render('index', ['listDataProvider' => $listDataProvider]);
    }

    public function actionSearchBids($q)
    {
        $this->redirect(['index']);
        $search = new ProductsSearch();
        $this->view->title = 'Search - Live Auction';
        $dataProvider = $search->productsearch($q, $no_of_items = 12, $auction_param = [1], $min_stock = 1);

        return $this->render('index', ['listDataProvider' => $dataProvider]);
    }

    public function actionNextItem($product_id)
    {
        // usleep(1200);
        $nextItem = BidManager::GetNextItemToBid($product_id, [1, 0]);
        return json_encode($nextItem);
    }


    /**
     * @param $id
     * @param $user_id
     * @param $sku
     * @return string
     */
    public function actionPlaceBid($id, $user_id, $sku, $starting_bid = 0)
    {
        /* @var $model FryProducts */
        /* @var $bidactivity BidActivity */
        $resp = [
            'success' => false
        ];
        $first_request = false;

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


                if ($starting_bid > 0) {
                    $price = $starting_bid;
                    $first_request = true;
                } else {
                    $price = $model->pRODUCT->price;
                }

                //track the bid
                BidManager::TrackUsersBids($user_id, $id, $sku, 0, $starting_bid, $first_request);

                $discount = ProductManager::ComputePercentageDiscount($model->pRODUCT->buyitnow, $price);
                $resp = [
                    'msg' => 'Bid placed successfully',
                    'success' => true,
                    'product_id' => $model->PRODUCT_ID,
                    'sku' => $model->PRODUCT_SKU,
                    'bid_price' => BidManager::GetMaxBidAmount($model->PRODUCT_ID, true, false, $starting_bid),
                    'discount' => $discount,
                    'bid_count' => ProductManager::GetNumberOfBids($model->PRODUCT_ID),
                    //'winning_user'=>BidManager::GetWinningUser($model->PRODUCT_ID,$model->PRODUCT_SKU)
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
            //now increment it by one and save it back
            $bidactivity->LAST_BIDDING_USER_ID = $user_id;
            $bidactivity->ACTIVITY_COUNT = $activity_count + 1; //increment by 1
            //save the data
            if ($bidactivity->save()) {
                //no need to alert user return indicator so that we can swithc to auction countdown
                //track the bid per user
                BidManager::TrackUsersBids($user_id, $id, $sku, 0, $starting_bid);

                if ($starting_bid > 0) {
                    $price = $starting_bid;
                } else {
                    $price = $bidactivity->pRODUCT->price;;
                }
                $discount = ProductManager::ComputePercentageDiscount($bidactivity->pRODUCT->buyitnow, $price);
                $resp = [
                    'msg' => 'Bid updated successfully',
                    'success' => true,
                    'product_id' => $bidactivity->PRODUCT_ID,
                    'sku' => $bidactivity->PRODUCT_SKU,
                    'bid_price' => BidManager::GetMaxBidAmount($bidactivity->PRODUCT_ID, true, false, $starting_bid),
                    'discount' => $discount,
                    'bid_count' => ProductManager::GetNumberOfBids($bidactivity->PRODUCT_ID),
                    //'winning_user'=>BidManager::GetWinningUser($bidactivity->PRODUCT_ID,$bidactivity->PRODUCT_SKU)
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
     * Password recovery page
     *
     * @return string
     */
    public function actionRecover()
    {
        $model = new Users();
        $accManager = new AccountManager();

        if (Yii::$app->request->isPost) {
            $userPost = Yii::$app->request->post('Users');
            $email = $userPost['EMAIL_ADDRESS'];

            $user = Users::findOne(['EMAIL_ADDRESS' => $email]);
            if ($user != null) {

                $recovery = $accManager->GenerateRecoveryToken($user->USER_ID);
                if(!$recovery) {
                    return $this->refresh();
                }

                return $recovery;
                $to = [$user->EMAIL_ADDRESS => $user->FULL_NAMES];
                Yii::$app->emailer->subject = 'Eoction Account Password Recovery';
                Yii::$app->emailer->names = $user->FULL_NAMES;

                Yii::$app->emailer->plainTextMessage = 'Hello plaintext';
                Yii::$app->emailer->htmlMessage = '<i>Hello html</i>';

                if (Yii::$app->emailer->SendEmail($to)) {
                    Yii::$app->getSession()->setFlash('success', '<b>Password reset instructions have been sent to your registered email address</b>');
                } else {
                    Yii::$app->getSession()->setFlash('error', '<b>Unable to send password recovery email</b>');
                }
            } else {
                Yii::$app->getSession()->setFlash('error', '<b>No account matching provided email exists</b>');
            }
            return $this->refresh(); //refresh page and clear pending post values
        }
        return $this->render('recover', ['model' => $model]);
    }

    public function actionReset($token)
    {
        $time = new TimeComponent();
        $model = UserRecovery::findOne(['RECOVERY_TOKEN' => $token]);

        $remainingDuration = $time->GetRemainingDuration($model->EXPIRES);
        if ($remainingDuration <= 0) {
            return 'The recovery token has expired, please regenerate another one ' . $remainingDuration;
        }
        return $remainingDuration.$model->uSER->EMAIL_ADDRESS;
        var_dump($model);
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
        return $this->render('_about');
    }
}
