<?php

use yii\db\Migration;

/**
 * Handles the creation of table `tb_shipping`.
 */
class m161207_115924_create_tb_shipping_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {
        /*
         *             [name] => Sammy Barasa
            [company] => Go-Parts
            [street1] => Santa Clarita #1234
            [street2] =>
            [street3] =>
            [city] => Los Angeles
            [state] => CA
            [postalCode] => 90002
            [country] => US
            [phone] => 555-555-5555
            [residential] =>
            [addressVerified] => Address validation warning

         */

        $this->createTable('tb_shipping', [
            'id' => $this->primaryKey(),
            'orderId' => $this->integer() . ' NOT NULL',
            'name' => $this->string(100) . ' NOT NULL',
            'company' => $this->text() . ' NOT NULL',
            'street1' => $this->string(200),
            'street2' => $this->string(200),
            'street3' => $this->string(200),
            'city' => $this->string(50) . ' NOT NULL',
            'state' => $this->string(50),
            'postalCode' => $this->string(50) . ' NOT NULL',
            'country' => $this->string(20) . ' NOT NULL',
            'phone' => $this->string(50) . ' NOT NULL',
            'residential' => $this->string(10),
            'addressVerified' => $this->string(20),
            'addressType' => $this->string(20) . 'NOT NULL DEFAULT "billing"',
        ]);

        $this->addForeignKey('fk_order_id', 'tb_shipping', 'orderId', 'tb_orders', 'orderId');
    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('tb_shipping');
    }
}
