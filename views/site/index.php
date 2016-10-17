<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */
use yii\widgets\ListView;

//var_dump($listDataProvider);
/*ListView::widget([
    'dataProvider' => $listDataProvider,
    'options' => [
        'tag' => 'div',
        'class' => 'list-wrapper',
        'id' => 'list-wrapper',
    ],
    'layout' => "{items}",
    //'layout' => "{pager}\n{items}\n{summary}",
    'itemView' => '_product_view',
]);*/
?>

<div id='timer'></div>
<div id='progress' style='background:red; height:10px;'></div>
<button id="cancel" >Cancel</button>

<?php
$this->registerJs('
       
$("document").ready(function () {
var intervalSet = null;

$("#cancel").click(function() {
      //started(10);
      //clearInterval(intervalSet);
});
        function started(duration) {

            var TotalSeconds = 40;
            var documentWidth = $(document).width();
            var start = Date.now();
            
            function timer() {

                var diff = duration - (((Date.now() - start) / 1000) | 0);

                var seconds = (diff % 60) | 0;

                seconds = seconds < 10 ? "0" + seconds : seconds;

                $(\'#timer\').html("00:" + seconds);

                var progresBarWidth = (seconds * documentWidth / TotalSeconds);


                $(\'#progress\').animate({
                    width: progresBarWidth + \'px\'
                }, 1000);

                if (diff <= 0) {
                    clearInterval(intervalSet);
                }

            }

            timer();
            intervalSetted = setInterval(timer, 1000);
        }
    
        started(10);
    });');
?>

