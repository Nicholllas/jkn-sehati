@extends('layouts.admin')

@section('title','Daftar Koordinat FKTP')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Daftar Koordinat FKTP</h1>
        <a href="{{ route ('faskes-location.create') }}" class="btn btn-sm btn-primary shadow-sm">
        <i class="fas fa-plus fa-sm text-white-100"> Tambah Koordinat FKTP</i>
    </a>
    </div>

    <div class="row">
        <div class="card-body">
            <div class="table-responsive">
                <table id="daftarkoordinatfaskesTable" class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Kode FKTP</th>
                            <th>Nama FKTP</th>
                            <th>Lat</th>
                            <th>Long</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                <tbody>
                    @forelse ($items as $item)
                    <tr>
                        <td>{{ $item->id }}</td>
                        <td>{{ $item->faskes_category->kode_fktp }}</td>
                        <td>{{ $item->faskes_category->title}}</td>
                        <td>{{ $item->latitude}}</td>
                        <td>{{ $item->longitude}}</td>
                        <td>
                            <a href="{{ route ('faskes-location.edit', $item->id) }}" class="btn btn-info">
                            <i class="fa fa-pencil-alt"></i>
                            </a>
                            <form action="{{ route('faskes-location.destroy', $item->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Apa anda yakin?');">
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
