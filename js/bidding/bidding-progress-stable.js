/**
 * Created by TRITON on 10/19/2016.
 */
"use strict";

var intervalObj = {};

var $awaitingBid = 30 + Math.floor((Math.random() * 17) + 7);
;
var $nextBids = 45;
var $velocityDelay = 0;
function RefreshSomeEventListener($product_id, $sku) {
    var $place_bid = $('#placebid_' + $product_id);
    $(document).on("click", $place_bid, function () {
        // $(this).parent().remove();
        //console.log('Click event attached for product sku ' + $sku);
    });
    //run the intial progress bar
    SetupProgressBar($product_id, $awaitingBid); //trigger the progress bar to start
}


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
    //var bidType = $('#bid_type_' + $productid);
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
        begin: function () {
            //call the timer function on begin
            //console.log('Begin timer ');
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
            ItemUpdate($productid, $sku, 'YES');
            FetchNextItem($productid);
        }
    };


    // Use the progress callback.
    progressBar.velocity(
        {
            width: 0 //animate the width
        },
        params);
    //add stop click event when placebid is clicked
    placebid.click(function () {
        //progressBar.velocity('stop', false);
        if ($user_id == 0) {
            //show the dialog for logging in
            ShowLoginPrompt($productid);
            return false;
        }
        TriggerProgressBar($productid, $sku, $nextBids);

        //var h = $('#hidden_'+$productid).parents(".hidden_"+$productid).attr('id'); //get id of the main container so that we can replace teh contents
        //var h = $('.hidden_'+$productid).parents('div:first').attr('id'); //get id of the main container so that we can replace teh contents

        //console.log(h);
    });

}


function TriggerProgressBar($product_id, $sku, $bid_waiting_time) {
    var bidType = $('#bid_type_' + $product_id);
    var text = "Accepting Bids";
    //var bidCount = $('#bid_count_' + $productid);
    //var bidsPlaced = $('#bids_placed_' + $productid);
    var progressBar = $('#progressBar' + $product_id);
    var bidStatusText = $('#bid_status_' + $product_id);
    var bidButton = $('#bid_button_' + $product_id);
    var placebid = $('#placebid_' + $product_id);
    var bid_waiting_time = $bid_waiting_time * 1000;//convert to ms
    var scenario = 0;
    var $maxProgressBarWidth = progressBar.outerWidth();
    //reset the width
    progressBar.velocity('stop', true); //stop any animations
    progressBar.width('100%'); //reset the width back to 100
    var bidsPlacedParams = {
        easing: "linear",
        duration: bid_waiting_time, //milliseconds
        delay: $velocityDelay,
        begin: function () {
            ItemUpdate($product_id, $sku, 'NO');
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
            scenario = bidType.val();

            switch (scenario) {
                case '0': //bid countdown
                    //if zero remove the item
                    break;
                case '1': //awaiting bids
                    //set value to 2
                    bidType.val(2);
                    text = '<span class="goingonce-text">Going Once</span>';
                    break;
                case '2': //going once
                    //set value to 3
                    bidType.val(3);
                    text = '<span class="goingtwice-text">Going Twice</span>';
                    break;
                case '3': //going twice
                    //remove item and disable bid item
                    placebid.prop("disabled", true);
                    bidType.val(4);
                    text = ""; //clear the text
                    //show the bid won progress
                    //alert('You have won the bid');
                    console.log('product id to remove ' + $product_id);

                    //disable the button
                    var button = '<button class="btn btn-success btn-block noradius text-uppercase" disabled>Won</button>';
                    bidButton.html(button);
                    text = '<span class="won-text">Won</span>';

                    ItemUpdate($product_id, $sku, 'YES');
                    FetchNextItem($product_id);
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
    bidStatusText.html('<span class="awaitingbid-text">Accepting Bids</span>');
    $.when(
        placeBid($product_id, $sku), //send the bid details for the logged in user
        progressBar.removeClass("noplacedbids goingonce goingtwice").addClass('awaitingbid')
    ).then(function () {
        console.log('Maximum progressbar width is ' + $maxProgressBarWidth)
        progressBar.velocity({width: 0}, bidsPlacedParams) //Accepting Bids
            .velocity({width: $maxProgressBarWidth}, {
                duration: 1, complete: function () {
                    progressBar.removeClass("noplacedbids awaitingbid goingtwice").addClass('goingonce');
                    /*always await bid*/
                }
            }) //reset bar
            .velocity({width: 0}, bidsPlacedParams) //going once
            .velocity({width: $maxProgressBarWidth}, {
                duration: 1, complete: function () {
                    progressBar.removeClass("noplacedbids awaitingbid goingonce").addClass('goingtwice');
                    /*always await bid*/
                }
            }) //reset bar
            .velocity({width: 0}, bidsPlacedParams); //going twice
    })
}

function placeBid($product_id, $sku) {
    //do an ajax request
    //FetchNextItem($product_id);
    //return;
    var $bidUrl = $('#bid_url').val();
    var $user_id = $('#user_id').val();
    var bidsPlaced = $('#bids_placed_' + $product_id);
    var bid_price = $('#bid_price' + $product_id);
    //console.log($bidUrl);
    //console.log($user_id);
    //console.log($sku);
    //return 0;
    $.when(
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
                bidsPlaced.html(data.bid_count);
                bid_price.html(data.bid_price);
            },
            type: 'GET'
        }),
        GetWinningUser($product_id, $sku)
    ).then(function () {
    });
}

function FetchNextItem($previous_product_id) {
    var bidButton = $('#bid_button_' + $previous_product_id);
    var bidStatusText = $('#bid_status_' + $previous_product_id);
    var $productUrl = $('#product_url').val();
    var $containerID = $('.hidden_' + $previous_product_id).parents('div:first').attr('id'); //get id of the main container so that we can replace teh contents
    // $('#item_box_' + $previous_product_id);
    var $productBox = $('#' + $containerID);
    var intervals = Math.floor((Math.random() * 500) + 10000);
    var button = '<button class="btn btn-primary btn-block noradius text-uppercase" disabled>Next</button>';


    //console.log('Container id is ' + $containerID);


    setTimeout(function () {//wait n seconds before fetching next item
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
                bidButton.html(button);
                bidStatusText.html('Next Item');
                $productBox.fadeIn(700).fadeOut(1000).fadeIn(700, function () {
                    //scroll to the top
                    $productBox.html(data.html_data);
                    //$("html, body").animate({scrollTop: 0}, "slow");
                    //next add the click event listeners to the dynamic items
                    RefreshSomeEventListener(data.product_id, data.sku);
                });
            },
            type: 'GET'
        });
    }, intervals);
}

function ItemUpdate($product_id, $sku, $toclear) {
    var updateUrl = $('#update_url').val();

    var $bidPrice = $('#bid_price' + $product_id);
    var bidsPlaced = $('#bids_placed_' + $product_id);
    var winningUser = $('#winning_user_' + $product_id);
    var bidButton = $('#bid_button_' + $product_id);

    var random_intervals = Math.round(Math.random() * (5000 - 500)) + 1500;

    clearInterval(intervalObj[$product_id]); //remove the interval

    if ($toclear == 'NO') { //if its not in non clear mode do set another interval
        intervalObj[$product_id] = setInterval(function () {

            $.when(
                /*$.getJSON(updateUrl, {product_id: $product_id, sku: $sku}, function (data) {
                 var $bid_count = data.bid_count;
                 var $new_bid_price = data.bid_price;

                 $bidPrice.html($new_bid_price);
                 bidsPlaced.html($bid_count);
                 }), */
                $.ajax({
                    url: updateUrl,
                    data: {
                        product_id: $product_id,
                        sku: $sku
                    },
                    error: function (data) {
                        //do something in the event this fails
//                        console.log(data);
                    },
                    dataType: 'json',
                    success: function (data) {
                        var $bid_count = data.bid_count;
                        var $new_bid_price = data.bid_price;

                        $bidPrice.html($new_bid_price);
                        bidsPlaced.html($bid_count);
                    },
                    type: 'GET'
                }),
                GetWinningUser($product_id, $sku)
            ).then(function () {
            });
        }, random_intervals); //check every n seconds
        //console.log('Set interval {' + intervalObj[$product_id]+'} {'+intervals+'}');
    } else {
        //flag the item as won in the DB
        //alert('clearing and winning bid');
        var userId = $('#user_id').val();
        var bidwonUrl = $('#bidwon_url').val();
        var button = '<button class="btn btn-bid btn-success btn-block noradius text-uppercase" disabled>Sold</button>';
        $.when(
            /*$.getJSON(bidwonUrl, {user_id: userId, product_id: $product_id, sku: $sku}, function (data) {
             //mark the item as won..and show the winning user
             var $winning_user = data.winning_user;

             winningUser.html($winning_user);
             if ($winning_user == '-' || $winning_user.length <= 0) {
             button = '<button class="btn btn-bid btn-bid-ended btn-block noradius text-uppercase" disabled>Closed</button>';
             }
             bidButton.html(button);
             }),*/
            $.ajax({
                url: bidwonUrl,
                data: {
                    user_id: userId, product_id: $product_id, sku: $sku
                },
                error: function (data) {
                    //do something in the event this fails
                    //console.log(data);
                },
                dataType: 'json',
                success: function (data) {
                    var $winning_user = data.html;

                    winningUser.html($winning_user);
                    //if ($winning_user == '-' || $winning_user.length <= 0) {
                    button = '<button class="btn btn-bid btn-danger btn-block noradius text-uppercase" disabled>Bid Closed</button>';
                    //}
                    bidButton.html(button);
                },
                type: 'GET'
            }),
            UpdateCartItems()
        ).then(function () {
        });
    }
}

function UpdateCartItems() {
    var userId = $('#user_id').val();
    var cartitemsUrl = $('#cart_url').val();
    var $cartItems = $('#cart_items');

    if (userId == 0) {
        return false;
    }
    /*$.getJSON(cartitemsUrl, function (data) {
     $cartItems.html(data.items_count);
     console.log('Cart items updated ' + data.items_count);
     });*/
    $.ajax({
        url: cartitemsUrl,
        error: function (data) {
            //do something in the event this fails
            console.log(data);
        },
        dataType: 'json',
        success: function (data) {
            $cartItems.html(data.items_count);
            //console.log('Cart items updated ' + data.items_count);
        },
        type: 'GET'
    });
}

function GetWinningUser($product_id, $sku) {
    var winningUrl = $('#winning_url').val();
    var winningUser = $('#winning_user_' + $product_id);
    var userId = $('#user_id').val();
    var bidButton = $('#placebid_' + $product_id);
    var bidButtonSpan = $('#placebid_' + $product_id + ' span');
    /*$.getJSON(winningUrl, {product_id: $product_id, sku: $sku}, function (data) {
     winningUser.html(data.winning_user);
     console.log('Winning User is ' + data.winning_user);
     });*/

    $.ajax({
        url: winningUrl,
        data: {
            product_id: $product_id, sku: $sku
        },
        error: function (data) {
            //do something in the event this fails
//            console.log(data);
        },
        dataType: 'json',
        success: function (data) {
            winningUser.html(data.html);
            //console.log('Winning User is ' + data.winning_user);
            //bidButton.html()
            if (data.userid == userId && userId > 0) {
                bidButton.removeClass('btn-bid-active');
                bidButton.text('WINNING');
                //bidButtonSpan.removeClass('hammer-icon pull-left');
                bidButton.addClass('btn-success');
                //console.log('Matched current user');
            } else {
                ///bidButton.removeClass('btn-success');
                ///bidButton.addClass('btn-bid-active')
                bidButton.addClass('btn-bid-active');
                //bidButtonSpan.addClass('hammer-icon pull-left');
                bidButton.removeClass('btn-success');
                bidButton.html('<span class="hammer-icon pull-left"></span> BID NOW');
                //console.log('Does not match current user');
            }
        },
        type: 'GET'
    });
}

function ShowLoginPrompt($product_id) {
    var loginUrl = $('#login_url').val();
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
    modal.setContent('<h1>You need to login in order to bid</h1>');
// add a button
    modal.addFooterBtn('Proceed to Login', 'btn btn-info btn-block', function () {
        // here goes some logic
        //redirect to login page
        modal.close();
        window.location.replace(loginUrl);
    });
// close modal
    modal.open();

}