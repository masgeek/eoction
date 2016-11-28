<?php

use yii\db\Migration;

class m161128_141131_create_transaction_paypal extends Migration
{
    /* public function up()
     {
     }

     public function down()
     {

     }*/


    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
;
        $this->createTable('tb_paypal_transactions', [
            'ID' => $this->primaryKey(),
            'USER_ID' => $this->integer() . ' NOT NULL',
            //'PRODUCT_ID' => $this->integer(11). ' NOT NULL',
            'PAYMENT_ID' => $this->string(100). ' NOT NULL',
            'HASH' => $this->string(100). ' NOT NULL',
            'COMPLETE' => $this->boolean(). ' NOT NULL DEFAULT false',
            'CREATE_TIME' => $this->dateTime(),
            'UPDATE_TIME' => $this->dateTime(). ' ON UPDATE CURRENT_TIMESTAMP',
        ]);
        //add foreign keys
        $this->addForeignKey('FK_USER_ID', 'tb_paypal_transactions', 'USER_ID', 'tb_users', 'USER_ID');
        //$this->addForeignKey('FK_PRODUCT_ID', 'tb_paypal_transactions', 'PRODUCT_ID', 'tb_products', 'PRODUCT_ID');
    }

    public function safeDown()
    {
        $this->dropTable('tb_paypal_transactions');
    }

}
