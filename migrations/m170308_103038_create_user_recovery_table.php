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
    public function up()
    {
        $this->createTable('user_recovery', [
            'RECOVERY_ID' => $this->primaryKey(),
            'USER_ID' => $this->integer()->notNull(),
            'RECOVERY_ID' => $this->string(100)->notNull(),
            'EXPIRES' => $this->integer(50)->notNull()
        ]);

        $this->addForeignKey('FK_USER_RECOVERY', 'user_recovery', 'USER_ID', 'tb_users', 'USER_ID','CASCADE', 'CASCADE');

    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable('user_recovery');
    }
}
