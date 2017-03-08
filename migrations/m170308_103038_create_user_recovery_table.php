<?php

use yii\db\Migration;

/**
 * Handles the creation of table `user_recovery`.
 */
class m170308_103038_create_user_recovery_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE=InnoDB';
        }


        $this->createTable('user_recovery', [
            'RECOVERY_ID' => $this->primaryKey(),
            'USER_ID' => $this->integer()->notNull(),
            'RECOVERY_TOKEN' => $this->string(100)->notNull(),
            'REQUESTING_IP' => $this->string(40),
            'EXPIRES' => $this->integer(50)->notNull()
        ],$tableOptions);

        $this->addForeignKey('FK_USER_RECOVERY', 'user_recovery', 'USER_ID', 'tb_users', 'USER_ID','CASCADE', 'CASCADE');

    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('user_recovery');
    }
}
