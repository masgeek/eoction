/**
 * Created by KRONOS on 11/28/2016.
 */
function RemoveFromCart($cart_item_id) {
    var remove_cart_item = $('#remove-item-' + $cart_item_id);

    // instanciate new modal
    var modal = new tingle.modal({
        footer: true,
        stickyFooter: false,
        cssClass: ['custom-class-1', 'custom-class-2'],
        onOpen: function () {
            //console.log('modal open');
        },
        onClose: function () {
            //console.log('modal closed');
        }
    });

    // set content
    modal.setContent('<h1>Remove this item from the cart?</h1>');

// add a button
    modal.addFooterBtn('No', 'btn btn-primary', function () {
        // here goes some logic
        modal.close();
    });

// add another button
    modal.addFooterBtn('Yes', 'btn btn-danger pull-right', function () {
        // here goes some logic
        modal.close();
        RemoveCartItem($cart_item_id);

    });

// close modal
    modal.close();

    remove_cart_item.click(function () {
        modal.open();
    });
}


function RemoveCartItem($cart_item_id) {
    //lets use the short form of ajax no need for much mumbo jumbo
    var $cartItems = $('#cart-items');
    var removal_url = $('#remove_url').val();
    var $productBox = $('#cart-row-' + $cart_item_id);
    $.getJSON(removal_url, {id: $cart_item_id}, function (data) {
        //mark the item as won..no data is acted upon in the response
        if (data.removed === true) {
            $productBox.fadeOut(900, function () { //remove the item in the list
                $(this).remove();
                //location.reload();
                $cartItems.html(data.items_count);
            });
        }
    });

}
function ConfirmFormSubmission(form_id, $btn_id, $message) {

    // instantiate new modal
    var modal = new tingle.modal({
        footer: true,
        stickyFooter: false,
        cssClass: ['custom-class-1', 'custom-class-2'],
        onOpen: function () {
            //console.log('modal open');
        },
        onClose: function () {
            //console.log('modal closed');
        }
    });

    // set content
    modal.setContent('<h1>' + $message + '</h1>');

// add a button
    modal.addFooterBtn('No', 'btn btn-primary', function () {
        // here goes some logic
        modal.close();
        return false;
    });

// add another button
    modal.addFooterBtn('Yes', 'btn btn-danger pull-right', function () {
        // here goes some logic
        modal.close();
        $(form_id).submit();//trigger the form submissions
    });

// close modal
    modal.close();

    $($btn_id).click(function () {
        //var c = confirm("Click OK to continue?");
        //return c; //you can just return c because it will be true or false
        modal.open()
    });

}