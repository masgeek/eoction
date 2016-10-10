<?php

namespace app\module\products\query;

/**
 * This is the ActiveQuery class for [[\app\module\products\models\ProductsAttributes]].
 *
 * @see \app\module\products\models\ProductsAttributes
 */
class ProductsAttributesQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return \app\module\products\models\ProductsAttributes[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return \app\module\products\models\ProductsAttributes|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
