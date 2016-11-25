<?php

namespace app\module\products\models;

use Yii;
use yii\web\UploadedFile;

/**
 * This is the model class for table "{{%tb_product_images}}".
 *
 * @property integer $IMAGE_ID
 * @property integer $PRODUCT_ID
 * @property string $IMAGE_URL
 * @property string $IMAGE
 *
 * @property Products $PRODUCT
 */
class Images extends \yii\db\ActiveRecord
{
    public $IMAGE;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tb_product_images}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PRODUCT_ID', 'IMAGE_URL'], 'required'],
            [['IMAGE'], 'safe'],
            [['IMAGE'], 'file', 'extensions' => 'jpeg, jpg, png, gif', 'maxSize' => 20 * 1024 * 1024, 'maxFiles' => 10],
            [['PRODUCT_ID'], 'integer'],
            [['IMAGE_URL'], 'string', 'max' => 255],
            [['PRODUCT_ID'], 'exist', 'skipOnError' => true, 'targetClass' => Products::className(), 'targetAttribute' => ['PRODUCT_ID' => 'PRODUCT_ID']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'IMAGE_ID' => 'Image ID',
            'PRODUCT_ID' => 'Product ID',
            'IMAGE_URL' => 'Image Url',
        ];
    }

    /* Image handlking functions */
    /**
     * fetch stored image file name with complete path
     * @return string
     */
    public function getImageFile()
    {
        $imagesFolder = Yii::$app->params['imagesFolder'];
        $path = Yii::$app->basePath . $imagesFolder;

        return isset($this->IMAGE) ? $path . $this->IMAGE : null;
    }

    /**
     * fetch stored image url
     * @return string
     */
    public function getImageUrl()
    {
        // return a default image placeholder if your source avatar is not found
        $image_file = isset($this->IMAGE) ? $this->IMAGE : 'placeholder.jpg';
        $imagesFolder = Yii::$app->params['imagesFolder'];
        //$path = Yii::$app->basePath . $imagesFolder;
        $path = $imagesFolder;

        return $path . $image_file;
    }

    /**
     * Process upload of image
     *
     * @return mixed the uploaded image instance
     */
    public function uploadImage()
    {
        // get the uploaded file instance. for multiple file uploads
        // the following data will return an array (you may need to use
        // getInstances method)
        $image = UploadedFile::getInstance($this, 'IMAGE');

        // if no image was uploaded abort the upload
        if (empty($image)) {
            return false;
        }

        // store the source file name
        $this->IMAGE = $image->name;
        $img_arr = explode(".",$image->name);
        $ext = end($img_arr); //get teh image extension

        // generate a unique file name
        $this->IMAGE = Yii::$app->security->generateRandomString() . ".{$ext}";
        // the uploaded image instance
        return $image;
    }

    /**
     * Process deletion of image
     *
     * @return boolean the status of deletion
     */
    public function deleteImage()
    {
        $file = $this->getImageFile();
        // check if file exists on server
        if (empty($file) || !file_exists($file)) {
            return false;
        }

        // check if uploaded file can be deleted on server
        if (!unlink($file)) {
            return false;
        }

        // if deletion successful, reset your file attributes
        $this->PRODUCT_ID = null;
        $this->IMAGE_URL = null;

        return true;
    }
    /* end image handling functions */
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPRODUCT()
    {
        return $this->hasOne(Products::className(), ['PRODUCT_ID' => 'PRODUCT_ID']);
    }

    /**
     * @inheritdoc
     * @return ImagesQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ImagesQuery(get_called_class());
    }
}
