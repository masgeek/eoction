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
    'itemView' => '_product_view',
]);

echo $listviewWidget;

