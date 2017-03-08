<?php

use yii\helpers\Html;
//use yii\widgets\ActiveForm;
use \kartik\form\ActiveForm;
use \kartik\file\FileInput;


/* @var $this yii\web\View */
/* @var $model app\module\products\models\Images */
/* @var $form yii\widgets\ActiveForm */
/* @var $product_id string */


?>

<div class="images-form">

    <?php $form = ActiveForm::begin([
        'options' => ['enctype' => 'multipart/form-data']
    ]); ?>

    <?= $form->field($model, 'PRODUCT_ID')->textInput(['value' => $product_id, 'readonly' => true]) ?>

    <!--?= $form->field($model, 'IMAGE')->widget(\kartik\file\FileInput::className(), [
        'options' => ['accept' => 'image/*'],
        'pluginOptions' => ['allowedFileExtensions' => ['jpg', 'gif', 'png']]
    ]); ?-->


    <?= $form->field($model, 'IMAGE')->widget(FileInput::className(), [
        'options' => ['accept' => 'image/*', 'multiple' => true],
        'pluginOptions' => [
            'allowedFileExtensions' => ['jpg', 'jpeg', 'gif', 'png'],
            'maxFileCount' => 10,
            'uploadAsync' => true,
            'uploadExtraData' => [
                'PRODUCT_ID' => $product_id,
                '_csrf' => Yii::$app->request->csrfToken
            ],
            //'uploadUrl' => \yii\helpers\Url::to(['upload-image', 'product_id' => $product_id])
            'uploadUrl' => \yii\helpers\Url::to(['upload-image'])
        ]
    ]); ?>
    <!--= \kartik\file\FileInput::widget([
        'name' => 'IMAGE[]',
        'options' => [
            'multiple' => true
        ],
        'pluginOptions' => [
            'initialPreview' => [
                //"http://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/FullMoon2010.jpg/631px-FullMoon2010.jpg",
                //"http://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Earth_Eastern_Hemisphere.jpg/600px-Earth_Eastern_Hemisphere.jpg"
            ],
            'initialPreviewAsData' => true,
            'initialCaption' => "Product Images",
            'initialPreviewConfig' => [
                //['caption' => 'Moon.jpg', 'size' => '873727'],
               //['caption' => 'Earth.jpg', 'size' => '1287883'],
            ],
            'overwriteInitial' => false,
            'maxFileSize' => 2800
        ]
    ]); ?-->

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
