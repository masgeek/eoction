<?php

use yii\db\Migration;

/**
 * Handles the creation of table `bid_requesters`.
 */
class m170126_132145_create_bid_requesters_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {
        $this->createTable('bid_requesters', [
            'REQUESTER_ID' => $this->primaryKey(),
            'REQUESTED_PRODUCT_ID' => $this->integer()->notNull()->comment('Request ID'),
            'REQUESTING_USER_ID' => $this->integer()->notNull()->comment('Requested By'),
            'CUSTOMER_NOTES' => $this->text()->comment('Comments'),
            'CUSTOMER_NOTIFIED' => $this->boolean()->defaultValue(0)->comment('Notified'),
            'REQUEST_ACCEPTED' => $this->boolean()->defaultValue(0)->comment('Request Accepted'),
            'CREATED' => $this->timestamp()->comment('Date Created'),
            'UPDATED' => $this->timestamp()->comment('Date Updated') . ' ON UPDATE CURRENT_TIMESTAMP'
        ]);

        //create foreign keys
        $this->addForeignKey('FK_REQUEST_ID_REQ', 'bid_requesters', 'REQUESTED_PRODUCT_ID', 'bid_requests', 'REQUESTED_PRODUCT_ID', 'CASCADE', 'CASCADE');
        $this->addForeignKey('FK_USER_ID_REQ', 'bid_requesters', 'REQUESTING_USER_ID', 'tb_users', 'USER_ID', 'RESTRICT', 'CASCADE');

        //add indexes
        $this->createIndex('idx-requester_id', 'bid_requesters', 'REQUESTED_PRODUCT_ID');
        $this->createIndex('idx-user_id', 'bid_requesters', 'REQUESTING_USER_ID');
    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropForeignKey('FK_REQUEST_ID_REQ', 'bid_requesters');
        $this->dropForeignKey('FK_USER_ID_REQ', 'bid_requesters');

        $this->dropIndex('idx-requester_id', 'bid_requesters');
        $this->dropIndex('idx-user_id', 'bid_requesters');

        $this->dropTable('bid_requesters');
    }
}
