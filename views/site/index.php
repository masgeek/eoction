<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */
//use yii\widgets\ListView;

//var_dump($listDataProvider);
/*
$listviewWidget = ListView::widget([
    'dataProvider' => $listDataProvider,
    'options' => [
        'tag' => 'div',
        'class' => 'list-wrapper',
        'id' => 'list-wrapper',
    ],
    'layout' => "{items}",
    //'layout' => "{pager}\n{items}\n{summary}",
    'itemView' => '_product_view',
]);

echo $listviewWidget;
*/

$this->registerJs('
$(document).ready(function(){
$("#DateCountdown").TimeCircles();
    $("#CountDownTimer").TimeCircles({ time: { Days: { show: false }, Hours: { show: false },Minutes:{show: false} }});
    $("#PageOpenTimer").TimeCircles();

    var updateTime = function(){
        var date = $("#date").val();
        var time = $("#time").val();
        var datetime = date + \' \' + time + \':00\';
        $("#DateCountdown").data(\'date\', datetime).TimeCircles().start();
    }

    // Start and stop are methods applied on the public TimeCircles instance
    $(".startTimer").click(function() {
        $("#CountDownTimer").TimeCircles().start();
    });
    $(".stopTimer").click(function() {
        $("#CountDownTimer").TimeCircles().stop();
    });
});');
?>

<div class="col-md-8 col-md-offest-2">
    <h2>Counting down 15 minutes (900 seconds)</h2>
    <div id="CountDownTimer" data-timer="60" style="width: 1000px; height: 250px;"></div>
    <button class="btn btn-success startTimer">Start Timer</button>
    <button class="btn btn-danger stopTimer">Stop Timer</button>
</div>

