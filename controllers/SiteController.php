<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\data\ActiveDataProvider;
use yii\db\Expression;

use app\components\AuthHandler;

use app\models\LoginForm;
use app\models\ContactForm;

use app\models\BidActivity;
use app\module\products\models\Products;
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


    /**
     * @inheritdoc
     */
    /* public function actions()
     {
         return [
             'error' => [
                 'class' => 'yii\web\ErrorAction',
             ],
             'captcha' => [
                 'class' => 'yii\captcha\CaptchaAction',
                 'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
             ],
         ];
     }*/

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
     * @param yii\authclient\ClientInterface $client
     * @return boolean|yii\web\Response
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
    public function actionIndexOld()
    {
        return $this->render('index');
    }

    public function actionIndex()
    {
        $item_array = BidManager::GetExclusionItems();
        $dataProvider = new ActiveDataProvider([
            'query' => Products::find()
                ->where(['ALLOW_AUCTION' => 1,])
                ->andWhere(['>=', 'CURRENT_STOCK_LEVEL', 1])//stock levels should be greater or equal to 1
                //->andWhere(['NOT IN', 'SKU', $item_array])
                ->orderBy(['rand()' => SORT_DESC]),
            //->orderBy('PRODUCT_ID ASC'),
            'pagination' => [
                'pageSize' => 20
            ],
        ]);

        $dataProvider = Products::find()->asArray();

        echo '<pre>';
        var_dump($dataProvider);
        die;
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
     * action should be called like these place-bid
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
     * action should be called like these update-bid
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
    public function actionAbout()
    {
        return $this->render('about');
    }
}
