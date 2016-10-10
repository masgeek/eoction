<?php

namespace app\module\products;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\module\products\models\Products;

/**
 * ProductsSearch represents the model behind the search form about `app\module\products\models\Products`.
 */
class ProductsSearch extends Products
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PRODUCT_ID', 'ALLOW_PURCHASES', 'VISIBLE', 'AVAILABLE', 'CURRENT_STOCK_LEVEL', 'MIN_STOCK_LEVEL'], 'integer'],
            [['UID', 'SKU', 'PRODUCT_NAME', 'CATEGORIES', 'BRAND_NAME', 'TRACK_INVENTORY', 'STOCK_LOCATION', 'STOCK_TYPE', 'DATE_ADDED', 'DATE_UPDATED'], 'safe'],
            [['PRICE', 'RETAIL_PRICE'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Products::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'PRODUCT_ID' => $this->PRODUCT_ID,
            'PRICE' => $this->PRICE,
            'RETAIL_PRICE' => $this->RETAIL_PRICE,
            'ALLOW_PURCHASES' => $this->ALLOW_PURCHASES,
            'VISIBLE' => $this->VISIBLE,
            'AVAILABLE' => $this->AVAILABLE,
            'CURRENT_STOCK_LEVEL' => $this->CURRENT_STOCK_LEVEL,
            'MIN_STOCK_LEVEL' => $this->MIN_STOCK_LEVEL,
            'DATE_ADDED' => $this->DATE_ADDED,
            'DATE_UPDATED' => $this->DATE_UPDATED,
        ]);

        $query->andFilterWhere(['like', 'UID', $this->UID])
            ->andFilterWhere(['like', 'SKU', $this->SKU])
            ->andFilterWhere(['like', 'PRODUCT_NAME', $this->PRODUCT_NAME])
            ->andFilterWhere(['like', 'CATEGORIES', $this->CATEGORIES])
            ->andFilterWhere(['like', 'BRAND_NAME', $this->BRAND_NAME])
            ->andFilterWhere(['like', 'TRACK_INVENTORY', $this->TRACK_INVENTORY])
            ->andFilterWhere(['like', 'STOCK_LOCATION', $this->STOCK_LOCATION])
            ->andFilterWhere(['like', 'STOCK_TYPE', $this->STOCK_TYPE]);

        return $dataProvider;
    }
}
