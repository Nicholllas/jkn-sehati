@extends('layouts.user')

@section('css')
    <link rel="stylesheet" href="{{ asset('frontend/styles/landing.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/styles/laporan.css') }}">
    <link rel="icon" sizes="any" href="{{ url('frontend/images/favicon/logo.ico') }}">
@endsection

@section('title', 'JKN Sehati - Pengaduan Masyarakat')

@section('content')
    {{-- Section Header --}}
    <section class="header">
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
            <div class="container">
                <div class="container-fluid">
                    <a class="navbar-brand" href="{{ route('lapor.index') }}">
                        <h4 class="semi-bold mb-0 text-white">JKN Sehati</h4>
                        <p class="italic mt-0 text-white">Kanal Pengaduan Layanan JKN</p>
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        @if (Auth::guard('masyarakat')->check())
                            <ul class="navbar-nav text-center ml-auto">
                                <li class="nav-item">
                                    <a class="nav-link ml-3 text-white" href="{{ route('lapor.laporan') }}">Laporan</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link ml-3 text-white" href="{{ route('lapor.logout') }}"
                                        style="text-decoration: underline">{{ Auth::guard('masyarakat')->user()->nama }}</a>
                                </li>
                            </ul>
                        @else
                            <ul class="navbar-nav text-center ml-auto">
                                <li class="nav-item">
                                    <button class="btn text-white" type="button" class="btn btn-primary"
                                        data-toggle="modal" data-target="#loginModal">Masuk</button>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route('lapor.formRegister') }}" class="btn btn-outline-purple">Daftar</a>
                                </li>
                            </ul>
                        @endauth
                </div>
            </div>
        </div>
    </nav>

</section>
{{-- Section Card --}}
<div class="container">
    <div class="row justify-content-between">
        <div class="col-lg-8 col-md-12 col-sm-12 col-12 col">
            <div class="content content-top shadow">
                @if ($errors->any())
                    @foreach ($errors->all() as $error)
                        <div class="alert alert-danger">{{ $error }}</div>
                    @endforeach
                @endif
                @if (Session::has('pengaduan'))
                    <div class="alert alert-{{ Session::get('type') }}">{{ Session::get('pengaduan') }}</div>
                @endif
                <div class="card mb-3">Form Pengaduan Layanan JKN</div>
                <form action="{{ route('lapor.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <select name="faskes_categories_id" class="form-control">
                            <option value="">Pilih Nama Faskes</option>
                            @foreach ($faskes_categories as $faskes_category)
                                <option value="{{ $faskes_category->id }}">
                                    {{ $faskes_category->title }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <input name="judul_laporan" class="form-control"
                            placeholder="Judul Laporan">{{ old('judul_laporan') }}</input>
                    </div>
                    <div class="form-group">
                        <textarea name="isi_laporan" placeholder="Masukkan Isi Pengaduan" class="form-control" rows="4">{{ old('isi_laporan') }}</textarea>
                    </div>
                    <div class="form-group">
                        <input type="text" value="{{ old('tgl_kejadian') }}" name="tgl_kejadian"
                            placeholder="Pilih Tanggal Kejadian" class="form-control" onfocusin="(this.type='date')"
                            onfocusout="(this.type='text')">
                    </div>
                    <div class="form-group">
                        <label for="image">Harap Upload Foto Tidak Lebih Dari 5 MB</label>
                        <input type="file" name="foto" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-custom mt-2">Kirim</button>
                </form>
            </div>
        </div>
        <div class="col-lg-4 col-md-12 col-sm-12 col-12 col">
            <div class="content content-bottom shadow">
                <div>
                    <img src="{{ asset('frontend/images/user_default.svg') }}" alt="user profile" class="photo">
                    <div class="self-align">
                        <h5><a style="color: #6a70fc" href="#">{{ Auth::guard('masyarakat')->user()->nama }}</a>
                        </h5>
                        <p class="text-dark">{{ Auth::guard('masyarakat')->user()->username }}</p>
                    </div>
                    <div class="column-container">
                        <div class="column">
                            <p class="italic mb-0">Terverifikasi</p>
                            <div class="text-center">
                                {{ $hitung[0] }}
                            </div>
                        </div>

                        <div class="column">
                            <p class="italic mb-0">Proses</p>
                            <div class="text-center">
                                {{ $hitung[1] }}
                            </div>
                        </div>

                        <div class="column">
                            <p class="italic mb-0">Selesai</p>
                            <div class="text-center">
                                {{ $hitung[2] }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-5">
        <div class="col-lg-8">
            <a class="d-inline tab {{ $siapa != 'me' ? 'tab-active' : '' }} mr-4"
                href="{{ route('lapor.laporan') }}">
                Semua
            </a>
            <a class="d-inline tab {{ $siapa == 'me' ? 'tab-active' : '' }}"
                href="{{ route('lapor.laporan', 'me') }}">
                Laporan Saya
            </a>
            <hr>
        </div>
        @foreach ($pengaduan as $k => $v)
            <div class="col-lg-8">
                <div class="laporan-top">
                    <img src="{{ asset('frontend/images/user_default.svg') }}" alt="profile" class="profile">
                    <div class="d-flex justify-content-between">
                        <div>
                            <p>{{ $v->user->nama }}</p>
                            @if ($v->status == '0')
                                <p class="text-danger">Pending</p>
                            @elseif($v->status == 'proses')
                                <p class="text-warning">{{ ucwords($v->status) }}</p>
                            @else
                                <p class="text-success">{{ ucwords($v->status) }}</p>
                            @endif
                        </div>
                        <div>
                            <p>{{ $v->tgl_pengaduan->format('d M, h:i') }}</p>
                        </div>
                    </div>
                </div>
                <div class="laporan-mid">
                    <div class="judul-laporan">
                        {{ $v->judul_laporan }}
                    </div>
                    <div class="nama-fktp">
                        {{ $v->faskes_category->title }}
                    </div>
                    <p>{{ $v->isi_laporan }}</p>
                </div>
                <div class="laporan-bottom">
                    @if ($v->foto != null)
                        <img src="{{ Storage::url($v->foto) }}" alt="{{ 'Gambar ' . $v->judul_laporan }}"
                            class="gambar-lampiran">
                    @endif
                    @if ($v->tanggapan != null)
                        <div class="tanggapan">
                            <p class="mt-3 mb-1">
                                {{ '*Tanggapan Dari Petugas : ' . $v->tanggapan->petugas->nama_petugas }}</p>
                            <p class="light">{{ $v->tanggapan->tanggapan }}</p>
                    @endif
                </div>
            </div>
            <hr>
    </div>
    @endforeach
</div>
</div>
{{-- Footer --}}
<div class="mt-5">
    <hr>
    <div class="text-center">
        <p class="italic text-secondary">© 2023 NCS-Production • All rights reserved</p>
    </div>
</div>
@endsection

@section('js')
@if (Session::has('pesan'))
    <script>
        $('#loginModal').modal('show');
    </script>
@endif
@endsection
