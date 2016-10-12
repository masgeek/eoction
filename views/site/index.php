<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */
use yii\widgets\ListView;

//var_dump($listDataProvider);
?>
<button id="startProgressTimer">Do it!</button>
<h1>js loading Progress bar</h1>
<div class="progress" width="20">
    <div class="progress-bar progress-bar-striped active"  role="progressbar" aria-valuenow="100"  aria-valuemax="100" aria-valuemin="0" style="width: 100%">
        <h4 class="modal-title" id="myModalLabel"><p id="demo"></p>%</h4>
    </div>
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
    $("#startProgressTimer").click(function() {
    /*****/
    var myVar=setInterval(function(){myTimer()},30);
var count = 100;
function myTimer() {
if(count > 0){
  $(\'.progress\').css(\'width\', count + "%");
  count -= 0.05;
   document.getElementById("demo").innerHTML = Math.round(count) +"%";
   // code to do when loading
  }
  
  else if(count < 0){  
      // code to do after loading
  count = 0;

  
  }
}
    /*****/
    });
    });'
);
?>

