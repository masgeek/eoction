<?php
/**
 * Created by PhpStorm.
 * User: 219350
 * Date: 2017/02/02
 * Time: 12:12
 */

namespace app\components;


use yii\base\Component;
use yii;

class EmailComponent extends Component
{
    public $from;
    public $view;
    public $params = [];

    protected $message;

    public function init()
    {
        parent::init();
        $this->message = Yii::$app->mailer->compose($this->view, $this->params)
            ->setFrom($this->from);
    }

    public function temp()
    {
        Yii::$app->mailer->compose('layouts/html', ['content' => '3'])
            ->setFrom('noreply@eoction.com')
            ->setTo('barsamms@gmail.com')
            ->setSubject('Eoction Message subject')
            ->setTextBody('Plain text content')
            ->setHtmlBody('<b>HTML content</b>')
            ->send();

        die;
    }

    public function sendemail($to, $subject, $plainTextMessage, $htmlMessage, $attachment = [])
    {
        $this->message->setFrom('noreply@eoction.com')
            ->setTo($to)
            ->setSubject($subject)
            ->setTextBody($plainTextMessage)
            ->setHtmlBody($htmlMessage)
            ->send();
    }
}