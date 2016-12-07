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

        $this->createTable('tb_orders', [
            'id' => $this->primaryKey(),
            'orderId' => $this->integer() . ' NOT NULL',
            'orderNumber' => $this->string(100) . ' NOT NULL',
            'orderKey' => $this->string(100) . ' NOT NULL',
            'orderDate' => $this->timestamp() . ' NOT NULL',
            'createDate' => $this->timestamp() . ' NOT NULL',
            'modifyDate' => $this->timestamp() . ' NOT NULL',
            'paymentDate' => $this->timestamp() . ' NOT NULL',
            'shipByDate' => $this->timestamp(),
            'orderStatus' => $this->string(10) . ' NOT NULL',
            'customerId' => $this->integer() . ' NOT NULL',
            'customerUsername' => $this->string(100) . ' NOT NULL',
            'customerEmail' => $this->string(100) . ' NOT NULL',
        ]);
    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('tb_orders');
    }
}
