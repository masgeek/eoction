<?php

use yii\db\Migration;

/**
 * Handles the creation of table `bid_exclusion`.
 */
class m170207_093804_create_bid_exclusion_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {
	    $this->createTable('bid_exclusion', [
		    'EXCLUSION_ID' => $this->primaryKey(),
		    'PRODUCT_ID' => $this->integer()->unique()->notNull(),
		    'BIDDING_PERIOD' => $this->integer()->notNull()->comment('How long to include the item from bid (hours)'),
		    'EXCLUSION_PERIOD' => $this->integer()->notNull()->comment('How long to exclude the item from bid (hours)'),
		    'HIGH_DEMAND' => $this->integer(1)->defaultValue(0)->comment('If item is high demand do not exclude it'),
		    'AUCTION_COUNT' => $this->integer(1)->defaultValue(0)->comment('Number of times listed for auction'),
		    'DATE_CREATED' => $this->dateTime(),
		    'DATE_UPDATED' => $this->dateTime()
	    ]);

	    $this->addForeignKey('FK_PRODUCT_ID_ECL', 'bid_exclusion', 'PRODUCT_ID', 'fry_products', 'productid', 'RESTRICT', 'CASCADE');


    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('bid_exclusion');
    }
}
