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
    public $subject;
    public $names;
    public $plainTextMessage;
    public $htmlMessage;

    protected $mailer;

    public function init()
    {
        parent::init();
        $this->mailer = Yii::$app->mailer->compose();
    }

    public function SendEmail($to, $attachments = [])
    {

        $this->mailer->setFrom($this->from)
            ->setTo($to)
            ->setSubject($this->subject)
            ->setTextBody($this->plainTextMessage)
            ->setHtmlBody($this->CreateHtmlBody());

        //check if we have attachments
        foreach ($attachments as $attachment) {
            $this->mailer->attach($attachment);
        }
        //send the message
        return $this->mailer->send();
    }

    protected function CreateHtmlBody()
    {
        return <<<HTML
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <title>{$this->subject}</title>
        </head>
        <body>
        <p><strong>Dear {$this->names}.</strong></p>
        <p>{$this->htmlMessage}</p>
        </body>
        </html>
HTML;
    }
}