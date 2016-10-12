<?php

namespace app\module\products\models;

/**
 * This is the ActiveQuery class for [[ProductVideos]].
 *
 * @see ProductVideos
 */
class ProductVideosQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return ProductVideos[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return ProductVideos|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
