<?php
return [
	'class' => 'app\bidding\ActiveBids',
	'maximum_items' => YII_DEBUG ? 10 : 24,
	'bidding_minute_duration' => YII_DEBUG ? 1 : 5
];