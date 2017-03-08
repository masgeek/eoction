<?php

use yii\db\Migration;

/**
 * Handles the creation of table `active_bids`.
 */
class m170207_080724_create_tb_active_bids_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {
	    $this->createTable('tb_active_bids', [
		    'ACTIVE_ID' => $this->primaryKey(),
		    'PRODUCT_ID' => $this->integer()->unique()->notNull(),
		    'BID_ACTIVE' => $this->integer(1)->defaultValue(0)->comment('Indicates if the item has been picked in the display'),
            'ITEM_WON' => $this->integer(1)->notNull()->defaultValue(0)->comment('Indicate if item is won or not'),
		    'BIDDING_DURATION' => $this->integer(50)->notNull()->comment('How long the item will be on bid if is not won'),
		    //'DATE_CREATED' => $this->timestamp(),
		    'DATE_UPDATED' => $this->dateTime()
	    ]);

	    $this->addForeignKey('FK_PRODUCT_ID_ACT', 'tb_active_bids', 'PRODUCT_ID', 'fry_products', 'productid', 'RESTRICT', 'CASCADE');
    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        $this->dropTable('tb_active_bids');
    }
}
