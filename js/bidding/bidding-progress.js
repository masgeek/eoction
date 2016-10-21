/**
 * Created by TRITON on 10/19/2016.
 */

function setupVelocity($productid, $bid_start_time) {
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
    var $sku = $('#product_sku_' + $productid).val();

    //read the values indicating what type of bid

    var params = {
        easing: "linear",
        //loop : 0,
        duration: starttime, //milliseconds
        progress: function (elements, percentComplete, timeRemaining, timeStart) {
            //$percentComplete.html(Math.round(percentComplete * 100) + "% complete.");
            //$timeRemaining.html(timeRemaining + "ms remaining.");
        },
        complete: function () {
            console.log("No bid placed, removing item");
            //remove the product
        },
    };

    var bidplacedParam = {
        easing: "linear",
        loop: false,
        duration: 10000, //milliseconds
        progress: function (elements, percentComplete, timeRemaining, timeStart) {
            //$percentComplete.html(Math.round(percentComplete * 100) + "% complete.");
            //$timeRemaining.html(timeRemaining + "Going Once.");
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
                    //remove item and disble bid item
                    bidType.val(4);
                    text = ""; //clear teh text
                    break;
                case '4':
                    //show the bid won progress
                    break;
            }
            console.log("countdown completed for " + scenario);
            bidStatusText.html(text);
            //bidType.val(4);
        }
    };

    // Use the progress callback.
    progressBar.velocity(
        {
            width: "0%", //animate the width
        },
        params);
    //add stop click event when placebid is clicked
    placebid.click(function () {
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

        fetchNextProduct();
        //placeBid($productid, $sku); //send the bid details for teh logged in user
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
            .velocity({width: '0%'}, bidplacedParam); //going twice
    });
}

function changeClasses($classtoSet, $element) {
    var progressBar = $('#' + $element);
//first clear all classes
    progressBar.removeClass(); //clear all classes
    progressBar.addClass($classtoSet);
}

function placeBid($product_id, $sku) {
    //do an ajax request
    var $bidUrl = $('#bid_url_' + $product_id).val();
    var $user_id = $('#user_id').val();

    /* console.log($bidUrl);
     console.log($user_id);
     console.log($sku);
     return 0;*/

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
        dataType: 'jsonp',
        before: function (data) {
            //stop the minute bid bar first
            //$('#progress' + $product_id).asProgress('stop');
        },
        success: function (data) {
            var $title = $('<h1>').text(data.talks[0].talk_title);
            var $description = $('<p>').text(data.talks[0].talk_description);
            $('#info' + $product_id)
                .append($title)
                .append($description);
        },
        type: 'GET'
    });
}

function fetchNextProduct(){
    $productUrl = $('product_url').val();

    $.ajax({
        url: $productUrl,
        error: function () {
            $('#info').html('<p>An error has occurred</p>');
        },
        dataType: 'html',
        before: function (data) {
            //stop the minute bid bar first
        },
        success: function (data) {
            /*var $title = $('<h1>').text(data.talks[0].talk_title);
            var $description = $('<p>').text(data.talks[0].talk_description);
            $('#info' + $product_id)
                .append($title)
                .append($description);*/
            $('#list-wrapper').append(data);
        },
        type: 'GET'
    });
}