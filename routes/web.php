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

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//Admin routes
Route::post('/admin/login', [App\Http\Controllers\AdminController::class, 'login'])->name('admin-login');
Route::get('/admin/dashboard', [App\Http\Controllers\AdminController::class, 'dashboard'])->middleware('auth:admin')->name('admin-dashboard');
Route::get('/admin/login', [App\Http\Controllers\AdminController::class, 'showLogin'])->name('admin-showLogin');
Route::get('/admin/proposal_seminar', [App\Http\Controllers\AdminController::class, 'getProposalSeminar'])->middleware('auth:admin')->name('admin-proposal-seminar');
Route::post('/admin/proposal_seminar/tolak', [App\Http\Controllers\AdminController::class, 'tolakProposalSeminar'])->middleware('auth:admin')->name('admin-tolak-proposal-seminar');
Route::post('/admin/proposal_seminar/terima', [App\Http\Controllers\AdminController::class, 'terimaProposalSeminar'])->middleware('auth:admin')->name('admin-terima-proposal-seminar');
Route::post('/admin/seminar/tambah', [App\Http\Controllers\AdminController::class, 'tambahSeminar'])->middleware('auth:admin')->name('admin-terima-proposal-seminar');
Route::middleware('auth:admin')->get('admin/seminar',[App\Http\Controllers\SeminarController::class, 'getSeminarMahasiswa']);



//Mahasiswa routes
Auth::routes();
Route::middleware('auth:web')->get('/seminar',[App\Http\Controllers\SeminarController::class, 'getSeminarMahasiswa']);
Route::middleware('auth:web')->post('/seminar/daftar',[App\Http\Controllers\SeminarController::class, 'daftarSeminar']);
Route::middleware('auth:web')->get('/seminar/status_seminar_proposal',[App\Http\Controllers\SeminarController::class, 'statusSeminarProposal']);

