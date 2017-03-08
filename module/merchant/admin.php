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
	    //set custom theme for the merchant module
	    parent::init();
	    $this->layoutPath = \Yii::getAlias('@app/themes/merchant/layouts/');
	    $this->layout = 'main';
    }
}
