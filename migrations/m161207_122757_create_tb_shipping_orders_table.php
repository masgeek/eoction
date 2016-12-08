<?php

use yii\db\Migration;

/**
 * Handles the creation of table `tb_shipping_orders`.
 */
class m161207_122757_create_tb_shipping_orders_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {
        $this->createTable('shipping_orders', [
            'id' => $this->primaryKey(),
            'orderId' => $this->integer()->notNull(),
            'name' => $this->string(100)->notNull(),
            'company' => $this->text()->notNull(),
            'street1' => $this->string(200),
            'street2' => $this->string(200),
            'street3' => $this->string(200),
            'city' => $this->string(50)->notNull(),
            'state' => $this->string(50),
            'postalCode' => $this->string(50)->notNull(),
            'country' => $this->string(20)->notNull(),
            'phone' => $this->string(50)->notNull(),
            'residential' => $this->string(10),
            'addressVerified' => $this->string(20),
            'addressType' => $this->string(20)->notNull(), #default will be a billing address
        ]);

        $this->addForeignKey('fk_order', 'shipping_orders', 'orderId', 'orders', 'orderId','RESTRICT', 'CASCADE');
    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('shipping_orders');
    }
}
