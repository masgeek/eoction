<?php

namespace app\module\products\models;

use Yii;

/**
 * This is the model class for table "{{%fry_product_images}}".
 *
 * @property integer $imageid
 * @property integer $imageprodid
 * @property string $imageprodhash
 * @property string $imagefile
 * @property integer $imageisthumb
 * @property integer $imagesort
 * @property string $imagefiletiny
 * @property string $imagefilethumb
 * @property string $imagefilestd
 * @property string $imagefilezoom
 * @property string $imagedesc
 * @property integer $imagedateadded
 * @property string $imagefiletinysize
 * @property string $imagefilethumbsize
 * @property string $imagefilestdsize
 * @property string $imagefilezoomsize
 */
class FryProductImages extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%fry_product_images}}';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb()
    {
        return Yii::$app->get('affy');
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['imageid'], 'required'],
            [['imageid', 'imageprodid', 'imageisthumb', 'imagesort', 'imagedateadded'], 'integer'],
            [['imagedesc'], 'string'],
            [['imageprodhash'], 'string', 'max' => 32],
            [['imagefile', 'imagefiletiny', 'imagefilethumb', 'imagefilestd', 'imagefilezoom'], 'string', 'max' => 255],
            [['imagefiletinysize', 'imagefilethumbsize', 'imagefilestdsize', 'imagefilezoomsize'], 'string', 'max' => 11],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'imageid' => 'Imageid',
            'imageprodid' => 'Imageprodid',
            'imageprodhash' => 'Imageprodhash',
            'imagefile' => 'Imagefile',
            'imageisthumb' => 'Imageisthumb',
            'imagesort' => 'Imagesort',
            'imagefiletiny' => 'Imagefiletiny',
            'imagefilethumb' => 'Imagefilethumb',
            'imagefilestd' => 'Imagefilestd',
            'imagefilezoom' => 'Imagefilezoom',
            'imagedesc' => 'Imagedesc',
            'imagedateadded' => 'Imagedateadded',
            'imagefiletinysize' => 'Imagefiletinysize',
            'imagefilethumbsize' => 'Imagefilethumbsize',
            'imagefilestdsize' => 'Imagefilestdsize',
            'imagefilezoomsize' => 'Imagefilezoomsize',
        ];
    }
}
