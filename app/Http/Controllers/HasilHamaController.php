<?php

namespace App\Http\Controllers;

use App\Models\Hama;
use App\Models\HasilHama;
use Illuminate\Http\Request;

class HasilHamaController extends Controller
{
    public function index()
    { 
        return view('diagnosahama.hasil'); 
    }
}
