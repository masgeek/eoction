<?php

namespace app\controllers;

use app\components\ProductManager;
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
        $dataProvider = ProductManager::GetItemsForSale($no_of_items = 20, $for_auction = [1, 0], $min_stock = 1, $exclusion_list = [], $random = false);
        $this->view->title = 'Request to Bid';

        return $this->render('bid-request', ['listDataProvider' => $dataProvider]);
    }

    public function actionRequestForBid($user_id, $product_id)
    {
        return $this->render('//site/coming-soon');
    }
}
