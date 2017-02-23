/* eslint-disable no-console,no-undef,no-unused-vars */


function evaluateProducts(product_id) {

    var item_quantity = $('#quantity-' + product_id).val();
    var $retail_price = $('#product-price-' + product_id).val();
    var total_price = $('#total-' + product_id);

    var total_product_cost = ($retail_price * item_quantity).toFixed(2); //round off to two decimal places

    total_price.val(total_product_cost);

    console.log('Action started for id ' + product_id + ' and value for ' + item_quantity + ' price is ' + total_product_cost);
}

function itemQuantityChanged($cart_item_id,$this) {

    var item_quantity = $('#quantity-' + $cart_item_id).val();
    var $retail_price = $('#item-cost-' + $cart_item_id).val();
    var $retail = $('#retail-' + $cart_item_id);
    var $total = $('#total-' + $cart_item_id);

    var $totalCost =($retail_price*item_quantity);

    var $finalCost = numeral($totalCost).format('$0,0.00');//format in the currency format

    //call ajax to update table


    $total.html($finalCost);
    console.log(item_quantity);
}