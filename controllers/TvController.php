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
        $this->view->title = 'Live TV Shopping';
        return $this->render('//site/coming-soon');
    }
}