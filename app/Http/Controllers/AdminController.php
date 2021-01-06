<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\ProposalSeminar;

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

    
}
