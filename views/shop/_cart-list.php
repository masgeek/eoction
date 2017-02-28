<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/10
 * Time: 14:40
 */

/* @var $productModel app\module\products\models\FryProducts */
/* @var $model app\module\products\models\ItemsCart */


use yii\helpers\Html;
use yii\web\View;
use yii\widgets\Pjax;

use app\components\ProductManager;

$formatter = \Yii::$app->formatter;
$userid = yii::$app->user->id;

$imageModel = new \app\module\products\models\FryProductImages();

$cart_item_id = $model->CART_ID;
$product_id = $model->PRODUCT_ID;

$productModel = $model->pRODUCT; //getProductInfo($product_id);

$product_name = $productModel->name;
$product_description = $productModel->desc;
$brand_name = $productModel->brand ? $productModel->brand  : 'N/A';


$imageHost = \Yii::$app->params['ExternalImageServerLink'];
$imageFolder = \Yii::$app->params['ExternalImageServerFolder'];
$image_url = $productModel->image1;//getSingleImage($product_id);

//$product_image = $imageObject ? "{$imageHost}/{$imageFolder}/{$imageObject->imagefile}" : '@web/product_images/placeholder.png';
$product_image = ProductManager::CheckImageExists($image_url);


$product_price = $formatter->asDecimal($model->PRODUCT_PRICE);
$total_price_raw = $formatter->asDecimal($model->TOTAL_PRICE);

$shipping = ProductManager::ComputeShippingCost($product_id);
$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($product_price);
$total_price = $formatter->asCurrency($total_price_raw);

$bidded_item = (boolean)$model->BIDDED_ITEM;

?>
    <tr id="cart-row-<?= $cart_item_id ?>">
        <td>
            <?= Html::img($product_image, [
                'id' => 'product_image_' . $cart_item_id,
                'class' => 'thumbnail',
                'alt' => $product_name,
                'width' => 200
            ]); ?>
        </td>
        <td>
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading"><a href="#"><?= $product_name ?></a></h4>
                    <h5 class="media-heading">By: <a href="#"><?= $brand_name ?></a></h5>
                    <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                    <br/>
                    <span>Source </span><span class="text-warning"><strong><?= $bidded_item ? 'Bidding' : 'Shopping Store' ?></strong></span>
                </div>
            </div>
        </td>
        <td width="200">
            <?php if(!$bidded_item): ?>
                <input type="number" class="form-control hidden" id="item-cost-<?=$model->CART_ID?>" readonly="readonly" value="<?= $product_price ?>">
            <?= \kartik\touchspin\TouchSpin::widget([
                'name' => "quantity-$model->CART_ID",
                'id' => "quantity-$model->CART_ID",
                'value' => $model->QUANTITY,
                'pluginOptions' => [
                    'min' => 1,
                    //'max' => $model->pRODUCT->available,
                    //'step' => 1,
                    //'decimals' => 0,
                    //'boostat' => 0,
                    //'maxboostedstep' => 10,
                    'verticalbuttons' => true
                ],
                'pluginEvents' => [
                    "change" => "function() { itemQuantityChanged($model->CART_ID);}",
                ]
            ]); ?>
    <?php else:?>
                <input type="number" class="form-control" id="quantity_<?=uniqid()?>" readonly="readonly" value="<?= $model->QUANTITY ?>">
    <?php endif;?>
        </td>
        <td class="text-center"><strong id="retail-<?= $model->CART_ID ?>"><?= $retail_price ?></strong></td>
        <td class="text-center"><strong id="total-<?= $model->CART_ID ?>"><?= $total_price ?></strong></td>
        <td>
            <button type="button" class="btn btn-danger" id="remove-item-<?= $cart_item_id ?>">
                <span class="glyphicon glyphicon-remove"></span> Remove
    </tr>

<?php
$this->registerJs("
   RemoveFromCart($cart_item_id);
", View::POS_READY)
?>