@extends('layouts.admin')

@section('title','Tambah Foto Faskes')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Tambah Foto Faskes</h1>
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
            <form action="{{ route('gallery.store') }}" method="post" enctype="multipart/form-data">
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
                <label for="image">Image (Harap Upload Foto =<5MB)</label>
                <input type="file" class="form-control" name="image" placeholder="image"
                class="form-control">
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
