<?php

use yii\db\Migration;

/**
 * Handles the creation of table `messages`.
 */
class m170202_082711_create_messages_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {
        $this->createTable('messages', [
            'MESSAGE_ID' => $this->primaryKey(),
            'USER_ID'=>$this->integer()->notNull(),
            'MESSAGE_TYPE'=>$this->string(5)->defaultValue('EMAIL'),
            'RECIPIENT'=>$this->string(20)->notNull(),
            'MESSAGE_BODY'=>$this->text()->notNull(),
            'MESSAGE_READ'=>$this->boolean()->defaultValue(false),
            'MESSAGE_SENT'=>$this->boolean()->defaultValue(false),
            'MESSAGE_DELETED'=>$this->boolean()->defaultValue(false),
            'CREATED' => $this->timestamp()->comment('Date Created'),
            'DATE_SENT' => $this->timestamp()->comment('Date Sent') . ' ON UPDATE CURRENT_TIMESTAMP'
        ]);

        //create foreign keys
        $this->addForeignKey('FK_USER_ID_MSG', 'messages', 'USER_ID', 'tb_users', 'USER_ID', 'RESTRICT', 'CASCADE');
    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('messages');
    }
}
