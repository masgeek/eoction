<?php

use yii\db\Migration;

/**
 * Handles the creation of table `active_bids`.
 */
class m170207_080724_create_active_bids_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {
	    $this->createTable('active_bids', [
		    'ACTIVE_ID' => $this->primaryKey(),
		    'PRODUCT_ID' => $this->integer()->unique()->notNull(),
		    'BIDDING_DURATION' => $this->integer()->notNull()->comment('How long the item'),
		    'DATE_CREATED' => $this->timestamp(),
		    'DATE_UPDATED' => $this->timestamp()
	    ]);

	    $this->addForeignKey('FK_PRODUCT_ID_ECL', 'bid_exclusion', 'PRODUCT_ID', 'fry_products', 'productid', 'RESTRICT', 'CASCADE');
    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('active_bids');
    }
}
