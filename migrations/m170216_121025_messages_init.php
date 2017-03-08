<?php

use yii\db\Migration;

class m170216_121025_messages_init extends Migration
{
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
        $this->createTable('messages', [
            'MESSAGE_ID' => $this->primaryKey(),
            'RECIPIENT' => $this->string(40)->notNull()->comment('Recipient could be phone or email'),
            'MESSAGE' => $this->text()->comment('Message body'),
            'CHANNEL' => $this->string(5)->defaultValue(0)->comment('Could be SMS, EMAIL or PUSH'),
            'MESSAGE_SENT' => $this->boolean()->defaultValue(0)->comment('Request Accepted'),
            'CREATED' => $this->dateTime()->comment('Date Added'),
            'UPDATED' => $this->dateTime()->comment('Date Sent'),
        ]);
    }

    public function safeDown()
    {
        $this->dropTable('messages');
    }
}
