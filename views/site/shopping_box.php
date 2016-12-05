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

$imageObject = $model->getSingleImage();
$imageHost = \Yii::$app->params['ExternalImageServerLink'];
$imageFolder = \Yii::$app->params['ExternalImageServerFolder'];

$imageObject = $model->getSingleImage();
$product_image = $imageObject ? "{$imageHost}/{$imageFolder}/{$imageObject->imagefile}" : '@web/product_images/placeholder.png';

$retail_price_raw = $model->prodretailprice;

$userid = yii::$app->user->id ? yii::$app->user->id : 0;
$sku = $model->prodcode;
$product_id = $model->productid;
$product_name = $model->prodname;

$shipping = ProductManager::ComputeShippingCost($product_id);

$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($retail_price_raw);
?>


<div class="col-xs-18 col-sm-6 col-md-3" id="item_box_<?= $product_id; ?>">
    <div class="offer offer-default">
        <div class="offer-content">
            <?= Html::img($product_image, [
                'id' => 'product_image_' . $product_id,
                'class' => 'img img-responsive',
                'alt' => $product_name,
            ]); ?>
            <div class="col-md-12 col-xs-6 text-center">
                <span class="retail-price"><?= $retail_price; ?></span>
            </div>
            <div class="col-md-12 col-xs-6 text-center">
                <span>Shipping <?= $shipping_cost ?></span>
            </div>
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-xs-12" id="buy_button_<?= $product_id ?>">
                    <!--= Html::button("BUY NOW FOR $retail_price", [
                        'class' => 'btn btn-primary btn-lg btn-block noradius',
                        'id' => "buynow_$product_id"
                    ]) ?-->
                    <?= Html::a("BUY NOW",
                        ['//shop/add-to-cart', 'user_id' => $userid, 'product_id' => $product_id, 'price' => $retail_price_raw],
                        [
                            'class' => 'btn btn-primary btn-block btn-lg noradius',
                        ]) ?>
                </div>

            </div>
        </div>
    </div>
</div>
