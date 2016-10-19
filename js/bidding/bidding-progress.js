/**
 * Created by TRITON on 10/19/2016.
 */

function setupVelocity($productid,$scenario)
{
    // Cache our jQuery objects.
    var $percentComplete = $("#percentComplete"+$productid);
    var $timeRemaining = $("#timeRemaining"+$productid);
    var progressBar = $('#progressBar'+$productid);
    var bidStatusText = $('#statusText'+$productid);
    var placebid = $('#placebid_'+$productid);
    var $sku = $('#product_sku_'+$productid).val();

    //read the values indicating what type of bid

    var params = {
        easing: "linear",
        //loop : 0,
        duration: 60000, //milliseconds
        progress: function(elements, percentComplete, timeRemaining, timeStart) {
            $percentComplete.html(Math.round(percentComplete * 100) + "% complete.");
            $timeRemaining.html(timeRemaining + "ms remaining.");
        },
        complete: function(){
            console.log("Completed the animation");
        },
    };

    var bidplacedParam = {
        easing: "linear",
        loop : false,
        duration: 10000, //milliseconds
        progress: function(elements, percentComplete, timeRemaining, timeStart) {
            $percentComplete.html(Math.round(percentComplete * 100) + "% complete.");
            $timeRemaining.html(timeRemaining + "Going Once.");
        }
    };

    // Use the progress callback.
    progressBar.velocity(
        {
            width: "0%", //animate the width
        },
        params);
    //add stop click event when placebid is clicked
    placebid.click(function(){

        //call placebid function
        placeBid($productid,$sku);
        //trigger ajax function
        progressBar.removeClass("noplacedbids goingonce goingtwice").addClass('awaitingbid'); //always await bid
        //stop and cl;ear the animation queue
        progressBar.velocity('stop',true).velocity({width:'100%'}, {duration:1});
        //chain this progress bar since its for going once and going twice
        progressBar.velocity({width:'0%'}, bidplacedParam) //Awaiting bid
            .velocity({width:'100%'}, {duration:1,complete:function () {
                //add class for going once
                progressBar.removeClass("noplacedbids awaitingbid goingtwice").addClass('goingonce'); //always await bid
            }})//resets back to 100
            .velocity({width:'0%'}, bidplacedParam) //going once
            .velocity({width:'100%'}, {duration:1, complete: function () {
                //add class for going twice
                progressBar.removeClass("noplacedbids awaitingbid goingonce").addClass('goingtwice'); //always await bid
            }})//resets back to 100
            .velocity({width:'0%'}, bidplacedParam); //going twice
    });
}

function changeClasses($classtoSet, $element){
    var progressBar = $('#'+$element);
//first clear all classes
    progressBar.removeClass(); //clear all classes
    progressBar.addClass($classtoSet);
}

function placeBid($product_id,$sku) {
    //do an ajax request


    var $bidUrl =  $('#bid_url_'+$product_id).val();
    var $user_id =  $('#user_id').val();

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