<?php
return [
	'class' => 'app\bidding\ActiveBids',
	'maximum_items' => YII_DEBUG ? 10 : 80,
	'bidding_minute_duration' => YII_DEBUG ? 1 : 5
];