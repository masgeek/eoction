<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */
use yii\widgets\ListView;

//var_dump($listDataProvider);
?>
<div id="progressBar">
    <div></div>
</div>
<?= ListView::widget([
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

$this->registerJs(
    '$("document").ready(function(){ 
    function progress(timeleft, timetotal, $element) {
    var progressBarWidth = (timeleft * $element.width()) / timetotal;
          //console.log(progressBarWidth);
    $element.find(\'div\').animate({ width: progressBarWidth }, timeleft == timetotal ? 0 : 1000, \'linear\');
        console.log(timeleft);
    if(timeleft > 0) {
        setTimeout(function() {
            progress(timeleft - 1, timetotal, $element);
        }, 1000);
    }else{
        console.log("it is over");
        //perfom ajax call on the element
    }
};

//call the countdown function
progress(10, 10, $(\'#progressBar\'));
    });'
);
?>

<style>
    #progressBar {
        width: 100%;
        margin: 10px auto;
        height: 22px;
        background-color: transparent;
        border:1px solid red;
        /*background-image: linear-gradient(to right, #f00439, #f28d0d);*/
    }

    #progressBar div {
        height: 100%;
        text-align: right;
        line-height: 22px; /* same as #progressBar height if we want text middle aligned */
        width: 0;
        background-color: #CBEA00;
        box-sizing: border-box;
    }
</style>

