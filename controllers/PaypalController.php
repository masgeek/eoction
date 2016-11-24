<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 11/25/2016
 * Time: 12:05 AM
 */

namespace app\controllers;

use Yii;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;


use PayPal\Api\Amount;
use PayPal\Api\Details;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\Transaction;
use PayPal\Api\ItemList;
use PayPal\Api\RedirectUrls;

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
        $apiContext = Yii::$app->paypal->getApiContext();

        $payer = new Payer();
        $payer->setPaymentMethod("paypal"); //method is by paypal account


        $item1 = new \PayPal\Api\Item(); //set item details
        $item1->setName('Software')
            ->setCurrency('USD')
            ->setQuantity(1)
            ->setPrice(10);

        $itemList = new ItemList();
        $itemList->setItems(array($item1));
        $details = new Details();
        /*$details->setShipping(1.2) ///no need for shipping on this one its a digitl good
            ->setTax(1.3)
            ->setSubtotal(17.50);*/
        $amount = new Amount();
        $amount->setCurrency("USD")
            ->setTotal(10)//set the amount
            ->setDetails($details);

        $transaction = new Transaction();
        $transaction->setAmount($amount)
            ->setItemList($itemList)
            ->setDescription("Payment description")
            ->setInvoiceNumber(uniqid());

        $baseUrl = 'http://localhost:81';//getBaseUrl(); //we will need to host it so that the redirect after payment works okay

        $redirectUrls = new RedirectUrls();
        $redirectUrls->setReturnUrl("$baseUrl/eoction/paypal/result?id=$id&status=true")
            ->setCancelUrl("$baseUrl/eoction/paypal/result?id=$id&status=false");

        $payment = new Payment();
        $payment->setIntent("sale")
            ->setPayer($payer)
            ->setRedirectUrls($redirectUrls)
            ->setTransactions(array($transaction));
        $request = clone $payment;

        try {
            $payment->create($apiContext);
        } catch (Exception $ex) {
            ResultPrinter::printError("Created Payment Order Using PayPal. Please visit the URL to Approve.", "Payment", null, $request, $ex);
            exit(1);
        }
        $approvalUrl = $payment->getApprovalLink();

        //now let us redirect to the approval URL to allow the client to pay
        $this->redirect($approvalUrl);

    }

    /**
     * @return \yii\web\Response
     *
     * process the result from the paypal payment action
     *
     * I will need to move to a live domain and cleanup the URL for better and roust evaluation
     */
    public function actionResult($id, $status, $token)
    {
        if ($status == 'true') {
            Yii::$app->getSession()->setFlash('success', 'Item purchased successfully, please click on the link to download');
            //return $this->redirect(['download']);
        } else {
            //go back to the main page and say it was cancelled
            Yii::$app->getSession()->setFlash('warning', 'You have cancelled the transaction');
            //$this->redirect(['purchase']);
        }
        $this->redirect(['//shop/cart', 'id' => $id]);
        var_dump($_REQUEST);
    }
}