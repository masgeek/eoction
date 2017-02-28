<?php

namespace app\module\users\controllers;

use Yii;
use app\module\users\models\UserAddress;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * AddressController implements the CRUD actions for UserAddress model.
 */
class AddressController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all UserAddress models.
     * @return mixed
     */
    public function actionIndex($user_id)
    {


        $dataProvider = new ActiveDataProvider([
            'query' => UserAddress::find()
            ->where(['USER_ID'=>$user_id]),
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
            'user_id' => $user_id
        ]);
    }

    /**
     * Displays a single UserAddress model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new UserAddress model.
     * If creation is successful, the browser will be redirected to the 'index' page.
     * @return mixed
     */
    public function actionAdd($user_id)
    {
        $model = new UserAddress();
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index', 'user_id' => $model->USER_ID]);
        } else {
            return $this->render('create', [
                'model' => $model,
                'user_id' => $user_id
            ]);
        }
    }

    /**
     * Updates an existing UserAddress model.
     * If update is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index', 'user_id' => $model->USER_ID]);
        } else {
            return $this->render('update', [
                'model' => $model,
                'user_id'=>$model->USER_ID,
            ]);
        }
    }

    /**
     * Deletes an existing UserAddress model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @param null $user_id
     * @return mixed
     */
    public function actionDelete($id, $user_id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index', 'id' => $user_id]);
    }

    /**
     * Finds the UserAddress model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return UserAddress the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = UserAddress::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
