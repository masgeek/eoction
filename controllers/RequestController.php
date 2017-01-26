<?php

namespace app\controllers;

use app\components\ProductManager;
use app\models\BidRequests;
use yii\filters\VerbFilter;

class RequestController extends \yii\web\Controller
{
    public $layout = 'column1';


    /*
     public function behaviors()
       {
           return [
               'verbs' => [
                   'class' => VerbFilter::className(),
                   'actions' => [
                       'delete' => ['post'],
                   ],
               ],
               'access' => [
                   'class' => AccessControl::className(),
                   // We will override the default rule config with the new AccessRule class
                   'ruleConfig' => [
                       'class' => AccessRule::className(),
                   ],
                   'only' => ['index','create', 'update', 'delete'],
                   'rules' => [
                       [
                           'actions' => ['index','create'],
                           'allow' => true,
                           // Allow users, moderators and admins to create
                           'roles' => [
                               User::ROLE_USER,
                               User::ROLE_MODERATOR,
                               User::ROLE_ADMIN
                           ],
                       ],
                       [
                           'actions' => ['update'],
                           'allow' => true,
                           // Allow moderators and admins to update
                           'roles' => [
                               User::ROLE_MODERATOR,
                               User::ROLE_ADMIN
                           ],
                       ],
                       [
                           'actions' => ['delete'],
                           'allow' => true,
                           // Allow admins to delete
                           'roles' => [
                               User::ROLE_ADMIN
                           ],
                       ],
                   ],
               ],
           ];
       }
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                    'request-for-bid' => ['post'],
                ],
            ],
            'access' => [
                'class' => \yii\filters\AccessControl::className(),
                'only' => ['bid-request','request-for-bid'],
                'rules' => [
                    // allow authenticated users
                    [
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                    // everything else is denied
                ],
            ],
        ];
    }

    /**
     * @return string
     */
    public function actionBidRequest()
    {
        $requestModel = new BidRequests();
        $dataProvider = ProductManager::GetItemsForSale($no_of_items = 4, $for_auction = [1, 0], $min_stock = 1, $exclusion_list = [], $random = false);
        $this->view->title = 'Request to Bid';

        return $this->render('bid-request', ['listDataProvider' => $dataProvider,'requestModel'=>$requestModel]);
    }

    public function actionRequestForBid()
    {
        $model = new BidRequests();

        $product_id = \Yii::$app->request->post('PRODUCT_ID',0);
        $user_id = \Yii::$app->request->post('USER_ID',0);
//fist we will check if that product is already added is so we will proceed to add the user only
        var_dump($_POST);
        if ($model->load(\Yii::$app->request->post()) && $model->save()) {
            echo $model->REQUEST_ID;
        } else {
            var_dump($model->getErrors());
        }
        //lets post this request to the releveant table
        //return $this->render('//site/coming-soon');
    }
}
