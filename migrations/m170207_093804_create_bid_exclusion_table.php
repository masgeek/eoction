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
    public function up()
    {
        $this->createTable('bid_exclusion', [
            'id' => $this->primaryKey(),
        ]);
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable('bid_exclusion');
    }
}
