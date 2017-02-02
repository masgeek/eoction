<?php

use yii\db\Migration;

/**
 * Handles the creation of table `bid_exclusion`.
 */
class m170202_120727_create_bid_exclusion_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {
        $this->createTable('bid_exclusion', [
            'EXCLUSION_ID' => $this->primaryKey(),
            'PRODUCT_ID' => $this->integer()->notNull(),
            'EXCLUSION_PERIOD' => $this->timestamp()->notNull()->comment('How long to exclude the item from bid (hours)'),
            'HIGH_DEMAND'=>$this->boolean()->defaultValue(false)->comment('If item is high demand do not exclude it')
        ]);

        $this->addForeignKey('FK_PRODUCT_ID_ECL', 'bid_exclusion', 'PRODUCT_ID', 'fry_products', 'productid','RESTRICT', 'CASCADE');


    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('bid_exclusion');
    }
}
