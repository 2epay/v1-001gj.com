<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateSystemConfig extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('system_config', function (Blueprint $table) {
            $table->string('payment_id');
            $table->string('payment_key');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('system_config', function (Blueprint $table) {
            $table->dropColumn(['payment_id', 'payment_key']);
        });
    }
}
