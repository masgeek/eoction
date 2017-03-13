<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/10
 * Time: 14:40
 */
/* @var $model app\module\products\models\FryProducts */
/* @var $image app\module\products\models\FryProductImages */
/* @var $cartModel app\module\products\models\ItemsCart */


use yii\helpers\Html;

use app\components\ProductManager;
use kartik\form\ActiveForm;

$formatter = \Yii::$app->formatter;

$imageHost = \Yii::$app->params['ExternalImageServerLink'];
$imageFolder = \Yii::$app->params['ExternalImageServerFolder'];

$image_url = $model->image1;

$product_image = ProductManager::CheckImageExists($image_url);


$retail_price_raw = $formatter->asDecimal($model->buyitnow);

$userid = yii::$app->user->id ? yii::$app->user->id : 0;

$sku = $model->sku;
$product_id = $model->productid;
$product_name = $model->name;
$stock = $model->stock_level;

$shipping = ProductManager::ComputeShippingCost($product_id,null,true);

$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($retail_price_raw);


//set eth inital values for the cart items model
$cartModel->PRODUCT_ID = $product_id;
$cartModel->QUANTITY = 1;
$cartModel->USER_ID = $userid;
$cartModel->TOTAL_PRICE = $retail_price_raw;
$cartModel->PRODUCT_PRICE = $retail_price_raw;
?>


<div class="col-xs-18 col-sm-6 col-md-3" id="item_box_<?= $product_id; ?>">
    <div class="offer offer-default">
        <div class="offer-content">
            <?= Html::img($product_image, [
                'id' => 'product_image_' . $product_id,
                'class' => 'img img-responsive',
                'alt' => $product_name,
                //'style' => 'max-height:220px'
            ]); ?>
            <div class="col-md-12 col-xs-6 text-center">
                <span class="small"><?= $product_name ?></span>
            </div>
            <div class="col-md-12 col-xs-6 text-center">
                <a href="#" class="btn btn-default btn-sm btn-block">
                    <span class="badge" id="stock<?= $product_id ?>"><?= $stock ?></span>
                    Available</a>
            </div>
            <hr/>
            <div class="col-md-12 col-xs-6 text-center">
                <span class="retail-price"><?= $retail_price; ?></span>
            </div>
            <!--<div class="col-md-12 col-xs-6 text-center">
                <span>Shipping <?= $shipping_cost ?></span>
            </div>-->

            <div class="col-md-12 col-xs-12" id="buy_button_<?= $product_id ?>">
                <!--?= Html::a("BUY NOW",
                    ['//shop/add-to-cart', 'user_id' => $userid, 'product_id' => $product_id, 'price' => $retail_price_raw],
                    [
                        'class' => 'btn btn-primary btn-block btn-lg noradius',
                    ]) ?-->
                <?php
                $form = ActiveForm::begin([
                    'id' => "shop-$product_id",
                    'action' => ['//shop/add-to-cart'],
                    'options' => [
                        //'class' => 'form-horizontal',
                        'enctype' => 'multipart/form-data'
                    ],
                ]); ?>
                <?= $form->field($cartModel, 'PRODUCT_ID')
                    ->hiddenInput(['class' => 'form-control text-center', 'readonly' => true])
                    ->label(false) ?>

                <?= $form->field($cartModel, 'USER_ID')
                    ->hiddenInput(['class' => 'form-control text-center', 'readonly' => true])
                    ->label(false) ?>

                <?= $form->field($cartModel, 'PRODUCT_PRICE')
                    ->hiddenInput(['class' => 'form-control text-center', 'readonly' => true, 'id' => "product-price-$product_id"])
                    ->label(false)
                ?>

                <!-- fields visible to the user -->

                <?= $form->field($cartModel, 'QUANTITY')
                    ->widget(\kartik\touchspin\TouchSpin::className(), [
                        'options' => [
                            'placeholder' => 'Enter quantity to purchase',
                            'id' => "quantity-$product_id",
                            'onkeypress' => "return event.keyCode != 13;"
                        ],
                        'pluginOptions' => ['postfix' => 'Items', 'verticalbuttons' => true, 'min' => 1, 'max' => $stock],
                        'pluginEvents' => [
                            "change" => "function() { evaluateProducts($product_id);}",
                            //"touchspin.on.startspin" => "function() { evaluateProducts($product_id);}",
                            //"touchspin.on.startupspin" => "function() { evaluateProducts($product_id); }",
                        ]
                    ])->label(false) ?>

                <?= $form->field($cartModel, 'TOTAL_PRICE')
                    ->textInput([
                        'class' => 'form-control text-center',
                        'readonly' => true,
                        'id' => "total-$product_id",
                        'onkeypress' => "return event.keyCode != 13;"
                    ])
                    ->label(false) ?>

                <!-- end user visible fields -->

                <?= Html::submitButton('Buy Now', ['class' => 'btn btn-primary btn-block btn-lg noradius']); ?>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>
