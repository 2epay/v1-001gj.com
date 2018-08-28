<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateSystemConfig3rdpayment extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('system_config', function (Blueprint $table) {
            $table->string('third_useridw');
            $table->string('third_userkeyw');
            $table->string('third_pay_urlw');
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
            $table->dropColumn(['third_useridw', 'third_userkeyw', 'third_pay_urlw']);
        });
    }
}
