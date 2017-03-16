<?php

use yii\db\Migration;

class m170216_121025_messages_init extends Migration
{
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE=InnoDB';
        }


        $this->createTable('messages', [
            'MESSAGE_ID' => $this->primaryKey(),
            'RECIPIENT' => $this->string(40)->notNull()->comment('Recipient could be phone or email'),
            'MESSAGE' => $this->text()->comment('Message body'),
            'CHANNEL' => $this->string(5)->defaultValue(0)->comment('Could be SMS, EMAIL or PUSH'),
            'MESSAGE_SENT' => $this->boolean()->defaultValue(0)->comment('Request Accepted'),
            'CREATED' => $this->dateTime()->comment('Date Added'),
            'UPDATED' => $this->dateTime()->comment('Date Sent'),
        ], $tableOptions);
    }

    public function safeDown()
    {
        $this->dropTable('messages');
    }
}
