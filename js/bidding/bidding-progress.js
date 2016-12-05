/**
 * Created by TRITON on 10/19/2016.
 */
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

    //read the values indicating what type of bid

    var params = {
        easing: "linear",
        //loop : 0,
        duration: starttime, //milliseconds
        begin: function (elements) {
            //call the timer function on begin
//            console.log('Begin timer');
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
            var button = '<button class="btn btn-bid btn-bid-ended btn-block noradius text-uppercase" disabled>Next Item</button>';
            bidButton.html(button);
            //console.log("No bid placed, removing item");
            //remove the product
            //Math.floor((Math.random() * 5000) + 8000);
            ItemUpdate($productid, $sku, 'YES');
            FetchNextItem($productid); //fetch the next item
        },
    };

    // Use the progress callback.
    progressBar.velocity(
        {
            width: "0%", //animate the width
        },
        params);
    //add stop click event when placebid is clicked
    placebid.click(function () {
        TriggerProgressBar($productid, $sku, 10);
    });
}

function changeClasses($classtoSet, $element) {
    var progressBar = $('#' + $element);
//first clear all classes
    progressBar.removeClass(); //clear all classes
    progressBar.addClass($classtoSet);
}

function TriggerProgressBar($productid, $sku, $bid_start_time) {
    var bidType = $('#bid_type_' + $productid);
    var text = "Accepting Bids";
    var bidCount = $('#bid_count_' + $productid);
    var bidsPlaced = $('#bids_placed_' + $productid);
    var progressBar = $('#progressBar' + $productid);
    var bidStatusText = $('#bid_status_' + $productid);
    var placebid = $('#placebid_' + $productid);
    var starttime = $bid_start_time * 1000;//convert to ms

    var bidplacedParam = {
        easing: "linear",
        loop: false,
        duration: starttime, //milliseconds
        begin: function (elements) {
            ItemUpdate($productid, $sku, 'NO');
        },
        progress: function (elements, percentComplete, timeRemaining, timeStart) {
            //$percentComplete.html(Math.round(percentComplete * 100) + "% complete.");
            //$timeRemaining.html(timeRemaining + "Going Once.");
            //console.log('Timer here '+timeRemaining+' for product '+$productid+' and sku '+$sku);
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
                    //console.log('product id to remove ' + $productid);
                    ItemUpdate($productid, $sku, 'YES');
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

    /*
     bid types
     0 bid countdown
     1 awaiting bids
     2 going once
     3 going twice
     4 bid won
     */
    //call placebid function
    bidType.val(1); //set to awaiting bids
    bidStatusText.html('Accepting Bids');

    //FetchNextItem();
    placeBid($productid, $sku); //send the bid details for the logged in user
    //trigger ajax function
    progressBar.removeClass("noplacedbids goingonce goingtwice").addClass('awaitingbid'); //always await bid
    //stop and clear the animation queue
    progressBar.velocity('stop', true).velocity({width: '100%'}, {duration: 1});
    //chain this progress bar since its for going once and going twice
    progressBar.velocity({width: '0%'}, bidplacedParam) //Awaiting bid
        .velocity({width: '100%'}, {
            duration: 1, complete: function () {
                //add class for going once
                progressBar.removeClass("noplacedbids awaitingbid goingtwice").addClass('goingonce'); //always await bid
            }
        })//resets back to 100
        .velocity({width: '0%'}, bidplacedParam) //going once
        .velocity({width: '100%'}, {
            duration: 1, complete: function () {
                //add class for going twice
                progressBar.removeClass("noplacedbids awaitingbid goingonce").addClass('goingtwice'); //always await bid
            }
        })//resets back to 100
        .velocity({width: '0%'}, bidplacedParam) //going twice
}

function placeBid($product_id, $sku) {
    //do an ajax request
    //FetchNextItem($product_id);
    //return;
    var $bidUrl = $('#bid_url').val();
    var $user_id = $('#user_id').val();
    var bidsPlaced = $('#bids_placed_' + $product_id);
    var bid_price = $('#bid_price' + $product_id);
    console.log($bidUrl);
    console.log($user_id);
    console.log($sku);
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
        },
        type: 'GET'
    });
}

function FetchNextItem($previous_product_id) {
    var $productUrl = $('#product_url').val();
    var $productBox = $('#item_box_' + $previous_product_id);
    var intervals = Math.floor((Math.random() * 1500) + 2500);
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
            $productBox.fadeOut(intervals, function () {
                $(this).remove();
                $('#product_list').append(data.html_data);
                //$('#product_list').prepend(data.html_data);
                $('.fadein').fadeIn(intervals);
                //scroll to the top
                $("html, body").animate({scrollTop: 0}, "slow");
                //next add the click event listeners to the dynamic items
                RefreshSomeEventListener(data.product_id, data.sku);
            });
        },
        type: 'POST'
    });
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
    var intervals = Math.floor((Math.random() * 6000) + 1560);
    /*$.get(updateUrl, {product_id: $product_id, sku: $sku}, function (data) {
     var $bid_count = data.bid_count;
     var $new_bid_price = data.bid_price;
     var $discount = data.discount;
     console.log(data);
     });*/
    //console.log('Clear interval ' + intervalObj[$product_id]);
    clearInterval(intervalObj[$product_id]); //remove the interval

    if ($toclear == 'NO') { //if its not in non clear mode do set another interval
        intervalObj[$product_id] = setInterval(function () {
            var updateUrl = $('#update_url').val();
            $.getJSON(updateUrl, {product_id: $product_id, sku: $sku}, function (data) {
                var $bid_count = data.bid_count;
                var $new_bid_price = data.bid_price;
                $bidPrice.html($new_bid_price);
                bidsPlaced.html($bid_count);
            });
        }, intervals); //check every n seconds
        console.log('Set interval {' + intervalObj[$product_id]+'} {'+intervals+'}');
    } else {
        //flag the item as won in the DB
        //alert('clearing and winning bid');
        var userId = $('#user_id').val();
        var bidwonUrl = $('#bidwon_url').val();
        $.getJSON(bidwonUrl, {user_id: userId, product_id: $product_id, sku: $sku}, function (data) {
            //mark the item as won..no data is acted upon in the response
        });
    }
}