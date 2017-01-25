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
            'REQUEST_ID' => $this->primaryKey(),
            'PRODUCT_ID' => $this->integer()->notNull(),
            'REQUEST_ACCEPTED' => $this->boolean()->defaultValue(0),
            'CUSTOMER_NOTES' => $this->string(300),
            'CREATED' => $this->timestamp(),
            'UPDATED' => $this->timestamp() . ' ON UPDATE CURRENT_TIMESTAMP'
        ]);
    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('bid_requests');
    }
}
