<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function login(Request $request)
    {
        // dd("hello");
        // dd($request);
        $credentials = $request->only('nim', 'password');
        // dd($credentials);
        // dd($credentials);
        if (Auth::guard('web')->attempt($credentials,$request->filled('remember'))) {
            // dd("right");
            // dd(Auth::guard('admin')->check());
            // $request->session()->regenerate();
            // $this->clearLoginAttempts($request);
            return Auth::user();
        }else{
            dd("wrong");
        }
    }

    public function username(){
        return 'nim';
    }
}
