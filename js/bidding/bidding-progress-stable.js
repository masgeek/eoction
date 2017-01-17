/**
 * Created by TRITON on 10/19/2016.
 */
"use strict";

var intervalObj = {};

function SetupProgressBar($productid, $bid_start_time) {
    /*
     bid types
     0 bid countdown
     1 awaiting bids
     2 going once
     3 going twice
     4 bid won
     */
    var starttime = $bid_start_time * 1000;//convert to ms
    // Cache our jQuery objects.
    //var $percentComplete = $("#percentComplete" + $productid);
    //var $timeRemaining = $("#timeRemaining" + $productid);
    var text = "Accepting Bids";
    var progressBar = $('#progressBar' + $productid);
    var bidStatusText = $('#bid_status_' + $productid);
    var bidType = $('#bid_type_' + $productid);
    var placebid = $('#placebid_' + $productid);
    var bidButton = $('#bid_button_' + $productid);
    var $sku = $('#product_sku_' + $productid).val();
    var $user_id = $('#user_id').val();
    //read the values indicating what type of bid

    var params = {
        easing: "linear",
        //loop : 0,
        queue: false,
        duration: starttime, //milliseconds
        begin: function (elements) {
            //call the timer function on begin
            console.log('Begin timer');
            ItemUpdate($productid, $sku, 'NO');
        },
        progress: function (elements, percentComplete, timeRemaining, timeStart) {
            //$percentComplete.html(Math.round(percentComplete * 100) + "% complete.");
            //$timeRemaining.html(timeRemaining + "ms remaining.");
            //console.log('Timer here '+timeRemaining+' for product '+$productid+' and sku '+$sku);
            //ItemUpdate($productid,$sku);
        },
        complete: function () {
            //disable the button
            var button = '<button class="btn btn-default btn-block noradius text-uppercase" disabled>Closed</button>';
            bidButton.html(button);
            bidStatusText.html('Bid Closed');
            console.log("No bid placed, removing item");
            //remove the product
            //Math.floor((Math.random() * 5000) + 8000);
            ItemUpdate($productid, $sku, 'YES'); //stop the timer countdown
            FetchNextItem($productid);
        },
    };


    // Use the progress callback.
    progressBar.velocity(
        {
            width: 0, //animate the width
        },
        params);
    //add stop click event when placebid is clicked
    placebid.click(function () {
        //progressBar.velocity('stop', false);
        if($user_id==0) {
            return false;
        }
        TriggerProgressBar($productid, $sku, 10);
    });
}


function TriggerProgressBar($productid, $sku, $bid_start_time) {
    var bidType = $('#bid_type_' + $productid);
    var text = "Accepting Bids";
    var bidCount = $('#bid_count_' + $productid);
    var bidsPlaced = $('#bids_placed_' + $productid);
    var progressBar = $('#progressBar' + $productid);
    var bidStatusText = $('#bid_status_' + $productid);
    var bidButton = $('#bid_button_' + $productid);
    var placebid = $('#placebid_' + $productid);
    var starttime = $bid_start_time * 1000;//convert to ms

    //reset the width
    progressBar.velocity('stop', true); //stop any animations
    progressBar.width('100%'); //reset the width back to 100
    var bidplacedParam = {
        easing: "linear",
        duration: starttime, //milliseconds
        delay: 3000,
        begin: function (elements) {
            ItemUpdate($productid, $sku, 'NO');
        },
        progress: function (elements, percentComplete, timeRemaining, timeStart) {
            //$percentComplete.html(Math.round(percentComplete * 100) + "% complete.");
            //$timeRemaining.html(timeRemaining + "Going Once.");
            //console.log('Timer here ' + timeRemaining + ' for product ' + $productid);
            //ItemUpdate($productid,$sku);
        },
        complete: function () {
            //what happens when it is complete?
            /*
             bid types
             0 bid countdown
             1 awaiting bids
             2 going once
             3 going twice
             4 bid won
             */
            var scenario = bidType.val();

            switch (scenario) {
                case '0': //bid countdown
                    //if zero remove the item
                    break;
                case '1': //awaiting bids
                    //set value to 2
                    bidType.val(2);
                    text = 'Going Once';
                    break;
                case '2': //going once
                    //set value to 3
                    bidType.val(3);
                    text = 'Going Twice';
                    break;
                case '3': //going twice
                    //remove item and disable bid item
                    placebid.prop("disabled", true);
                    bidType.val(4);
                    text = ""; //clear the text
                    //show the bid won progress
                    //alert('You have won the bid');
                    console.log('product id to remove ' + $productid);

                    //disable the button
                    var button = '<button class="btn btn-success btn-block noradius text-uppercase" disabled>Won</button>';
                    bidButton.html(button);
                    bidStatusText.html('Won');

                    ItemUpdate($productid, $sku, 'YES')
                    FetchNextItem($productid);
                    break;
                case '4':
//loading next item
                    break;
            }
            console.log("countdown completed for " + scenario);
            bidStatusText.html(text);
            //bidType.val(4);
        }
    };

    bidType.val(1); //set to awaiting bids
    bidStatusText.html('Accepting Bids');
    placeBid($productid, $sku); //send the bid details for the logged in user
    progressBar.velocity({width: 0}, bidplacedParam) //Accepting Bids
        .velocity({width: '100%'}, {
            duration: 1, complete: function () {
                progressBar.removeClass("noplacedbids awaitingbid goingtwice").addClass('goingonce');
                /*always await bid*/
            }
        }) //reset bar
        .velocity({width: 0}, bidplacedParam) //going once
        .velocity({width: '100%'}, {
            duration: 1, complete: function () {
                progressBar.removeClass("noplacedbids awaitingbid goingonce").addClass('goingtwice');
                /*always await bid*/
            }
        }) //reset bar
        .velocity({width: 0}, bidplacedParam) //going twice
}

function placeBid($product_id, $sku) {
    //do an ajax request
    //FetchNextItem($product_id);
    //return;
    var $bidUrl = $('#bid_url').val();
    var $user_id = $('#user_id').val();
    var bidsPlaced = $('#bids_placed_' + $product_id);
    var bid_price = $('#bid_price' + $product_id);
    var winningUser = $('#winning_user_' + $product_id);
    //console.log($bidUrl);
    //console.log($user_id);
    //console.log($sku);
    //return 0;

    $.ajax({
        url: $bidUrl,
        data: {
            id: $product_id,
            sku: $sku,
            user_id: $user_id,
            format: 'json'
        },
        error: function () {
            $('#info').html('<p>An error has occurred</p>');
        },
        dataType: 'json',
        before: function (data) {
            //stop the minute bid bar first
            //$('#progress' + $product_id).asProgress('stop');
        },
        success: function (data) {
            /*var $title = $('<h1>').text(data.talks[0].talk_title);
             var $description = $('<p>').text(data.talks[0].talk_description);
             $('#info' + $product_id)
             .append($title)
             .append($description);*/
            bidsPlaced.html(data.bid_count);
            bid_price.html(data.bid_price);
            //winningUser.html(data.winning_user);
        },
        type: 'GET'
    });
}

function FetchNextItem($previous_product_id) {
    var bidButton = $('#bid_button_' + $previous_product_id);
    var bidStatusText = $('#bid_status_' + $previous_product_id);
    var $productUrl = $('#product_url').val();
    var $productBox = $('#item_box_' + $previous_product_id);
    var intervals = Math.floor((Math.random() * 1500) + 2000);

    var button = '<button class="btn btn-primary btn-block noradius text-uppercase" disabled>Next</button>';

    setTimeout(function () {//wait n seconds before fetching next item
        bidButton.html(button);
        bidStatusText.html('Next Item');
        $.ajax({
            url: $productUrl,
            data: {
                product_id: $previous_product_id
            },
            error: function () {
                $('#info').html('<p>An error has occurred</p>');
            },
            dataType: 'json',
            success: function (data) {
                //remove the initial product box
                $productBox.fadeOut(4000, function () {
                    $(this).remove();
                    $('#product_list').append(data.html_data);
                    //$('#product_list').prepend(data.html_data);
                    $('.fadein').fadeIn(3500);
                    //scroll to the top
                    //$("html, body").animate({scrollTop: 0}, "slow");
                    //next add the click event listeners to the dynamic items
                    RefreshSomeEventListener(data.product_id, data.sku);
                });
            },
            type: 'POST'
        });
    }, intervals);
}

function RefreshSomeEventListener($product_id, $sku) {
    var $place_bid = $('#placebid_' + $product_id);
    $(document).on("click", $place_bid, function () {
        // $(this).parent().remove();
        //console.log('Click event attached for product sku ' + $sku);
    });

    //run the intial progress bar
    SetupProgressBar($product_id, 60); //trigger the progress bar to start
}

function ItemUpdate($product_id, $sku, $toclear) {

    //var updateUrl = $('#update_url').val();
    var $bidPrice = $('#bid_price' + $product_id);
    var bidsPlaced = $('#bids_placed_' + $product_id);
    var winningUser = $('#winning_user_' + $product_id);
    var bidButton = $('#bid_button_' + $product_id);

    var intervals = Math.floor((Math.random() * 6000) + 1560);

    clearInterval(intervalObj[$product_id]); //remove the interval

    if ($toclear == 'NO') { //if its not in non clear mode do set another interval
        intervalObj[$product_id] = setInterval(function () {
            var updateUrl = $('#update_url').val();
            $.getJSON(updateUrl, {product_id: $product_id, sku: $sku}, function (data) {
                var $bid_count = data.bid_count;
                var $new_bid_price = data.bid_price;
                var $winning_user = data.winning_user;

                $bidPrice.html($new_bid_price);
                bidsPlaced.html($bid_count);
                winningUser.html($winning_user);
                //console.log($winning_user);

            });
        }, intervals); //check every n seconds
        //console.log('Set interval {' + intervalObj[$product_id]+'} {'+intervals+'}');
    } else {
        //flag the item as won in the DB
        //alert('clearing and winning bid');
        var userId = $('#user_id').val();
        var bidwonUrl = $('#bidwon_url').val();
        $.getJSON(bidwonUrl, {user_id: userId, product_id: $product_id, sku: $sku}, function (data) {
            //mark the item as won..and show the winning user
            var $winning_user = data.winning_user;
            var $winning_amount = data.winning_amount;
            winningUser.html($winning_user);
            // console.log(data);
            if($winning_user=='-'||$winning_user.length <=0){
                var button = '<button class="btn btn-bid btn-bid-ended btn-block noradius text-uppercase" disabled>Closed</button>';
            }else {
                var button = '<button class="btn btn-bid btn-success btn-block noradius text-uppercase" disabled>Sold</button>';
            }
            bidButton.html(button);
            //set function timeou
            UpdateCartItems();
        });
    }
}

function UpdateCartItems() {
    var userId = $('#user_id').val()
    var cartitemsUrl = $('#cart_url').val();

    if(userId==0){
        return false;
    }
    $.getJSON(cartitemsUrl, function (data) {
        var $cartItems = $('#cart_items');
        $cartItems.html(data.items_count);
    });

    console.log('Cart items updated');
}