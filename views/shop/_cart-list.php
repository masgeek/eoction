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
$brand_name = $productModel->brand;


$imageHost = \Yii::$app->params['ExternalImageServerLink'];
$imageFolder = \Yii::$app->params['ExternalImageServerFolder'];
$image_url = $productModel->image1;//getSingleImage($product_id);

//$product_image = $imageObject ? "{$imageHost}/{$imageFolder}/{$imageObject->imagefile}" : '@web/product_images/placeholder.png';
$product_image = ProductManager::CheckImageExists($image_url);


$product_price =  $formatter->asDecimal($model->PRODUCT_PRICE);
$total_price_raw =  $formatter->asDecimal($model->TOTAL_PRICE);

$shipping = ProductManager::ComputeShippingCost($product_id);
$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($product_price);
$total_price = $formatter->asCurrency($total_price_raw);

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
                    <h5 class="media-heading"> by <a href="#"><?= $brand_name ?></a></h5>
                    <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                </div>
            </div>
        </td>
        <td>
            <input type="number" class="form-control" id="quantity" readonly="readonly" value="<?= $model->QUANTITY ?>">
        </td>
        <td class="text-center"><strong><?= $retail_price ?></strong></td>
        <td class="text-center"><strong><?= $total_price ?></strong></td>
        <td>
            <button type="button" class="btn btn-danger" id="remove-item-<?= $cart_item_id ?>">
                <span class="glyphicon glyphicon-remove"></span> Remove
    </tr>

<?php
$this->registerJs("
   RemoveFromCart($cart_item_id);
", View::POS_READY)
?>