<?php

namespace app\module\merchant;

/**
 * merchantportal module definition class
 */
class admin extends \yii\base\Module
{
    /**
     * @inheritdoc
     */
    public $controllerNamespace = 'app\module\merchant\controllers';

    /**
     * @inheritdoc
     */
    public function init()
    {
        parent::init();

        // custom initialization code goes here
	    //set custom theme for teh merchant module
	    \Yii::$app->view->theme = new \yii\base\Theme([
		    'pathMap' => [
		    	'@app/views' => '@app/themes/admin/views'
		    ],
		    'baseUrl' => '@web/themes/admin',
	    ]);
    }
}
