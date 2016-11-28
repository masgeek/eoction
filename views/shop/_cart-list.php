<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/10
 * Time: 14:40
 */

/* @var $model app\module\products\models\ItemsCart */


use yii\helpers\Html;
use yii\web\View;
use yii\widgets\Pjax;

use app\components\ProductManager;

$formatter = \Yii::$app->formatter;

$imageModel = new \app\module\products\models\Products();
$imageObject = $imageModel->getSingleImage();
$product_image = $imageObject ? "@web{$imageObject->IMAGE_URL}" : '@web/product_images/placeholder.png';

//calculate the percentage discount based on the retail price and the bidded amount
if ($model->BIDDED_ITEM == '1') {
    $product_price = $model->PRODUCT_PRICE;
} else {
    $product_price = $model->pRODUCT->RETAIL_PRICE; //get the retail price if its not a bid item
}

$userid = yii::$app->user->id;
//$sku = $model->SKU;

$cart_item_id = $model->CART_ID;
$product_id = $model->PRODUCT_ID;
$product_name = $model->pRODUCT->PRODUCT_NAME;
$product_description = $model->pRODUCT->PRODUCT_DESCRIPTION;
$brand_name = $model->pRODUCT->BRAND_NAME;

$shipping = ProductManager::ComputeShippingCost($product_id);
$shipping_cost = $formatter->asCurrency($shipping);
$retail_price = $formatter->asCurrency($product_price);

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
            <input type="number" class="form-control" id="quantity" readonly="readonly" value="1">
        </td>
        <td class="text-center"><strong><?= $retail_price ?></strong></td>
        <td class="text-center"><strong><?= $retail_price ?></strong></td>
        <td>
            <button type="button" class="btn btn-danger" id="remove-item-<?= $cart_item_id ?>">
                <span class="glyphicon glyphicon-remove"></span> Remove
    </tr>

<?php
$this->registerJs("
   RemoveFromCart($cart_item_id);
", View::POS_READY)
?>