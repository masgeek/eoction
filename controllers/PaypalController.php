<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 11/25/2016
 * Time: 12:05 AM
 */

namespace app\controllers;

use app\components\ProductManager;
use app\module\products\models\PaypalTransactions;
use app\module\products\product;
use PayPal\Api\PaymentExecution;
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

        $subtotal = 0;
        $shipping = 0;
        $total = 0;

        $apiContext = Yii::$app->paypal->getApiContext();
        $payer = new Payer();
        $payer->setPaymentMethod("paypal"); //method is by paypal account


        $paypal_items = ProductManager::GetPaypalItems($id);

        $itemsArr = [];
        foreach ($paypal_items['ITEMS'] as $summary_item) {
            $item1 = new \PayPal\Api\Item(); //set item details
            $item1->setName($summary_item['NAME'])
                ->setDescription($summary_item['DESC'])
                ->setCurrency('USD')
                ->setQuantity(1)
                ->setPrice($summary_item['PRICE']);

            $itemsArr[] = $item1;
        }


        foreach ($paypal_items['SUMMARY'] as $summary_item) {
            $subtotal = $summary_item['SUB_TOTAL'];
            $shipping = $summary_item['SHIPPING_TOTAL'];
            $total = $summary_item['TOTAL'];

        }

        $itemList = new ItemList();
        //$itemList->setItems(array($item1,$item1));
        $itemList->setItems($itemsArr);
        $details = new Details();


        $details->setShipping($shipping)///no need for shipping on this one its a digitl good
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
        $redirectUrls->setReturnUrl("{$baseUrl}paypal/result?id={$id}&status=true")
            ->setCancelUrl("{$baseUrl}paypal/result?id={$id}&status=false");

        $payment = new Payment();
        $payment->setIntent("sale")
            ->setPayer($payer)
            ->setRedirectUrls($redirectUrls)
            ->setTransactions(array($transaction));
        $request = clone $payment;

        try {
            $payment->create($apiContext);
            $hash = md5($payment->getId());

            \Yii::$app->session['paypal_hash'] = $hash; //used to track the transaction in browser session
            //let us save this transaction to the paypal tables
            $paypalTransactions = new PaypalTransactions();
            $paypalTransactions->USER_ID = $id;
            $paypalTransactions->PAYMENT_ID = $payment->getId();
            $paypalTransactions->HASH = $hash;
            $paypalTransactions->COMPLETE = 0;

            //save the transaction details
            $paypalTransactions->save();
        } catch (Exception $ex) {
            // ResultPrinter::printError("Created Payment Order Using PayPal. Please visit the URL to Approve.", "Payment", null, $request, $ex);
            //exit(1);
            $this->redirect('error');
        }
        $approvalUrl = $payment->getApprovalLink();

        //now let us redirect to the approval URL to allow the client to pay
        $this->redirect($approvalUrl);
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


    /**
     * Process teh result from the paypal gateway
     * @param $status
     * @param null $PayerID
     */
    public function actionResult($status, $PayerID = null)
    {
        if ($status == 'true') {
            Yii::$app->getSession()->setFlash('success', 'Item purchased successfully');
            $context = Yii::$app->paypal->getApiContext();
            $transactionPayment = PaypalTransactions::findOne(['HASH' => Yii::$app->session['paypal_hash']]);
            //var_dump($transactionPayment);

            $payment = Payment::get($transactionPayment->PAYMENT_ID, $context);
            //var_dump($payment);
            $execution = new PaymentExecution();
            $execution->setPayerId($PayerID);
            //now charge the user account
            $payment->execute($execution, $context);

            //update the transaction
            $transactionPayment->COMPLETE = 1;
            $transactionPayment->save(); //update the changes to the table

            //SEND email to the user
            $this->redirect(['success']);
        } else {
            //go back to the main page and say it was cancelled
            Yii::$app->getSession()->setFlash('warning', 'You have cancelled the transaction');
            $this->redirect(['cancel']);
        }
    }
}