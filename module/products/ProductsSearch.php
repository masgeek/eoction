<?php

namespace app\module\products;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\module\products\models\FryProducts;

/**
 * ProductsSearch represents the model behind the search form of `app\module\products\models\FryProducts`.
 */
class ProductsSearch extends FryProducts
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['productid', 'allow_purchase', 'available', 'visible', 'track_inventory', 'stock_level'], 'integer'],
            [['name', 'category', 'brand', 'sku', 'desc', 'price', 'buyitnow', 'cost_price', 'sale_price', 'retail_price', 'min_stock', 'weight', 'page_title', 'search_keywords', 'meta_keywords', 'meta_desc', 'condition', 'show_condition', 'upc', 'Attribute1', 'Attribute2', 'Attribute3', 'Attribute4', 'Attribute5', 'Attribute6', 'Attribute7', 'Attribute8', 'Attribute9', 'Attribute10', 'Attribute11', 'Attribute12', 'Attribute13', 'Attribute14', 'Attribute15', 'Attribute16', 'Attribute17', 'Attribute18', 'Attribute19', 'Attribute20', 'Attribute21', 'Attribute22', 'Attribute23', 'Attribute24', 'Attribute25', 'Attribute26', 'Attribute27', 'Attribute28', 'Attribute29', 'Attribute30', 'Attribute31', 'Attribute32', 'ebay_cat_id1', 'ebay_cat_id2', 'notes', 'stock_type', 'stock_location', 'image1', 'image2', 'image3', 'image4'], 'safe'],
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
        $query = FryProducts::find();

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
            'productid' => $this->productid,
            'allow_purchase' => $this->allow_purchase,
            'available' => $this->available,
            'visible' => $this->visible,
            'track_inventory' => $this->track_inventory,
            'stock_level' => $this->stock_level,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'category', $this->category])
            ->andFilterWhere(['like', 'brand', $this->brand])
            ->andFilterWhere(['like', 'sku', $this->sku])
            ->andFilterWhere(['like', 'desc', $this->desc])
            ->andFilterWhere(['like', 'price', $this->price])
            ->andFilterWhere(['like', 'buyitnow', $this->buyitnow])
            ->andFilterWhere(['like', 'cost_price', $this->cost_price])
            ->andFilterWhere(['like', 'sale_price', $this->sale_price])
            ->andFilterWhere(['like', 'retail_price', $this->retail_price])
            ->andFilterWhere(['like', 'min_stock', $this->min_stock])
            ->andFilterWhere(['like', 'weight', $this->weight])
            ->andFilterWhere(['like', 'page_title', $this->page_title])
            ->andFilterWhere(['like', 'search_keywords', $this->search_keywords])
            ->andFilterWhere(['like', 'meta_keywords', $this->meta_keywords])
            ->andFilterWhere(['like', 'meta_desc', $this->meta_desc])
            ->andFilterWhere(['like', 'condition', $this->condition])
            ->andFilterWhere(['like', 'show_condition', $this->show_condition])
            ->andFilterWhere(['like', 'upc', $this->upc])
            ->andFilterWhere(['like', 'Attribute1', $this->Attribute1])
            ->andFilterWhere(['like', 'Attribute2', $this->Attribute2])
            ->andFilterWhere(['like', 'Attribute3', $this->Attribute3])
            ->andFilterWhere(['like', 'Attribute4', $this->Attribute4])
            ->andFilterWhere(['like', 'Attribute5', $this->Attribute5])
            ->andFilterWhere(['like', 'Attribute6', $this->Attribute6])
            ->andFilterWhere(['like', 'Attribute7', $this->Attribute7])
            ->andFilterWhere(['like', 'Attribute8', $this->Attribute8])
            ->andFilterWhere(['like', 'Attribute9', $this->Attribute9])
            ->andFilterWhere(['like', 'Attribute10', $this->Attribute10])
            ->andFilterWhere(['like', 'Attribute11', $this->Attribute11])
            ->andFilterWhere(['like', 'Attribute12', $this->Attribute12])
            ->andFilterWhere(['like', 'Attribute13', $this->Attribute13])
            ->andFilterWhere(['like', 'Attribute14', $this->Attribute14])
            ->andFilterWhere(['like', 'Attribute15', $this->Attribute15])
            ->andFilterWhere(['like', 'Attribute16', $this->Attribute16])
            ->andFilterWhere(['like', 'Attribute17', $this->Attribute17])
            ->andFilterWhere(['like', 'Attribute18', $this->Attribute18])
            ->andFilterWhere(['like', 'Attribute19', $this->Attribute19])
            ->andFilterWhere(['like', 'Attribute20', $this->Attribute20])
            ->andFilterWhere(['like', 'Attribute21', $this->Attribute21])
            ->andFilterWhere(['like', 'Attribute22', $this->Attribute22])
            ->andFilterWhere(['like', 'Attribute23', $this->Attribute23])
            ->andFilterWhere(['like', 'Attribute24', $this->Attribute24])
            ->andFilterWhere(['like', 'Attribute25', $this->Attribute25])
            ->andFilterWhere(['like', 'Attribute26', $this->Attribute26])
            ->andFilterWhere(['like', 'Attribute27', $this->Attribute27])
            ->andFilterWhere(['like', 'Attribute28', $this->Attribute28])
            ->andFilterWhere(['like', 'Attribute29', $this->Attribute29])
            ->andFilterWhere(['like', 'Attribute30', $this->Attribute30])
            ->andFilterWhere(['like', 'Attribute31', $this->Attribute31])
            ->andFilterWhere(['like', 'Attribute32', $this->Attribute32])
            ->andFilterWhere(['like', 'ebay_cat_id1', $this->ebay_cat_id1])
            ->andFilterWhere(['like', 'ebay_cat_id2', $this->ebay_cat_id2])
            ->andFilterWhere(['like', 'notes', $this->notes])
            ->andFilterWhere(['like', 'stock_type', $this->stock_type])
            ->andFilterWhere(['like', 'stock_location', $this->stock_location])
            ->andFilterWhere(['like', 'image1', $this->image1])
            ->andFilterWhere(['like', 'image2', $this->image2])
            ->andFilterWhere(['like', 'image3', $this->image3])
            ->andFilterWhere(['like', 'image4', $this->image4]);

        return $dataProvider;
    }

    public function productsearch($search_string, $no_of_items = 20, $auction_param = [1, 0], $min_stock = 0)
    {
        //$query = FryProducts::find();

        // add conditions that should always apply here
        $query = FryProducts::find()
            ->distinct('sku')
            ->where(['IN', 'visible', $auction_param,])
            ->andWhere(['>=', 'stock_level', $min_stock])//stock levels should be greater or equal to 1
            ->orderBy('productid ASC');


        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => $no_of_items
            ],
        ]);

        //$this->load($params);

        $query->orFilterWhere(['like', 'name', $search_string])
            ->orFilterWhere(['like', 'category', $search_string])
            ->orFilterWhere(['like', 'brand', $search_string])
            ->orFilterWhere(['like', 'sku', $search_string])
            ->orFilterWhere(['like', 'desc', $search_string])
            //->orFilterWhere(['like', 'price', $search_string])
            //->orFilterWhere(['like', 'cost_price', $search_string])
            //->orFilterWhere(['like', 'sale_price', $search_string])
            //->orFilterWhere(['like', 'retail_price', $search_string])
            ->orFilterWhere(['like', 'search_keywords', $search_string])
            //->orFilterWhere(['like', 'meta_keywords', $search_string])
           //->orFilterWhere(['like', 'meta_desc', $search_string])
            ->orFilterWhere(['like', 'condition', $search_string])
            ->orFilterWhere(['like', 'upc', $search_string])
            ->orFilterWhere(['like', 'Attribute1', $search_string])
            ->orFilterWhere(['like', 'Attribute2', $search_string])
            ->orFilterWhere(['like', 'Attribute3', $search_string])
            ->orFilterWhere(['like', 'Attribute4', $search_string])
            ->orFilterWhere(['like', 'Attribute5', $search_string])
            ->orFilterWhere(['like', 'Attribute6', $search_string])
            ->orFilterWhere(['like', 'Attribute7', $search_string])
            ->orFilterWhere(['like', 'Attribute8', $search_string])
            ->orFilterWhere(['like', 'Attribute9', $search_string])
            ->orFilterWhere(['like', 'Attribute10', $search_string])
            ->orFilterWhere(['like', 'Attribute11', $search_string])
            ->orFilterWhere(['like', 'Attribute12', $search_string])
            ->orFilterWhere(['like', 'Attribute13', $search_string])
            ->orFilterWhere(['like', 'Attribute14', $search_string])
            ->orFilterWhere(['like', 'Attribute15', $search_string])
            ->orFilterWhere(['like', 'Attribute16', $search_string])
            ->orFilterWhere(['like', 'Attribute17', $search_string])
            ->orFilterWhere(['like', 'Attribute18', $search_string])
            ->orFilterWhere(['like', 'Attribute19', $search_string])
            ->orFilterWhere(['like', 'Attribute20', $search_string])
            ->orFilterWhere(['like', 'Attribute21', $search_string])
            ->orFilterWhere(['like', 'Attribute22', $search_string])
            ->orFilterWhere(['like', 'Attribute23', $search_string])
            ->orFilterWhere(['like', 'Attribute24', $search_string])
            ->orFilterWhere(['like', 'Attribute25', $search_string])
            ->orFilterWhere(['like', 'Attribute26', $search_string])
            ->orFilterWhere(['like', 'Attribute27', $search_string])
            ->orFilterWhere(['like', 'Attribute28', $search_string])
            ->orFilterWhere(['like', 'Attribute29', $search_string])
            ->orFilterWhere(['like', 'Attribute30', $search_string])
            ->orFilterWhere(['like', 'Attribute31', $search_string])
            ->orFilterWhere(['like', 'Attribute32', $search_string])
            ->orFilterWhere(['like', 'notes', $search_string])
            ->orFilterWhere(['like', 'stock_type', $search_string])
            ->orFilterWhere(['like', 'stock_location', $search_string]);

        return $dataProvider;
    }
}
