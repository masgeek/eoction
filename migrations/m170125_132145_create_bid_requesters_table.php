<?php

use yii\db\Migration;

/**
 * Handles the creation of table `bid_requesters`.
 */
class m170125_132145_create_bid_requesters_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('bid_requesters', [
            'REQUESTER_ID' => $this->primaryKey(),
            'REQUEST_ID' => $this->integer()->notNull(),
            'USER_ID' => $this->integer()->notNull(),
            'CREATED' => $this->timestamp(),
            'UPDATED' => $this->timestamp() . ' ON UPDATE CURRENT_TIMESTAMP'
        ]);

        //creeate foreign keys
        $this->addForeignKey('FK_REQUESTER_ID', 'bid_requesters', 'REQUEST_ID', 'bid_requests', 'REQUEST_ID','CASCADE', 'CASCADE');
        $this->addForeignKey('FK_USER_ID', 'bid_requesters', 'USER_ID', 'tb_users', 'USER_ID','RESTRICT', 'CASCADE');

        //add indexes
        $this->createIndex('idx-requester_id', 'bid_requesters', 'REQUESTER_ID');
        $this->createIndex('idx-user_id', 'bid_requesters', 'USER_ID');
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropForeignKey('FK_REQUESTER_ID','bid_requesters');
        $this->dropForeignKey('FK_USER_ID','bid_requesters');

        $this->dropIndex('idx-requester_id','bid_requesters');
        $this->dropIndex('idx-user_id','bid_requesters');

        $this->dropTable('bid_requesters');
    }
}
