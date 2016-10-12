<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/10
 * Time: 14:40
 */
/* @var $model app\module\products\models\Products */
/* @var $image app\module\products\models\Images */
use yii\helpers\Html;
use yii\helpers\Url;

$imageObject = $model->getSingleImage();
$image = $imageObject ? $imageObject->IMAGE_URL : 'http://placehold.it/400/c55/fff';

?>
<div class="col-xs-18 col-sm-4 col-md-3">
    <div class="productbox">
        <div class="imgthumb img-responsive">
            <?= Html::img($image, ['width' => 400, 'class' => 'img img-responsive', 'alt' => $model->PRODUCT_NAME]); ?>
        </div>
        <div class="caption">
            <h5>Thumbnail label</h5>
            <s class="text-muted"><?= $model->RETAIL_PRICE; ?></s> <b class="finalprice"><?= $model->PRICE; ?></b> from <b>Amazon</b>
            <a href="#" class="btn btn-default btn-xs pull-right" role="button"><i
                    class="glyphicon glyphicon-zoom-in"></i></a>
            <p>
                <button type="button" class="btn btn-success btn-md btn-block">Get Offer</button>
            </p>
        </div>
        <div class="saleoffrate">
            <b>90%</b><br>OFF
        </div>
    </div>
</div>
