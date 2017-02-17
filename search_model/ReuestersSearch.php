<?php

namespace app\search_model;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\BidRequesters;

/**
 * ReuestersSearch represents the model behind the search form of `app\models\BidRequesters`.
 */
class ReuestersSearch extends BidRequesters
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['REQUESTER_ID', 'REQUESTED_ID', 'REQUESTING_USER_ID', 'CUSTOMER_NOTIFIED', 'REQUEST_ACCEPTED'], 'integer'],
            [['CUSTOMER_NOTES', 'CREATED', 'UPDATED'], 'safe'],
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
        $query = BidRequesters::find();

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
            'REQUESTER_ID' => $this->REQUESTER_ID,
            'REQUESTED_ID' => $this->REQUESTED_ID,
            'REQUESTING_USER_ID' => $this->REQUESTING_USER_ID,
            //'CUSTOMER_NOTIFIED' => $this->CUSTOMER_NOTIFIED,
            //'REQUEST_ACCEPTED' => $this->REQUEST_ACCEPTED,
            //'CREATED' => $this->CREATED,
            //'UPDATED' => $this->UPDATED,
        ]);

        $query->andFilterWhere(['like', 'CUSTOMER_NOTES', $this->CUSTOMER_NOTES]);

        return $dataProvider;
    }
}
