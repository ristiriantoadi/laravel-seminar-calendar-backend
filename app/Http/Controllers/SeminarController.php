<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Seminar;

class SeminarController extends Controller
{
    public function getSeminarMahasiswa(Request $request)
    {
        return Seminar::with('user')->get();
    }
}
