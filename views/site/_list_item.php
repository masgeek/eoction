<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2016/10/12
 * Time: 12:50
 */

/* @var $model app\module\products\models\Products */
/* @var $image app\module\products\models\Images */
use yii\helpers\Html;
use yii\helpers\Url;

$imageObject = $model->getSingleImage();
$image = $imageObject ? $imageObject->IMAGE_URL : 'http://placehold.it/400/c55/fff';

?>
<div class="col-md-3">
    <article class="item" data-key="<?= $model->PRODUCT_ID; ?>">
        <h3 class="small">
            <?= Html::a(Html::encode($model->PRODUCT_NAME), Url::toRoute(['post/show', 'id' => $model->PRODUCT_ID]), ['title' => $model->SKU]) ?>
        </h3>

        <div class="item-excerpt">
            <?= Html::encode($model->UID); ?>
        </div>
        <div class="item-excerpt">
            <?= Html::img($image, ['width' => 400, 'class' => 'img img-responsive', 'alt' => $model->PRODUCT_NAME]);
            ?>
        </div>

    </article>
</div>