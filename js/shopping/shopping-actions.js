/* eslint-disable no-console,no-undef,no-unused-vars */


function evaluateProducts(product_id) {

    var item_quantity = $('#quantity-' + product_id).val();
    var $retail_price = $('#product-price-' + product_id).val();
    var total_price = $('#total-' + product_id);

    var total_product_cost = ($retail_price * item_quantity).toFixed(2); //round off to two decimal places

    total_price.val(total_product_cost);

    console.log('Action started for id ' + product_id + ' and value for ' + item_quantity + ' price is ' + total_product_cost);
}

function itemQuantityChanged($cart_item_id){

}