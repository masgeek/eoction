<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 11/24/2016
 * Time: 9:51 PM
 */

/* @var $this yii\web\View */
/* @var $cartDataProvider app\module\products\models\ItemsCart */
/* @var $user_id */

$this->registerJsFile('@web/js/shopping/cart-manager.js');

$this->registerJsFile('@web/js/shopping/shopping-actions.js');

$this->title = 'My Cart';
$this->params['breadcrumbs'][] = ['label' => 'Shopping', 'url' => ['//shop']];
$this->params['breadcrumbs'][] = $this->title;
$formatter = \Yii::$app->formatter;

$listviewWidget = \yii\widgets\ListView::widget([
    'dataProvider' => $cartDataProvider,
    'options' => [
        'tag' => 'tr',
        'class' => 'list-wrapper',
        'id' => 'cart_list',
    ],
    'layout' => "{items}",
    //'layout' => "{pager}\n{items}\n{summary}",
    //'itemView' => '_product_view_old',
    'itemView' => '_cart-list',
]);

$total_summary = \app\components\ProductManager::GetUserCartItemsTotal($user_id, $sold_status = [0]);

$total_raw = $total_summary['TOTAL'];
$subtotal = $formatter->asCurrency($total_summary['SUB_TOTAL']);
$shipping = $formatter->asCurrency($total_summary['SHIPPING_TOTAL']);
$total = $formatter->asCurrency($total_raw);


$paypalAction = \yii\helpers\Url::to(['//paypal/paypal-checkout', 'id' => $user_id]);
$userAddress = \yii\helpers\Url::to(['//my-addresses', 'user_id' => $user_id]);
$continueShopping = \yii\helpers\Url::to(['//shop']);
$itemRemovalAction = \yii\helpers\Url::to(['//shop/remove-item']);
?>

<!-- this will show the flash messages-->
<?= \yii\helpers\Html::textInput('remove_url', $itemRemovalAction, ['readonly' => true, 'id' => 'remove_url', 'class' => 'hidden']) ?>

<div class="row"><?php
    foreach (Yii::$app->session->getAllFlashes() as $key => $message) {
        echo '<div class="alert alert-' . $key . '">' . $message . '</div>';
    }
    ?>
</div>
<div class="col-sm-12 col-md-10 col-md-offset-1">
    <table class="table table-responsive table-bordered table-hover">
        <thead>
        <tr>
            <th colspan="2">Product</th>
            <th>Quantity</th>
            <th class="text-center">Price</th>
            <th class="text-center">Total</th>
            <th> </th>
        </tr>
        </thead>
        <tbody>
        <?= $listviewWidget ?>
        <tr>
            <td colspan="4"> &nbsp;</td>
            <td><h5>Subtotal</h5></td>
            <td class="text-right"><h5><strong><?= $subtotal ?></strong></h5></td>
        </tr>
        <tr>
            <td colspan="4"> &nbsp;</td>
            <td><h5>Estimated shipping</h5></td>
            <td class="text-right"><h5><strong><?= $shipping ?></strong></h5></td>
        </tr>
        <tr>
            <td colspan="4" class="text-right"><h3>Total</h3></td>
            <td class="text-right" colspan="2"><h3><strong><?= $total ?></strong></h3></td>
        </tr>
        <tr>
            <?php if (\app\components\AccountManager::AddressProvided($user_id)): ?>
                <td colspan="4"> <?= \yii\helpers\Html::a('Continue Shopping <span class="glyphicon glyphicon-shopping-cart"></span>',
                        $continueShopping, ['class' => 'btn btn-default btn-lg', 'role' => 'button']) ?></td>
                <td align="right" colspan="2">
                    <!-- lets check if th user has an address provided -->
                    <?= \yii\helpers\Html::a($total_raw > 0 ? 'Checkout <span class="glyphicon glyphicon-play"></span>' : 'Continue Shopping <span class="glyphicon glyphicon-shopping-cart"></span>',
                        $total_raw > 0 ? $paypalAction : $continueShopping, ['class' => $total_raw > 0 ? 'btn btn-success btn-lg' : 'btn btn-default btn-lg', 'role' => 'button']) ?>
                </td>
            <?php else: ?>
                <!-- show user link to go add the  addrees -->
                <td colspan="4"><h3>Please provide a shipping or billing address before checking out</h3></td>
                <td colspan="2">
                    <?= \yii\helpers\Html::a('Add Shipping/Billing Address', $userAddress, ['class' => 'btn btn-warning btn-lg noradius', 'role' => 'button']) ?>
                </td>
            <?php endif; ?>
        </tr>
        </tbody>
    </table>
</div>
