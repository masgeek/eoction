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
    public $views;
    public $params = [];
    public $subject;
    public $plainTextMessage;


    protected $mailer;

    public function init()
    {
        parent::init();
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

    public function sendemail($to, $attachment = [])
    {
        $this->params['subject'] = $this->subject;
        //var_dump($this->params);
        //die;
        $this->mailer = Yii::$app->mailer->compose($this->views, $this->params);

        $this->mailer->setFrom($this->from)
            ->setTo($to)
            ->setSubject($this->subject)
            ->setTextBody($this->plainTextMessage);

        //send the message
        return $this->mailer->send();
    }
}