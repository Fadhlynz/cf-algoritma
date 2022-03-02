<?php

namespace App\Http\Controllers;

use App\Models\HasilHama;
use Illuminate\Http\Request;

class RiwayatController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function index()
     {
     // $hasilhamas = HasilHama::join('hamas', 'hasil_hamas.hasil_id', '=', 'hamas.id')
     // ->get(['hasil_hamas.*', 'hamas.nama_hama']);
     $hasilhamas = HasilHama::all();
     return view('diagnosahama.riwayat', compact('hasilhamas'));
     }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(HasilHama $hasilhama)
    {
    HasilHama::destroy($hasilhama->id);
    return redirect('/riwayathama')->with('status', 'Data Hasil Diagnosa Hama Berhasil Dihapus!');
    }
}
