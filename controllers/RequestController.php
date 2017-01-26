<?php

namespace app\controllers;

use app\components\ProductManager;
use app\models\BidRequesters;
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
                'only' => ['bid-request', 'request-for-bid'],
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

        return $this->render('bid-request', ['listDataProvider' => $dataProvider, 'requestModel' => $requestModel]);
    }

    public function actionRequestForBid()
    {
        $product_id = \Yii::$app->request->post('PRODUCT_ID', 0);
        $user_id = \Yii::$app->request->post('USER_ID', 0);

        $requesteModel = new BidRequests();
        $requesterModel = new BidRequesters();


//fist we will check if that product is already added is so we will proceed to add the user only
        $recordCheck = BidRequests::findOne($product_id);

        if($recordCheck==null) {
            if ($requesteModel->load(\Yii::$app->request->post())) {
                echo $requesteModel->primaryKey;
            } else {
                var_dump($requesteModel->getErrors());
            }
        }else{
            //add to the user requests table
        }
        //lets post this request to the releveant table

        if($requesteModel->save()){

        }
        //return $this->render('//site/coming-soon');
    }
    /**
     * Finds the Users model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Users the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = BidRequests::findOne($id)) !== null) {
            return $model;
        } else {
            return new BidRequests(); //return new instance pof th model
        }
    }
}
