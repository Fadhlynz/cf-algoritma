<?php

namespace App\Http\Controllers;

use App\Models\Hama;
use App\Models\HasilHama;
use Illuminate\Http\Request;

class RiwayatController extends Controller
{
    public function index()
    {
        $hasilhamas = HasilHama::join('hamas', 'hasil_hamas.hasil_id', '=', 'hamas.id')
        ->get(['hasil_hamas.*', 'hamas.nama_hama']);
      return view('diagnosahama.riwayat', compact('hasilhamas'));
    }

    public function destroy(HasilHama $hasilhama)
    {
      HasilHama::destroy($hasilhama->id);
      return redirect('/riwayathama')->with('status', 'Data Hasil Diagnosa Hama Berhasil Dihapus!');
    }
}
