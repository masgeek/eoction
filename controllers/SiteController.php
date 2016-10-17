<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\data\ActiveDataProvider;
use app\models\LoginForm;
use app\models\ContactForm;

use app\module\products\models\Products;

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
            'query' => Products::find()->where(['ALLOW_AUCTION' => 1])->orderBy('PRODUCT_ID ASC'),
            'pagination' => [
                'pageSize' => 1,
            ],
        ]);

        $this->view->title = 'Posts List';
        return $this->render('index', ['listDataProvider' => $dataProvider]);
    }

    public function actionNextItem()
    {
        return $this->render('_product_view', ['response' => date('Y-M-d')]);
    }

    /**
     * @param $id
     * @param $user_id
     * @param $sku
     * action should be called like these place-bid
     */
    public function actionPlaceBid($id, $user_id, $sku)
    {
        //do the neccessary updates here
        echo json_encode('Bid placed ' . $sku);
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
