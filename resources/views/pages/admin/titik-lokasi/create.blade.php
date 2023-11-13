@extends('layouts.admin')

@section('title','Tambah Koordinat Faskes')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Tambah Koordinat FKTP</h1>
    </div>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <div class="card shadow">
        <div class="card-body">
            <form action="{{ route('faskes-location.store') }}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="faskes_categories_id">Nama Faskes</label>
                <select name="faskes_categories_id" required class="form-control">
                    <option value="">Pilih Nama Faskes</option>
                    @foreach ($faskes_categories as $faskes_category)
                        <option value="{{ $faskes_category->id}}">
                        {{ $faskes_category->title }}
                        </option>

                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="latitude">Latitude</label>
                <input type="text" class="form-control" name="latitude" placeholder="Masukan Latitude" value="{{ old('latitude') }}">
            </div>
            <div class="form-group">
                <label for="longitude">Longitude</label>
                <input type="text" class="form-control" name="longitude" placeholder="Masukan longitude" value="{{ old('longitude') }}">
            </div>
            <button type="submit" class="btn btn-primary btn-block">
                Simpan
            </button>
            </form>
        </div>
    </div>

    <div class="row">
        <div class="card-body">

        </div>
    </div>

</div>

@endsection
