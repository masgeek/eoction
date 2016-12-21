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
        $this->createTable('paypal_transactions', [
            'ID' => $this->primaryKey(),
            'USER_ID' => $this->integer()->notNull(),
            'PAYMENT_ID' => $this->string(100)->notNull(),
            'HASH' => $this->string(100)->notNull(),
            'COMPLETE' => $this->boolean()->notNull()->defaultValue(false),
            'ORDER_CREATED' => $this->boolean()->notNull()->defaultValue(false),
            'CREATE_TIME' => $this->dateTime(),
            'UPDATE_TIME' => $this->dateTime() . ' ON UPDATE CURRENT_TIMESTAMP',
        ]);
        //add foreign keys
        $this->addForeignKey('FK_USER_ID', 'paypal_transactions', 'USER_ID', 'tb_users', 'USER_ID', 'RESTRICT', 'CASCADE');
    }

    public function safeDown()
    {
        $this->dropTable('paypal_transactions');
    }

}
