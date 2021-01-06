<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProposalSeminarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('proposal_seminars', function (Blueprint $table) {
            $table->id();
            $table->string('file_krs');
            $table->string('file_kartu_kontrol');
            $table->string('file_laporan');
            $table->string('file_surat_puas');
            $table->string('judul');
            $table->string('pembimbing_satu');
            $table->string('pembimbing_dua');
            $table->string('no_hp');
            $table->string('status_proposal');
            $table->bigInteger('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('proposal_seminars');
    }
}
