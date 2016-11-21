<?php

namespace app\module\users\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\module\users\models\Users;

/**
 * UsersSearch represents the model behind the search form about `app\module\users\models\Users`.
 */
class UsersSearch extends Users
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['USER_ID', 'SOCIAL_ID'], 'integer'],
            [['FULL_NAMES', 'EMAIL_ADDRESS','PHONE_NO', 'TIMEZONE', 'COUNTRY', 'DATE_CREATED', 'DATE_UPDATED'], 'safe'],
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
        $query = Users::find();

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
            'USER_ID' => $this->USER_ID,
            'SOCIAL_ID' => $this->SOCIAL_ID,
            'DATE_CREATED' => $this->DATE_CREATED,
            'DATE_UPDATED' => $this->DATE_UPDATED,
        ]);

        $query->andFilterWhere(['like', 'FULL_NAMES', $this->FULL_NAMES])
            ->andFilterWhere(['like', 'EMAIL_ADDRESS', $this->EMAIL_ADDRESS])
            ->andFilterWhere(['like', 'PHONE_NO', $this->PHONE_NO])
            ->andFilterWhere(['like', 'COUNTRY', $this->COUNTRY]);

        return $dataProvider;
    }
}
