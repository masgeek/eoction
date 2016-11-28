<?php

namespace app\module\products;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\module\products\models\Images;

/**
 * ImagesSearch represents the model behind the search form about `app\module\products\models\Images`.
 */
class ImagesSearch extends Images
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['IMAGE_ID', 'PRODUCT_ID'], 'integer'],
            [['IMAGE_URL'], 'safe'],
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
        $query = Images::find();

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
            'IMAGE_ID' => $this->IMAGE_ID,
            'PRODUCT_ID' => $this->PRODUCT_ID,
        ]);

        $query->andFilterWhere(['like', 'IMAGE_URL', $this->IMAGE_URL]);

        return $dataProvider;
    }
}