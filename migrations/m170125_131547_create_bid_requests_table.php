<?php

use yii\db\Migration;

/**
 * Handles the creation of table `bid_requests`.
 */
class m170125_131547_create_bid_requests_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {
        $this->createTable('bid_requests', [
            'REQUEST_ID' => $this->primaryKey()->comment('Request ID'),
            'PRODUCT_ID' => $this->integer()->notNull()->comment('Product ID')->unique(),
            'CREATED' => $this->timestamp()->comment('Date Created'),
            'UPDATED' => $this->timestamp()->comment('Date Updated') . ' ON UPDATE CURRENT_TIMESTAMP'
        ]);

        $this->addForeignKey('FK_PRODUCT_ID', 'bid_requests', 'PRODUCT_ID', 'fry_products', 'productid','RESTRICT', 'CASCADE');


        $this->createIndex('idx-product_id', 'bid_requests', 'PRODUCT_ID');
    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropForeignKey('FK_PRODUCT_ID','bid_requests');


        $this->dropIndex('idx-product_id','bid_requests');


        $this->dropTable('bid_requests');
    }
}
