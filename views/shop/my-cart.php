<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 11/24/2016
 * Time: 9:51 PM
 */

/* @var $cartDataProvider app\module\products\models\ItemsCart */

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

$subtotal = 0;
$total = 0;
$shipping = 0;
?>

<div class="col-sm-12 col-md-10 col-md-offset-1">
    <table class="table table-responsive table-bordered">
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
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td><h5>Subtotal</h5></td>
            <td class="text-right"><h5><strong><?= $subtotal ?></strong></h5></td>
        </tr>
        <tr>
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td><h5>Estimated shipping</h5></td>
            <td class="text-right"><h5><strong><?= $shipping ?></strong></h5></td>
        </tr>
        <tr>
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td><h3>Total</h3></td>
            <td class="text-right"><h3><strong><?= $total ?></strong></h3></td>
        </tr>
        <tr>
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td> &nbsp;</td>
            <td>
                <button type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                </button>
            </td>
            <td>
                <button type="button" class="btn btn-success">
                    Checkout <span class="glyphicon glyphicon-play"></span>
                </button>
            </td>
        </tr>
        </tbody>
    </table>
</div>
