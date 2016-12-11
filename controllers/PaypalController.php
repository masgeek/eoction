<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 11/25/2016
 * Time: 12:05 AM
 */

namespace app\controllers;

use app\components\ShipStationHandler;
use app\module\products\models\ShippingService;
use Yii;
use yii\web\Controller;


use app\components\ProductManager;
use app\module\products\models\PaypalTransactions;


use PayPal\Api\Amount;
use PayPal\Api\Details;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\Transaction;
use PayPal\Api\ItemList;
use PayPal\Api\RedirectUrls;
use PayPal\Api\PaymentExecution;

class PaypalController extends Controller
{

    /**
     *This action allows the processing of the paypal payment via REST API
     *
     * for now all parameters are hardcoded but we will need to pull this data from a database or some other dynamic source
     */
    public function actionPaypalCheckout($id)
    {
        //initalize the paypal extension so that we can get the default parameters
        Yii::$app->paypal->init();

        $subtotal = 0;
        $shipping = 0;
        $total = 0;

        $apiContext = Yii::$app->paypal->getApiContext();
        $payer = new Payer();
        $payer->setPaymentMethod("paypal"); //method is by paypal account


        $paypal_items = ProductManager::GetPaypalItems($id); //get the items to be paid for

        if (count($paypal_items) > 0) {
            $cartItemsArr = [];
            foreach ($paypal_items['ITEMS'] as $summary_item) {
                $cart_item = new \PayPal\Api\Item(); //set item details
                $cart_item->setName($summary_item['NAME'])
                    ->setDescription($summary_item['DESC'])
                    //->setUrl($summary_item['ITEM_ID'])
                    ->setCurrency('USD')
                    ->setQuantity(1)//always one item at a time
                    ->setPrice($summary_item['PRICE']);

                $cartItemsArr[] = $cart_item;
            }


            foreach ($paypal_items['SUMMARY'] as $summary_item) {
                $subtotal = $summary_item['SUB_TOTAL'];
                $shipping = $summary_item['SHIPPING_TOTAL'];
                $total = $summary_item['TOTAL'];

            }

            $itemList = new ItemList();
            //$itemList->setItems(array($item1,$item1));
            $itemList->setItems($cartItemsArr);
            $details = new Details();


            $details->setShipping($shipping)///no need for shipping on this one its a digital good
            ->setTax(0)
                ->setSubtotal($subtotal);
            $amount = new Amount();
            $amount->setCurrency("USD")
                ->setTotal($total)//set the amount
                ->setDetails($details);

            $transaction = new Transaction();
            $transaction->setAmount($amount)
                ->setItemList($itemList)
                ->setDescription("Payment description")
                ->setInvoiceNumber(uniqid());


            //$baseUrl = 'http://localhost:81';//getBaseUrl(); //we will need to host it so that the redirect after payment works okay
            $baseUrl = \yii\helpers\Url::home(true);

            $redirectUrls = new RedirectUrls();
            $redirectUrls->setReturnUrl("{$baseUrl}paypal/confirm?status=true")
                ->setCancelUrl("{$baseUrl}paypal/confirm?status=false");

            $payment = new Payment();
            $payment->setIntent("sale")
                ->setPayer($payer)
                ->setRedirectUrls($redirectUrls)
                ->setTransactions(array($transaction));
            try {
                $payment->create($apiContext);
                $paypal_hash = md5($payment->getId());

                \Yii::$app->session['paypal_hash'] = $paypal_hash; //used to track the transaction in browser session

                //update teh cart with the new paypal hash values
                foreach ($paypal_items['ITEMS'] as $summary_item) {
                    $pk = $summary_item['ITEM_ID'];
                    ProductManager::AddPaypalHash($pk, $paypal_hash);
                }
                //let us save this transaction to the paypal tables
                $paypalTransactions = new PaypalTransactions();
                $paypalTransactions->USER_ID = $id;
                $paypalTransactions->PAYMENT_ID = $payment->getId();
                $paypalTransactions->HASH = $paypal_hash;
                $paypalTransactions->COMPLETE = 0;

                //save the transaction details
                $paypalTransactions->save();
            } catch (Exception $ex) {
                $this->redirect('error');
            }
            $approvalUrl = $payment->getApprovalLink();

            //now let us redirect to the approval URL to allow the client to pay
            return $this->redirect($approvalUrl);
        }
    }

    public function actionSuccess()
    {
        return $this->render('success');
    }

    public function actionCancel()
    {
        return $this->render('cancel');
    }

    public function actionError()
    {
        return $this->render('paypal-error');
    }

    public function actionConfirm($status, $PayerID = null)
    {
        $model = new ShippingService();

        $paypal_hash = Yii::$app->session['paypal_hash'];

        $transactionPayment = PaypalTransactions::findOne(['HASH' => $paypal_hash]);
        if ($transactionPayment == null) {
            return $this->redirect(['error']);
        }

        if ($status == 'true') {
            /*if($model->load(Yii::$app->request->post())){

                var_dump($_POST);

                die;
            }*/
            if ($model->load(Yii::$app->request->post()) && $model->save()) {
                //update the transaction
                return $this->redirect(['confirm-order', 'paypal_hash' => $paypal_hash, 'PayerID' => $PayerID]);
            }
        } elseif ($status == 'false') {
            return $this->redirect(['cancel']);
        }


        //$t = $shipStation->ListAllCarriers();
        //$t = $shipStation->ListCarrierServices();
        //$t = $shipStation->ListCarrierPackage();
        //$t = $shipStation->ListMarketPlace();
        //$t = $shipStation->ListStores();
        //print_r(\GuzzleHttp\json_decode($t));
        //die;
        return $this->render('confirm-order', [
            'model' => $model,
            'payment_id' => $transactionPayment->ID
        ]);
    }

    /**
     * Updates an existing ShippingService model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = ShippingService::findOne($id);
        $shipStation = new ShipStationHandler();


        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            //update the order
            $hash = $model->pAYPALTRANS->HASH;
            $user_id = $model->pAYPALTRANS->USER_ID;
            $trans_id = $model->pAYPALTRANS->ID;
            //lets create the order after a successful payment and confirmation
            $order_status = $shipStation->CreateNewOrder($hash, $user_id); //use the paypal hash
            //update the car items as paid for so that they no longer appear in the cart
            //SEND email to the user
            return $this->redirect(['success', 'trans_id' => $trans_id]);
        }
            return $this->render('edit-order', [
                'model' => $model,
                'payment_id' => $model->pAYPALTRANS->ID,
            ]);
    }

    /**
     * @param $paypal_hash
     * @return \yii\web\Response
     */
    public function actionConfirmOrder($paypal_hash, $PayerID)
    {
        $shipStation = new ShipStationHandler();
        Yii::$app->getSession()->setFlash('success', 'Item purchased successfully');
        $context = Yii::$app->paypal->getApiContext();
        $transactionPayment = PaypalTransactions::findOne(['HASH' => $paypal_hash]);
        if ($transactionPayment != null) {
            $transactionPayment->COMPLETE = 1;
            if ($transactionPayment->save())//update the changes to the table
            {
                //now save the transaction data
                //$payment = Payment::get($transactionPayment->PAYMENT_ID, $context);


                //get the payment infor from paypal
                //$execution = new PaymentExecution();
                //$execution->setPayerId($PayerID);

                //now charge the user account
                //$payment->execute($execution, $context);

                //let us update the hash values
                ProductManager::UpdatePaidCartItems($paypal_hash);

                //clear the hash session value
                Yii::$app->session->remove('paypal_hash');
            }

            //lets create the order after a successful payment and confirmation
            $order_status = $shipStation->CreateNewOrder($transactionPayment->HASH, $transactionPayment->USER_ID); //use the paypal hash
            //update the car items as paid for so that they no longer appear in the cart
            //SEND email to the user
            return $this->redirect(['success', 'trans_id' => $transactionPayment->ID]);
        }
        return $this->redirect(['error']); //redirect to error page by default
    }

    //json functions
    /**
     * @return string
     */
    public function actionSelectService()
    {
        $shipStation = new ShipStationHandler();

        $post = Yii::$app->request->post('depdrop_all_params');
        $carrier_code = $post['carrier-code'];

        $carrierServices = $shipStation->ListCarrierServices($carrier_code, $as_array = true);


        //var_dump($carrierServices);
        //die;
        $dat = (['output' => $carrierServices]);

        return \GuzzleHttp\json_encode($dat);
    }

    //json functions

    /**
     * @return string
     */
    public function actionSelectPackage()
    {
        $shipStation = new ShipStationHandler();

        $post = Yii::$app->request->post('depdrop_all_params');

        $carrier_code_raw = $post['service-desc'];

        $splitList = explode('|', $carrier_code_raw);

        $service_code = isset($splitList[0]) ? $splitList[0] : null; //will not be used
        $carrier_code = isset($splitList[1]) ? $splitList[1] : null;
        $domestic = isset($splitList[2]) ? (boolean)$splitList[2] : false;
        $international = isset($splitList[3]) ? (boolean)$splitList[3] : false;

        //var_dump($splitList);
        //die;

        //$domestic_raw ? $domestic = true : $domestic = false;
        //$international_raw ? $international = true : $international = false;

        //echo("$domestic - $international - $carrier_code");

        $carrierPackage = $shipStation->ListCarrierPackage($carrier_code, $domestic, $international, $as_array = true);

        //var_dump($carrierPackage);
        //die;
        // Shows how you can preselect a value
        $dat = (['output' => $carrierPackage]);

        return \GuzzleHttp\json_encode($dat);
    }
}