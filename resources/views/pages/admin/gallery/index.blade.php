@extends('layouts.admin')

@section('title','Daftar Foto ')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Daftar Foto FKTP</h1>
        <a href="{{ route ('gallery.create') }}" class="btn btn-sm btn-primary shadow-sm">
        <i class="fas fa-plus fa-sm text-white-100"> Tambah Foto </i>
    </a>
    </div>

    <div class="row">
        <div class="card-body">
            <div class="table-responsive">
                <table id="daftarfotofaskesTable" class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Kode FKTP</th>
                            <th>Nama FKTP</th>
                            <th>Gambar</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                <tbody>
                    @forelse ($items as $item)
                    <tr>
                        <td>{{ $item->id }}</td>
                        <td>
                            {{ $item->faskes_category->kode_fktp ?? 'FKTP sudah terhapus' }}
                        </td>
                        <td>{{ $item->faskes_category->title ?? 'FKTP sudah terhapus'}}</td>
                        <td><img src="{{ Storage::url($item->image) }}" alt="" style="width:150px" class="img-thumbnail"/>
                        </td>
                        <td>
                            <a href="{{ route ('gallery.edit', $item->id) }}" class="btn btn-info">
                            <i class="fa fa-pencil-alt"></i>
                            </a>
                            <form action="{{ route('gallery.destroy', $item->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Apa anda yakin?')">
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

