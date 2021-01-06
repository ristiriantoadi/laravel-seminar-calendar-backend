<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DropAllFilesColumnInProposalSeminars extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('proposal_seminars', function (Blueprint $table) {
            $table->dropColumn(['file_krs', 'file_kartu_kontrol', 'file_laporan','file_surat_puas']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('proposal_seminars', function (Blueprint $table) {
            //
        });
    }
}
