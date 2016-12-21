<?php
/**
 * Created by PhpStorm.
 * User: KRONOS
 * Date: 11/24/2016
 * Time: 1:22 PM
 */

namespace app\controllers;

use yii\web\Controller;

class TvController extends Controller
{
    public function actionLiveTv()
    {
        //https://youtu.be/MY7dEN3nrnY
        $this->view->title = 'Live TV Shopping';
        return $this->render('tv');
    }
}