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
        $this->view->title = 'Eoction - Bid Request';
        $requestsModel = new BidRequests();
        $dataProvider = ProductManager::GetItemsForBidRequest(4, 1);


        return $this->render('bid-request', ['listDataProvider' => $dataProvider, 'requestModel' => $requestsModel]);
    }

    /**
     * @return string
     */
    public function actionRequestForBid()
    {
        //$userHost = Yii::$app->request->userHost;
        //$userIP = Yii::$app->request->userIP;
        $request = \Yii::$app->request->post('BidRequests');
        $product_id = $request['REQUESTED_PRODUCT_ID'];
        $user_id = \Yii::$app->request->post('USER_ID');
        $request_id = null;
        $requestsRecordCheck = $this->findRequestsModel($product_id);
        $requesterRecordCheck = $this->findRequesterModel($product_id, $user_id);


        $requestsModel = $requestsRecordCheck == null ? new BidRequests() : $requestsRecordCheck;
        $requesterModel = $requesterRecordCheck == null ? new BidRequesters() : $requesterRecordCheck;

        //add teh request then add the requesters

        if ($requestsRecordCheck == null) {
            if ($requestsModel->load(\Yii::$app->request->post()) && $requestsModel->save()) {
                \Yii::$app->getSession()->setFlash('success', 'Bid request placed successfully');
                $request_id = $requestsModel->REQUESTED_PRODUCT_ID;
            } else {
                var_dump($requestsModel->getErrors());
            }
        } else {
            $request_id = $requestsModel->REQUESTED_PRODUCT_ID;
        }

        if ($requesterRecordCheck == null) {
            $requesterModel->isNewRecord = true; //switch to new record scenario
        }
        //add to the user requests table
        $requesterModel->REQUESTED_ID = $request_id;
        $requesterModel->REQUESTING_USER_ID = $user_id;
        $requesterModel->CUSTOMER_NOTES = 'Requesting item for bid';


        if ($requesterModel->save()) {
            \Yii::$app->getSession()->setFlash('success', 'Bid request placed successfully');
        } else {
            var_dump($requesterModel->getErrors());
        }

        //return $this->render('//site/coming-soon');
        return $this->redirect(['bid-request']);
    }


    /**
     * @param $id
     * @return null|static
     */
    protected function findRequestsModel($id)
    {
        if (($model = BidRequests::findOne($id)) !== null) {
            return $model;
        } else {
            return null;
        }
    }

    /**
     * @param $product_id
     * @param $user_id
     * @return null|static
     */
    protected function findRequesterModel($product_id, $user_id)
    {
        if (($model = BidRequesters::findOne([
                'REQUESTED_ID' => $product_id,
                'REQUESTING_USER_ID' => $user_id,
                'REQUEST_ACCEPTED' => 0
            ])) !== null
        ) {
            return $model;
        } else {
            return null;
        }
    }
}
