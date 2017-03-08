<?php

use yii\db\Migration;

/**
 * Handles the creation of table `shipping_service`.
 */
class m161208_173038_create_shipping_service_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {
        $this->createTable('shipping_service', [
            'SERVICE_ID' => $this->primaryKey(),
            'PAYPAL_TRANS_ID' => $this->integer()->notNull(),
            'REQUESTED_SERVICE' => $this->string(100)->notNull(),
            'SERVICE_DESC' => $this->string(200)->notNull(),
            'CARRIER_CODE' => $this->string(150),
            'SERVICE_CODE' => $this->string(200)->notNull(),
            'PACKAGE_CODE' => $this->string(200),
            'ORDER_FINALIZED' => $this->boolean()->defaultValue(0),
            'CUSTOMER_NOTES' => $this->string(300),
            'CREATED' => $this->dateTime(),
            'UPDATED' => $this->dateTime() . ' ON UPDATE CURRENT_TIMESTAMP',
        ]);;

        //$this->createIndex('IDX_PAYMENT_HASH', 'shipping_service', 'PAYPAL_TRANS_ID');
        $this->addForeignKey('FK_PAYMENT_HASH', 'shipping_service', 'PAYPAL_TRANS_ID', 'paypal_transactions', 'ID', 'RESTRICT', 'CASCADE');


    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('shipping_service');
    }
}
