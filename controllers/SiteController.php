<?php

namespace app\controllers;


use MichaelB\ShipStation\Models\Address;
use MichaelB\ShipStation\Models\Order;
use MichaelB\ShipStation\Models\OrderItem;
use MichaelB\ShipStation\ShipStationApi;
use PayPal\Test\Api\OrderTest;
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
    public function actionShipOrders($id = null)
    {
        $endpointurl = \Yii::$app->params['ShipStationApiUrl'];
        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];

        $options = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);


        $orderservice = $shipstation->getOrdersService();

        $searchParams = [
            'orderNumber' => $id
        ];
        $order = $orderservice->getOrder($id);

        $body = $order->getBody();

        echo $body;
        /*$filters 	= array
        (
            'orderNumber'		=> $id = '005',
            //'orderStatus' 		=> "", // {awaiting_shipment, on_hold, shipped, cancelled}
            //'storeid' 			=> "",
            //'customerName' 		=> "",
            //'itemKeyword'  		=> "", // Searchs on Sku, Description, and Options
            //'paymentDateStart' 	=> "", // e.g. 2014-01-01
            //'paymentdateend' 	=> "", // e.g. 2014-01-04 (there is no typo, camel case isn't applied)
            //'orderDateStart' 	=> "", // e.g. 2014-01-01
            //'orderDateEnd' 		=> "", // e.g. 2014-01-04
            //'modifyDateStart' 	=> "", // e.g. 2014-01-01
            //'modifyDateEnd' 	=> "", // e.g. 2014-01-04
            //'page' 				=> "",
            //'pageSize' 			=> "", // Max: 500, Default: 100
        );
        $searchResult 	= $orderservice->getListing($filters); //$shipstation->getOrders($filters);
        $orders 		= $searchResult->getBody();
        //$totalResults 	= $searchResult->total;
        //$currentPage 	= $searchResult->page;
        // WARNING: if there is only 1 page this value returns 0...
        //$totalPages 	= $searchResult->pages;
        //print_r($orders);


        echo($orders);*/

        return $this->render('about');
    }

    public function actionShipStation()
    {
        $endpointurl = \Yii::$app->params['ShipStationApiUrl'];
        $apikey = \Yii::$app->params['ShipStationApiKey'];
        $apisecret = \Yii::$app->params['ShipStationApiSecret'];

        $options = [];
        $shipstation = new ShipStationApi($apikey, $apisecret, $options);


        $orderservice = $shipstation->getOrdersService();
        $productservice = $shipstation->getProductsService();
        //echo "{$endpointurl}/{$apikey}/{$apisecret}";


        $order = new Order();
        //$order->orderId = 1;
        $order->orderNumber = "005";
        //$order->orderKey = null; // if specified, the method becomes idempotent and the existing Order with that key will be updated
        $order->orderDate = date('Y-m-d') . 'T' . date('H:i:s') . '.0000000';
        $order->paymentDate = date('Y-m-d') . 'T' . date('H:i:s') . '.0000000';
        $order->orderStatus = "awaiting_shipment"; // {awaiting_shipment, on_hold, shipped, cancelled}
        $order->customerUsername = "Otoniel Ortega";
        $order->customerEmail = "ortega.x3@gmail.com";
        $order->amountPaid = 150.00;
        $order->taxAmount = 25.00;
        $order->shippingAmount = 25.00;
        $order->customerNotes = null;
        $order->internalNotes = "Express Shipping Please";
        $order->gift = null;
        $order->giftMessage = null;
        $order->requestedShippingService = "Priority Mail";
        $order->paymentMethod = null;
        $order->carrierCode = "fedex";
        $order->serviceCode = "fedex_2day";
        $order->packageCode = "package";
        $order->confirmation = null;
        $order->shipDate = null;

        //Billing Cl;ass
        $billing = new Address();
        $billing->name = "Sammy Barasa"; // This has to be a String... If you put NULL the API cries...
        $billing->company = null;
        $billing->street1 = null;
        $billing->street2 = null;
        $billing->street3 = null;
        $billing->city = null;
        $billing->state = null;
        $billing->postalCode = null;
        $billing->country = null;
        $billing->phone = null;
        $billing->residential = null;
        $order->billTo = $billing;


        //Shipping address
        $shipping = new Address();
        $shipping->name = "Sammy Barasa";
        $shipping->company = "Go-Parts";
        $shipping->street1 = "Santa Clarita #1234";
        $shipping->street2 = null;
        $shipping->street3 = null;
        $shipping->city = "Los Angeles";
        $shipping->state = "CA";
        $shipping->postalCode = "90002";
        $shipping->country = "US";
        $shipping->phone = "555-555-5555";
        $shipping->residential = null;
        $order->shipTo = $shipping;


        //Add the individual items now
        for ($x = 0; $x <= 5; $x++) {
            $orderItem = new OrderItem();
            $orderItem->lineItemKey = '1';
            $orderItem->sku = '580123456';
            $orderItem->name = "Awesome sweater {$x}";
            $orderItem->quantity = '1';
            $orderItem->unitPrice = '29.99';
            $orderItem->warehouseLocation = 'Warehouse A';

            $items[] = $orderItem;
        }
        $order->items = $items;


        //$order = $orderservice->getOrder('1234');
        $createOrder = $orderservice->createOrder($order);
        echo($createOrder->getBody());


        return $this->render('about');
    }

    /**
     * @return string
     */
    public function actionIndex()
    {
        $exclusion_list = BidManager::GetExclusionItems();
        $dataProvider = ProductManager::GetItemsForSale($no_of_items = 20, $auction_param = [1], $min_stock = 1, $exclusion_list);

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
    public function actionAbout()
    {
        return $this->render('about');
    }
}
