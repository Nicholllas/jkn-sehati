@extends('layouts.admin')

@section('title','Edit Koordinat Faskes')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edit Koordinat FKTP  {{ $items->faskes_category->title }} </h1>
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
            <form action="{{ route('faskes-location.update', $item->id) }}" method="POST" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <div class="form-group">
                <label for="faskes_categories_id">Nama Faskes</label>
                <select name="faskes_categories_id" required class="form-control" >
                    <option value="{{ $item->faskes_categories_id }}">Jangan diubah</option>
                    @foreach ($faskes_categories as $faskes_category)
                        <option value="{{ $faskes_category->id}}">
                            {{ $faskes_category->title }}
                        </option>

                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="latitude">Latitude</label>
                <input type="text" class="form-control" name="latitude" placeholder="Masukan Latitude" value="{{ $item->latitude }}">
            </div>
            <div class="form-group">
                <label for="longitude">Longitude</label>
                <input type="text" class="form-control" name="longitude" placeholder="Masukan longitude" value="{{ $item->longitude }}">
            </div>
            <button type="submit" class="btn btn-primary btn-block">
                Ubah
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
