<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/10
 * Time: 14:40
 */
/* @var $model app\module\products\models\FryProducts */
/* @var $image app\module\products\models\FryProductImages */


use yii\helpers\Html;
use yii\web\View;

use app\components\ProductManager;

$formatter = \Yii::$app->formatter;

$imageHost = \Yii::$app->params['ExternalImageServerLink'];
$imageFolder = \Yii::$app->params['ExternalImageServerFolder'];

$image_url = $model->image1;

$product_image = ProductManager::CheckImageExists($image_url);


$retail_price_raw = $model->buyitnow;

$userid = yii::$app->user->id ? yii::$app->user->id : 0;
$sku = $model->sku;
$product_id = $model->productid;
$product_name = $model->name;

$shipping = ProductManager::ComputeShippingCost($product_id);

$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($retail_price_raw);
?>


<div class="col-xs-18 col-sm-6 col-md-3 column" id="request_box_<?= $product_id; ?>">
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
            <hr/>
            <div class="col-md-12 col-xs-6 text-center">
                <span class="retail-price"><?= $retail_price; ?></span>
            </div>
            <!--<div class="col-md-12 col-xs-6 text-center">
                <span>Shipping <?= $shipping_cost ?></span>
            </div>-->
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-xs-12" id="buy_button_<?= $product_id ?>">
                    <?= Html::a("Request For Bid",
                        ['//request/request-for-bid', 'user_id' => $userid, 'product_id' => $product_id],
                        [
                            'class' => 'btn btn-primary btn-block btn-lg noradius',
                        ]) ?>
                </div>

            </div>
        </div>
    </div>
</div>
