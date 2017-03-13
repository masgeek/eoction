<?php

use yii\db\Migration;

class m170216_082913_bid_requesters extends Migration
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

        $this->createTable('bid_requesters', [
			'REQUESTER_ID' => $this->primaryKey(),
			'REQUESTED_ID' => $this->integer()->notNull()->comment('Request ID'),
			'REQUESTING_USER_ID' => $this->integer()->notNull()->comment('Requested By'),
			'CUSTOMER_NOTES' => $this->text()->comment('Comments'),
			'CUSTOMER_NOTIFIED' => $this->boolean()->defaultValue(0)->comment('Notified'),
			'REQUEST_ACCEPTED' => $this->boolean()->defaultValue(0)->comment('Request Accepted'),
			'CREATED' => $this->dateTime()->comment('Date Created'),
			'UPDATED' => $this->dateTime()->comment('Date Updated'),// . ' ON UPDATE CURRENT_TIMESTAMP'
		],$tableOptions);

		//create foreign keys
		$this->addForeignKey('FK_REQUESTED_ID_REQ', 'bid_requesters', 'REQUESTED_ID', 'bid_requests', 'REQUESTED_PRODUCT_ID', 'CASCADE', 'CASCADE');
		$this->addForeignKey('FK_USER_ID_REQ', 'bid_requesters', 'REQUESTING_USER_ID', 'tb_users', 'USER_ID', 'CASCADE', 'CASCADE');

		//add indexes
		$this->createIndex('idx-requester_id', 'bid_requesters', 'REQUESTED_ID');
		$this->createIndex('idx-user_id', 'bid_requesters', 'REQUESTING_USER_ID');
	}

	/**
	 * @inheritdoc
	 */
	public function safeDown()
	{
		//$this->dropForeignKey('FK_REQUESTED_ID_REQ', 'bid_requesters');
		//$this->dropForeignKey('FK_USER_ID_REQ', 'bid_requesters');

		//$this->dropIndex('idx-requester_id', 'bid_requesters');
		//$this->dropIndex('idx-user_id', 'bid_requesters');

		$this->dropTable('bid_requesters');
	}
}
