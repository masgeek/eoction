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
        /*	[orderId] => 15017189
[orderNumber] => EOCT001
[orderKey] => 3c82a6fab9d0498e8deb09a19d898349
[orderDate] => 2016-12-07T11:34:32.0000000
[createDate] => 2016-12-07T03:34:31.0770000
[modifyDate] => 2016-12-07T03:34:22.9630000
[paymentDate] => 2016-12-07T11:34:32.0000000
[shipByDate] =>
[orderStatus] => on_hold
[customerId] => 9400202
[customerUsername] => Otoniel Ortega
[customerEmail] => ortega.x3@gmail.com*/

        $this->createTable('orders', [
            'id' => $this->primaryKey(),
            'orderId' => $this->integer()->notNull(),
            'orderNumber' => $this->string(100)->notNull(),
            'orderKey' => $this->string(100)->notNull(),
            'orderDate' => $this->timestamp()->notNull(),
            'createDate' => $this->timestamp()->notNull(),
            'modifyDate' => $this->timestamp()->notNull(),
            'paymentDate' => $this->timestamp()->notNull(),
            'shipByDate' => $this->timestamp(),
            'orderStatus' => $this->string(10)->notNull(),
            'customerId' => $this->integer()->notNull(),
            'customerUsername' => $this->string(100)->notNull(),
            'customerEmail' => $this->string(100)->notNull(),
        ]);
    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('orders');
    }
}
