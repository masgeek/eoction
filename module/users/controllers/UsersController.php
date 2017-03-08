<?php

namespace app\module\users\controllers;

use Yii;
use app\module\users\models\Users;
use app\module\users\search\UsersSearch;
use yii\db\Expression;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * UsersController implements the CRUD actions for Users model.
 */
class UsersController extends Controller
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
     * Lists all Users models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new UsersSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Users model.
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
     * Creates a new Users model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionSignup()
    {

        $model = new Users();
        $model->scenario = Users::SCENARIO_SIGNUP;
        if (isset($_POST['Users'])) {
            if ($model->load(Yii::$app->request->post()) && $model->save()) {
                //if ($model->save()) {
                Yii::$app->session->setFlash('success', "Account created successfully. You can now log in");
                return $this->redirect(['//site/login']);//redirect to the login page afer successful signup
            } else {
                $errors = $model->getErrors();
                $errorList = '<ul class="list-group">';
                foreach ($errors as $key => $error) {
                    $errorList .= '<li class="list-group-item">';
                    $errorList .= $errors[$key][0];
                    $errorList .= '</li>';
                }
                $errorList .= '</ul>';
                Yii::$app->session->setFlash('error', "Kindly correct the following errors $errorList");
            }
        }

        return $this->render('signup', [
            'model' => $model,
        ]);

    }

    /**
     * Updates an existing Users model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionMyProfile($id)
    {
        $model = $this->findModel($id);
        $model->scenario = Users::SCENARIO_UPDATE;
        if (isset($_POST['Users'])) {


            if ($model->load(Yii::$app->request->post()) && $model->save()) {
                //return $this->redirect(['my-profile', 'id' => $model->USER_ID]);
                return $this->redirect(['view', 'id' => $model->USER_ID]);
            }

        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /*public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->USER_ID]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }*/

    /**
     * Deletes an existing Users model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Users model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Users the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Users::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
