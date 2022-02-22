@extends('layouts.app')
@section('title', 'Riwayat Diagnosa Hama - Sipagung')
@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Riwayat Diagnosa Hama</h3>
            </div>

            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item" aria-current="page">Riwayat Diagnosa Hama</li>
                        <li class="breadcrumb-item active" aria-current="page">Hama</li>
                    </ol>
                </nav>
            </div>

        </div>
    </div>

     @if (session('status'))
        <div class="alert alert-success alert-dismissible show fade">
            {{ session('status') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    <section class="section">
        <div class="card">
            <div class="card-body">
                <table class="table table-lg">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Tanggal</th>
                            <th>Penyakit</th>
                            <th>Nilai CF</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        @foreach ($hasilhamas as $row)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $row->tanggal }}</td>
                                <td>{{ $row->nama_hama }}</td>
                                <td>{{ $row->hasil_nilai }}</td>
                                <td>
                                  <a href="/riwayat-detail/{{ $row->id }}" class="btn btn-sm btn-secondary"><i class="fas fa-eye"></i> Detail</a>
                                  <form action="/riwayathama/{{ $row->id }}" method="post" class="d-inline">
                                      @method('delete')
                                      @csrf
                                      <button type="submit" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></button>
                                  </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

    </section>

@endsection
