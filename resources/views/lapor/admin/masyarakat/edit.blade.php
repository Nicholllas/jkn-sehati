@extends('layouts.lapor.admin')

@section('title', 'Form Edit Petugas')

@section('css')
    <style>
        .text-primary:hover {
            text-decoration: underline;
        }

        .text-grey {
            color: #6c757d;
        }

        .text-grey:hover {
            color: #6c757d;
        }
    </style>
@endsection

@section('header')
    <a href="{{ route('petugas.index') }}" class="text-primary">Peserta</a>
    <a href="#" class="text-grey">/</a>
    <a href="#" class="text-grey">Form Edit Peserta</a>
@endsection

@section('content')
    <div class="row">
        <div class="col-lg-6 col-12">
            <div class="card">
                <div class="card-header">
                    Form Edit Peserta
                </div>
                <div class="card-body">
                    <form action="{{ route('masyarakat.update', $peserta->nik) }}" method="POST">
                        @csrf
                        @method('PATCH')

                        <div class="form-group">
                            <label for="noka">Nomor Kartu</label>
                            <input type="text" value="{{ $peserta->noka }}" name="noka" id="noka"
                                class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="nama">Nama Peserta</label>
                            <input type="text" value="{{ $peserta->nama }}" name="nama" id="nama"
                                class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" value="{{ $peserta->email }}" name="email" id="email"
                                class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="username">NIK</label>
                            <input type="text" value="{{ $peserta->username }}" name="username" id="username"
                                class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" id="password" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="telp">No Telp</label>
                            <input type="number" value="{{ $peserta->telp }}" name="telp" id="telp"
                                class="form-control" required>
                        </div>
                        <button type="submit" class="btn btn-warning text-white" style="width: 100%">UPDATE</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-12">
            @if (Session::has('notif'))
                <div class="alert alert-danger">
                    {{ Session::get('notif') }}
                </div>
            @endif
            @if ($errors->any())
                @foreach ($errors->all() as $error)
                    <div class="alert alert-danger">
                        {{ $error }}
                    </div>
                @endforeach
            @endif
        </div>
    </div>
@endsection
