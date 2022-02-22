<?php

namespace App\Http\Controllers;

use App\Models\BasisHama;
use App\Models\GejalaHama;
use App\Models\Hama;
use App\Models\HasilHama;
use App\Models\KondisiHama;
use Illuminate\Http\Request;

class DiagnosahamaController extends Controller
{
    public function index()
    {
        $gejalahamas = GejalaHama::all();
        $kondisihama = KondisiHama::all();
        return view('diagnosahama.index', compact('gejalahamas','kondisihama'));
    }

    public function store(Request $request)
    {
        // Get Data dari Request
        $kondisihama = array_filter($request->kondisihama);

        $inptanggal = date('Y-m-d H:i:s');

        $arbobot = array('0', '1', '0.8', '0.6', '0.4', '-0.2', '-0.4', '-0.6', '-0.8', '-1');
        $argejala = array();

        for ($i = 0; $i < count($kondisihama); $i++) {
            $arkondisi = explode("_", $kondisihama[$i]);
            if (strlen($kondisihama[$i]) > 1) {
            $argejala += array($arkondisi[0] => $arkondisi[1]);
            }
        }

        $sqlkondisi = KondisiHama::orderBy('id')->get();
        foreach($sqlkondisi as $rkondisi){
          $arkondisitext[$rkondisi['id']] = $rkondisi['kondisi'];
        }

        $sqlpkt = Hama::orderBy('id')->get();
        foreach($sqlpkt as $rpkt){
          $arpkt[$rpkt['id']] = $rpkt['nama_hama'];
          $ardpkt[$rpkt['id']] = $rpkt['det_hama'];
          $arspkt[$rpkt['id']] = $rpkt['srn_hama'];
          $argpkt[$rpkt['id']] = $rpkt['gambar'];
        }


        // Perhitungan Certainty Factor (CF)
        $sqlpenyakit = Hama::orderBy('id')->get();
        $arpenyakit = array();
        foreach($sqlpenyakit as $rpenyakit){
          $cftotal_temp = 0;
          $cf = 0;
          $sqlgejala = BasisHama::where('id', '=',  $rpenyakit['id'])->get();
          $cflama = 0;
          foreach($sqlgejala as $rgejala){
            $arkondisi = explode("_", $kondisihama[0]);
            $gejala = $arkondisi[0];

            for ($i = 0; $i < count($kondisihama); $i++) { 
                  $arkondisi=explode("_", $kondisihama[$i]); 
                  $gejala=$arkondisi[0]; 
                  if($rgejala['id']==$gejala) { 
                      $cf=($rgejala['mb'] - $rgejala['md']) * $arbobot[$arkondisi[1]]; 
                      if (($cf>= 0)&& ($cf * $cflama >= 0)) {
                          $cflama = $cflama + ($cf * (1 - $cflama));
                      }
                      if ($cf * $cflama < 0) { 
                          $cflama=($cflama + $cf) / (1 - Math . Min(Math . abs($cflama), Math . abs($cf))); 
                      } 
                      if(($cf < 0) && ($cf * $cflama>= 0)) {
                          $cflama = $cflama + ($cf * (1 + $cflama));
                      }
                  }
            }
          }
          if ($cflama > 0) {
          $arpenyakit += array($rpenyakit['id'] => number_format($cflama, 4));
          }

        }

        arsort($arpenyakit);

        $inpgejala = serialize($argejala);
        $inppenyakit = serialize($arpenyakit);
        
        $np1 = 0;
        foreach ($arpenyakit as $key1 => $value1) {
          $np1++;
          $idpkt1[$np1] = $key1;
          $vlpkt1[$np1] = $value1;
        }

        // Get Data
        // $hasilhama = new HasilHama();
        // $hasilhama->tanggal = $inptanggal;
        // $hasilhama->hama = $inppenyakit;
        // $hasilhama->gejala = $inpgejala;
        // $hasilhama->hasil_id = $idpkt1[$np1];
        // $hasilhama->hasil_nilai = $vlpkt1[$np1];

        // // Save Data
        // $hasilhama->save();

        $ig = 0;
        foreach($argejala as $key => $value){
          $kondis = $value;
          $ig++;
          $gejala = $key;
          $sqlgjl = GejalaHama::where('id', '=', $key)->get();
          foreach($sqlgjl as $gjl){
            $gjl['id'];
          }
          // dd($gjl['nama_hg']);
        }
        return redirect('/hasilhama')->with([

          'tes' => $sqlgjl
        ]);
    }
}
