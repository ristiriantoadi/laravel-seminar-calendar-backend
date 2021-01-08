<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeTanggalDanWaktuColumnDataTypeToDatetimeOnSeminarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('seminars', function (Blueprint $table) {
            //
            // $table->dateTime('tanggal_dan_waktu')->change();
            $table->dateTime('tanggal_dan_waktu')->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('datetime_on_seminars', function (Blueprint $table) {
            //
        });
    }
}
