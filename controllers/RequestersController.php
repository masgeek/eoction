<?php

namespace app\controllers;

use Yii;
use app\models\BidRequesters;
use app\search_model\ReuestersSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * RequestersController implements the CRUD actions for BidRequesters model.
 */
class RequestersController extends Controller
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
     * Lists all BidRequesters models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ReuestersSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single BidRequesters model.
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
     * Creates a new BidRequesters model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new BidRequesters();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->REQUESTER_ID]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing BidRequesters model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionAccept($id)
    {
        /* @var $bidRequests \app\bidding\BidRequests */
        $bidRequests = \Yii::$app->bidrequests;
        $bidRequests->ProcessRequests($approved = true,$id); //process the requests
        return $this->redirect(['index']);
    }

    /**
     * Deletes an existing BidRequesters model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDecline($id)
    {
        /* @var $bidRequests \app\bidding\BidRequests */
        $bidRequests = \Yii::$app->bidrequests;
        $bidRequests->ProcessRequests($approved = false,$id); //process the requests
        return $this->redirect(['index']);
    }

    /**
     * Finds the BidRequesters model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return BidRequesters the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = BidRequesters::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}