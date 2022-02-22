@extends('layouts.app')
@section('title', 'Hasil Diagnosa Hama - Sipagung')
@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Hasil Diagnosa Hama</h3>
            </div>

            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item" aria-current="page">Hasil Diagnosa Hama</li>
                        <li class="breadcrumb-item active" aria-current="page">Hama</li>
                    </ol>
                </nav>
            </div>

        </div>
    </div>

    <section class="section">
        <div class="card">
            <div class="card-body">
                    <table class="table table-lg">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Kode</th>
                                <th>Gejala Yang Dialami</th>
                                <th>Pilihan</th>
                            </tr>
                        </thead>
                        <tbody>
                          <?php $tes = Session::get('tes'); ?>
                          @foreach ($tes as $row)
                          <tr>
                            <td>{{ $row->nama_gejala}}</td>
                          </tr>
                          @endforeach 
                        </tbody>
                    </table>
            </div>
        </div>
 
          <div class="card p-3">
              <div class="container">
                <div class="row">
                <div class="col-8">
                  <h5>Hasil Diagnosa</h5>
                  <p>Jenis Penyakit yang diderita adalah</p>
                  <h4>Jenis Penyakit</h4>
                </div>
                <div class="col-4">
                  <img src="" alt="">
                </div>
              </div>
              </div>
            </div>

            <div class="card">
              <div class="card-header">
                Detail
              </div>
              <div class="card-body">
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              </div>
            </div>
           
            <div class="card">
              <div class="card-header">
                Saran
              </div>
              <div class="card-body">
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              </div>
            </div>
           
            <div class="card">
              <div class="card-header">
                Kemungkinan Lain
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <i class="bi bi-play-btn mr-3"></i><p>With supporting text below as a natural lead-in to additional content.</p>
                </div>
              </div>
            </div>

    </section>
        
@endsection