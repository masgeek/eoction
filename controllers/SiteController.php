<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\data\ActiveDataProvider;
use yii\db\Expression;

use app\models\LoginForm;
use app\models\ContactForm;

use app\models\BidActivity;
use app\module\products\models\Products;
use app\vendor\customhelper\BidManager;

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
    public function actions()
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
        $dataProvider = new ActiveDataProvider([
            'query' => Products::find()
                ->where(['ALLOW_AUCTION' => 1])
                ->orderBy('PRODUCT_ID ASC')->limit(12),
            'pagination' => [
                'pageSize' => 2
            ],
        ]);


        $this->view->title = 'Posts List';
        return $this->render('index', ['listDataProvider' => $dataProvider]);
    }

    public function actionNextItem()
    {
        $nextItem = BidManager::GetNextItemToBid();

        echo json_encode($nextItem);
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
        $activitycount = 1; //this counts the number of activities for the product
        $bidactivity = BidActivity::findOne(['PRODUCT_SKU' => $sku]);

        $expression = new Expression('NOW()');

        if ($bidactivity == null) {
            //insert a new record
            $model = new BidActivity();

            $model->isNewRecord = true;
            $model->PRODUCT_ID = $id;
            $model->PRODUCT_SKU = $sku;
            $model->ACTIVITY_COUNT = $activitycount;
            $model->BID_DATE = $expression;
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
                ];
            } else {
                //alert user
                $resp = [
                    'msg' => $model->getErrors(),
                    'success' => false,
                    'product_id' => $model->PRODUCT_ID,
                    'sku' => $model->PRODUCT_SKU,
                ];
            }
        } else {
            //update the existing record
            // get the last activity count
            $activitycount = (int)$bidactivity->ACTIVITY_COUNT;
            //now inrement it by one and save it back
            $bidactivity->ACTIVITY_COUNT = $activitycount + 1;
            $bidactivity->BID_DATE = $expression;
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
                ];
            } else {
                //alert user
                $resp = [
                    'msg' => $bidactivity->getErrors(),
                    'success' => false,
                    'product_id' => $bidactivity->PRODUCT_ID,
                    'sku' => $bidactivity->PRODUCT_SKU,
                ];
            }
        }

        //return the json response
        echo json_encode($resp);
    }

    /**
     * @param $id
     * @param $user_id
     * @param $sku
     * action should be called like these update-bid
     */
    public function actionUpdateBid($id, $user_id, $sku)
    {
        echo json_encode("Bid Updated " . $sku);
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
