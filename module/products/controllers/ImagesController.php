<?php

namespace app\module\products\controllers;

use Yii;
use app\module\products\models\Images;
use app\module\products\ImagesSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * ImagesController implements the CRUD actions for Images model.
 */
class ImagesController extends Controller
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
     * Lists all Images models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ImagesSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Images model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionAddImage($product_id)
    {
        $model = new Images();

        if (isset($_POST['Images'])) {
            //var_dump($_FILES);


            $post = Yii::$app->request->post();
            var_dump($post);

            die;
            $imagesFolder = Yii::$app->params['imagesFolder'];
            $path = Yii::$app->basePath . $imagesFolder;

            $image = UploadedFile::getInstance($model, 'IMAGE');

            echo json_enbcode($image);
            die;
            if ($model->load(Yii::$app->request->post()) && $model->save()) {
                return $this->redirect(['view', 'id' => $model->IMAGE_ID]);
            }
        }
        return $this->render('create', [
            'model' => $model,
            'product_id' => $product_id
        ]);
    }

    public function actionUploadImage()
    {
        $output = []; //empty if successfull
        $model = new Images();
        $post = ['Images' => Yii::$app->request->post()];
        $model->load($post);

        $image = $model->uploadImage();
        // upload only if valid uploaded file instance found
        if ($image !== false) {
            $imageUrl = $model->getImageUrl();
            $model->IMAGE_URL = $imageUrl;
            if ($model->save()) {
                if ($image !== false) {
                    $save_path = $model->getImageFile();
                    $image->saveAs($save_path);
                }
                //return $this->redirect(['view', 'id' => $model->IMAGE_ID]);
            } else {
                // error in saving model
                $errors = '';
                foreach ($model->getErrors() as $key => $value) {
                    //$errors .= '<a class="list-group-item" href="#">';
                    $errors .= $value[0] . '<br/>';
                    //$errors .= '</a>';
                }
                //$errors .= '</div>';
                $output = ['error' => $errors];
            }
        } else {
            $output = ['error' => 'No files were processed.'];
        }
// return a json encoded response for plugin to process successfully
        echo json_encode($output);
    }

    /**
     * Creates a new Images model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public
    function actionCreate()
    {
        $model = new Images();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->IMAGE_ID]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Images model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public
    function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->IMAGE_ID]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Images model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public
    function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Images model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Images the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected
    function findModel($id)
    {
        if (($model = Images::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
