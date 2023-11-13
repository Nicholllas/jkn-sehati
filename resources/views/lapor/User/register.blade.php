@extends('layouts.user')

@section('css')
<style>
    body {
        background: #284b8c;
    }

    .btn-purple {
        background: #284b8c !important;
        width: 100%;
        color: #fff;
    }
    .text-white {
    color: #fff!important;
    }

    .text-center {
    font-weight: bold;
    font-size : 24px;
    }


</style>
@endsection

@section('title', 'Halaman Daftar')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-5">
            <h2 class="text-center text-white mb-0 mt-5">JKN Sehati</h2>
            <P class="text-center text-white mb-5">Kanal Pengaduan Layanan JKN</P>
            <div class="card mt-5">
                <div class="card-body">
                    <h2 class="text-center mb-5">FORM DAFTAR AKUN</h2>
                    <form action="{{ route('lapor.register') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <input type="number" value="{{ old('nik') }}" name="nik" placeholder="NIK" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="number" value="{{ old('noka') }}" name="noka" placeholder="No Kartu BPJS" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="text" value="{{ old('nama') }}" name="nama" placeholder="Nama Lengkap" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="text" value="{{ old('email') }}" name="email" placeholder="Email" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="text" value="{{ old('username') }}" name="username" placeholder="Username" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="password" value="{{ old('password') }}" name="password" placeholder="Password" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="number" value="{{ old('telp') }}" name="telp" placeholder="No. Telp" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-purple">Daftar</button>
                    </form>
                </div>
            </div>
            @if (Session::has('pesan'))
            <div class="alert alert-danger mt-2">
                {{ Session::get('pesan') }}
            </div>
            @endif
            <a href="{{ route('lapor.index') }}" class="btn btn-warning text-white mt-3" style="width: 100%">Kembali ke Halaman Utama</a>
        </div>
    </div>
</div>
@endsection
