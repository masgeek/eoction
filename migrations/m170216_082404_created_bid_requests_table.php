<?php

use yii\db\Migration;

class m170216_082404_created_bid_requests_table extends Migration
{
	/**
	 * @inheritdoc
	 */
	public function safeUp()
	{
		$this->createTable('bid_requests', [
			'REQUESTED_PRODUCT_ID' => $this->primaryKey()->comment('Request Product ID'),
			//'REQUESTED_PRODUCT_ID' => $this->integer()->notNull()->comment('Product ID')->unique(),
			'CREATED' => $this->timestamp()->comment('Date Created'),
			'UPDATED' => $this->timestamp()->comment('Date Updated') . ' ON UPDATE CURRENT_TIMESTAMP'
		]);

		$this->addForeignKey('FK_PRODUCT_ID', 'bid_requests', 'REQUESTED_PRODUCT_ID', 'fry_products', 'productid','RESTRICT', 'CASCADE');
		$this->createIndex('IDX-PRODUCT_ID', 'bid_requests', 'REQUESTED_PRODUCT_ID');
	}

	/**
	 * @inheritdoc
	 */
	public function safeDown()
	{
		$this->dropForeignKey('FK_PRODUCT_ID','bid_requests');
		$this->dropIndex('IDX-PRODUCT_ID','bid_requests');
		$this->dropTable('bid_requests');
	}
}
