<?php

use yii\db\Migration;

/**
 * Handles the creation of table `tb_orders`.
 */
class m161207_115906_create_tb_orders_table extends Migration
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

        $this->createTable('orders', [
            //'id' => $this->primaryKey(),
            'orderId' => $this->primaryKey(),
            'orderNumber' => $this->string(100)->notNull(),
            'orderKey' => $this->string(100)->notNull(),
            'orderDate' => $this->dateTime(),
            'createDate' => $this->dateTime()->notNull(),
            'modifyDate' => $this->dateTime()->notNull(),
            'paymentDate' => $this->dateTime()->notNull(),
            'shipByDate' => $this->dateTime(),
            'orderStatus' => $this->string(20)->notNull(),
            'customerId' => $this->integer(),
            'customerUsername' => $this->string(100)->notNull(),
            'customerEmail' => $this->string(100)->notNull(),
        ],$tableOptions);
    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('orders');
    }
}
