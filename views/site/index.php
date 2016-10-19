<?php
/**
 *
 * @var \yii\data\ActiveDataProvider $listDataProvider
 */

use yii\widgets\ListView;

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
$this->registerJsFile('@web/js/bidding/bidding-progress.js');
?>

<style>
    .bidProgress {
        width: 100%;
        height: 21px;
    }

    .noplacedbids{  background-color: red;  }
    .awaitingbid{  background-color: rebeccapurple;  }
    .goingonce{  background-color: #0000aa;  }
    .goingtwice{  background-color: #4daa85;  }
    .bidwon{  background-color: #0000aa;  }
    .nextbid{  background-color: #0000aa;  }
</style>

