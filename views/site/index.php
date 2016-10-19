<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */

/*use yii\widgets\ListView;

//var_dump($listDataProvider);

$listviewWidget = ListView::widget([
    'dataProvider' => $listDataProvider,
    'options' => [
        'tag' => 'div',
        'class' => 'list-wrapper',
        'id' => 'list-wrapper',
    ],
    'layout' => "{items}",
    //'layout' => "{pager}\n{items}\n{summary}",
    'itemView' => '_product_view_old',
]);

echo $listviewWidget;
*/

/*
$this->registerJs(
    '$("document").ready(function(){ 
    var currentdate = new Date(); 
    
    console.log(currentdate);
        var width = 600,
            steps = 1000;

        $("#velocity")
            .velocity(
                {
                    width: \'100%\'
                },
                {
                    easing: "linear",//[steps],
                    duration: 60000
                })
        .velocity(
         {
         width: width,
         backgroundColor: "#306eff"
         },
         {
         delay: 10,
         easing: "easeIn",
         duration: 1000
         });
         
            console.log(currentdate);
    });'
);*/

$this->registerJs('
    $("document").ready(function(){
        // Cache our jQuery objects.
        var $percentComplete = $("#percentComplete"),
        $timeRemaining = $("#timeRemaining");

    // Use the progress callback.
        $("#velocity").velocity(
        { 
            //scale: 1.5
            width: "1%" //animate the width
        },
        {
            easing: "linear",
            duration: 10000, //milliseconds
            progress: function(elements, percentComplete, timeRemaining, timeStart) {
                $percentComplete.html(Math.round(percentComplete * 100) + "% complete.");
                $timeRemaining.html(timeRemaining + "ms remaining.");
            },
           complete: function(){
                console.log("Completed the animation");
           },
        });
        
        //add stop click event
            $("#stop").click(function(){
                 $("#velocity").velocity("stop");
            });
            
            //add start event
              $("#start").click(function(){
                 $("#velocity").velocity("start");
            });
    });
');
?>

<!--<div id="velocity"></div>-->
<p>
    Refresh this page to re-run the demo.
</p>

<p>
    <span id="percentComplete">0% complete.</span> <span id="timeRemaining">9999ms remaining.</span>
</p>

<div id="velocity"></div>
<button id="sart">Start</button>
<button id="stop">Stop</button>
<style>
    body {
        font-family: "Helvetica Neue", Helvetica;
        width: 90%;
        font-weight: 200;
        letter-spacing: 1px;
        margin: 25px auto 0 auto;
        background: rgb(234, 235, 235);
        color: rgb(25, 25, 25);
    }

    #velocity {
        width: 100%;
        height: 21px;
        background-color: red;
    }
</style>

