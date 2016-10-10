<?php

namespace app\module\products\query;

/**
 * This is the ActiveQuery class for [[\app\module\products\models\Products]].
 *
 * @see \app\module\products\models\Products
 */
class ProductsQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return \app\module\products\models\Products[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return \app\module\products\models\Products|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
