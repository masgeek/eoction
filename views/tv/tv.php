<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 12/21/2016
 * Time: 9:15 PM
 */
use cics\widgets\VideoEmbed;

?>

<?= VideoEmbed::widget([
    'url' => 'http://www.youtube.com/watch?v=NMjA5N7kbEQ',
    'container_id' => 'yourCustomId',
    'container_class' => 'your-custom-class a-second-custom-class',
]); ?>
