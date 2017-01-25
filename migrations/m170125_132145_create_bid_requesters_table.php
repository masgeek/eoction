<?php

use yii\db\Migration;

/**
 * Handles the creation of table `bid_requesters`.
 */
class m170125_132145_create_bid_requesters_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('bid_requesters', [
            'id' => $this->primaryKey(),
        ]);
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable('bid_requesters');
    }
}
