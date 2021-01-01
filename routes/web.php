<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//Mahasiswa login
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//Admin routes
Route::post('/admin/login', [App\Http\Controllers\AdminController::class, 'login'])->name('admin-login');
Route::get('/admin/dashboard', [App\Http\Controllers\AdminController::class, 'dashboard'])->middleware('auth:admin')->name('admin-dashboard');
// Route::get('/admin/dashboard', [App\Http\Controllers\AdminController::class, 'dashboard'])->name('admin-dashboard');
Route::get('/admin/login', [App\Http\Controllers\AdminController::class, 'showLogin'])->name('admin-showLogin');
