<?php

use yii\db\Migration;

/**
 * Handles the creation of table `tb_user_address`.
 */
class m161207_125747_create_tb_user_address_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('tb_user_address', [
            'ADDRESS_ID' => $this->primaryKey(),
            'USER_ID' => $this->integer()->notNull(),
            'NAME' => $this->string(100)->notNull(),
            'COMPANY' => $this->string(150),
            'STREET1' => $this->string(200)->notNull(),
            'STREET2' => $this->string(200),
            'STREET3' => $this->string(200),
            'CITY' => $this->string(50)->notNull(),
            'STATE' => $this->string(50),
            'POSTALCODE' => $this->string(50)->notNull(),
            'COUNTRY' => $this->string(20)->notNull(),
            'PHONE' => $this->string(50),
            'RESIDENTIAL' => $this->integer(1)->notNull()->defaultValue(0),
            'ADDRESS_TYPE' => $this->string(20)->notNull()->defaultValue('BILLING ADDRESS'), #default will be a billing address
            'PRIMARY_ADDRESS' => $this->integer(1)->notNull()->defaultValue(0),
            'CREATED' => $this->timestamp(),
            'UPDATED' => $this->timestamp() . ' ON UPDATE CURRENT_TIMESTAMP',
        ]);

        $this->addForeignKey('FK_USER_ADDRESS_ID', 'tb_user_address', 'USER_ID', 'tb_users', 'USER_ID','RESTRICT', 'CASCADE');
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable('tb_user_address');
    }
}
