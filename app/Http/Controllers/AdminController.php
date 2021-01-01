<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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
            return redirect()->intended('admin/dashboard');
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
}
