<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Seminar;
use App\Models\ProposalSeminar;
use Illuminate\Support\Facades\Auth;

class SeminarController extends Controller
{
    public function getSeminarMahasiswa(Request $request)
    {
        return Seminar::with('user')->get();
    }

    public function daftarSeminar(Request $request){

        $proposalSeminar = new ProposalSeminar;
        $proposalSeminar->judul = $request->judul;
        $proposalSeminar->pembimbing_satu = $request->dosen_pembimbing_1;
        $proposalSeminar->pembimbing_dua = $request->dosen_pembimbing_2;
        $proposalSeminar->no_hp = $request->no_hp;
        $proposalSeminar->status_proposal = 'menunggu';
        $proposalSeminar->user_id = Auth::user()->id;
        // $post->content = $validatedData['content'];
        $proposalSeminar->save();

        //uploading file
        $savePath = "public/proposal_seminar/".Auth::user()->nim;
        $request->file('file_laporan')->storeAs($savePath,"file_laporan.pdf");
        $request->file("file_kartu_kontrol")->storeAs($savePath,"file_kartu_kontrol.pdf");
        $request->file("file_surat_puas")->storeAs($savePath,"file_surat_puas.pdf");
        $request->file("file_krs")->storeAs($savePath,"file_krs.pdf");
    }
}
