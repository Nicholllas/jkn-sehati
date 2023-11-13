@extends('layouts.admin')

@section('title','Daftar FKTP KC DPS')

@section('content')

    <div class="container-fluid">

        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Daftar FKTP BPJS Kesehatan Kantor Cabang Denpasar</h1>
            <a href="{{ route('faskes-category.create') }}" class="btn btn-sm btn-primary shadow-sm px-3">
                <i class="fas fa-plus fa-sm text-white-100"></i> Tambah FKTP
            </a>
        </div>
        @if(session('pesan'))
    <div class="alert alert-success">
        {{ session('pesan') }}
    </div>
@endif
        <h5>Import Data FKTP/Update Nilai WTA (Excel)</h5>
        <div class="d-flex align-items-center">
            <form action="{{ route('import_excel') }}" method="POST" enctype="multipart/form-data" class="ml-2">
                @csrf
                <div class="d-flex align-items-center">
                    <input type="file" name="file" class="form-control">
                    <button class="btn btn-primary ml-2">Import</button>
                </div>
            </form>
        </div>

    <div class="row">
        <div class="card-body">
            <div class="table-responsive">
                <table id="daftarfaskesTable" class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Kode FKTP</th>
                            <th>Nama FKTP</th>
                            <th>Jenis FKTP</th>
                            <th>Alamat</th>
                            <th>Telepon</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                <tbody>
                    @forelse ($items as $item)
                    <tr>
                        <td>{{ $item->id }}</td>
                        <td>{{ $item->kode_fktp }}</td>
                        <td>{{ $item->title }}</td>
                        <td>{{ $item->jenis_faskes }}</td>
                        <td>{{ $item->address }}</td>
                        <td>{{ $item->no_telp }}</td>
                        <td>
                            <a href="{{ route ('faskes-category.edit', $item->id) }}" class="btn btn-info">
                            <i class="fa fa-pencil-alt"></i>
                            </a>
                            <form action="{{ route ('faskes-category.destroy', $item->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Apa anda yakin?')">
                            @csrf
                            @method('delete')
                            <button class="btn btn-danger">
                                <i class="fa fa-trash"></i>
                            </button>
                            </form>
                        </td>
                    </tr>
                    @empty
                        <tr>
                            <td colspan="7" class="text-center">Data Kosong</td>
                        </tr>
                    @endforelse
                </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection
