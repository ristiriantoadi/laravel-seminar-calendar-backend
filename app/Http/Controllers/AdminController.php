<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\ProposalSeminar;
use App\Models\Seminar;

class AdminController extends Controller
{
    //

    public function login(Request $request)
    {
        $credentials = $request->only('username', 'password');
        // dd($credentials);
        if (Auth::guard('admin')->attempt($credentials,$request->filled('remember'))) {
            // dd("right");
            // dd(Auth::guard('admin')->check());
            // $request->session()->regenerate();
            // $this->clearLoginAttempts($request);
            return response(200);
        }else{
            dd("wrong");
        }
    }

    public function dashboard(Request $request)
    {
        return view('admin.dashboard');
    }

    public function showLogin(Request $request)
    {
        return view('admin.login');
    }

    public function getProposalSeminar(Request $request)
    {
        // return view('admin.login');
        return ProposalSeminar::with('user')->where('status_proposal','menunggu')->get();
        // return ProposalSeminar::where('status_proposal','menunggu')->get();
    }

    public function tolakProposalSeminar(Request $request)
    {
        $proposalSeminar = ProposalSeminar::find($request->id);
        $proposalSeminar->status_proposal="ditolak";
        $proposalSeminar->save();
    }

    public function terimaProposalSeminar(Request $request)
    {
        $proposalSeminar = ProposalSeminar::find($request->id);
        $proposalSeminar->status_proposal="diterima";
        $proposalSeminar->save();
    }

    public function tambahSeminar(Request $request)
    {
        $seminar = new Seminar;
        $seminar->judul = $request->judul;
        $seminar->pembimbing_satu = $request->pembimbing_satu;
        $seminar->pembimbing_dua = $request->pembimbing_dua;
        $seminar->penguji_satu = $request->penguji_satu;
        $seminar->penguji_dua = $request->penguji_dua;
        $seminar->penguji_tiga = $request->penguji_tiga;
        $seminar->tanggal_dan_waktu = '2021-01-05';
        $seminar->user_id = $request->user_id;
        $seminar->save();
        // $post->title = "yes man"
        // $post->author = "ristirianto adi"
        // $post->content = "fjskdjskdjkdj"
        // $post->save()
    }

    
}
