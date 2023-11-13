@extends('layouts.lapor.admin')

@section('title', 'Halaman Dashboard')

@section('header', 'Dashboard')

@section('content')
    <div class="row">
        <div class="col-lg-3">
            <div class="card">
                <div class="card-header">Petugas</div>
                <div class="card-body">
                    <div class="text-center">
                        {{ $petugas }}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="card-header">Peserta</div>
                <div class="card-body">
                    <div class="text-center">
                        {{ $masyarakat }}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card-pending">
                <div class="card-header">Pengaduan Pending</div>
                <div class="card-body">
                    <div class="text-center">
                        <a href="{{ route('pengaduan.pending') }}">{{ $pending }}</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card-proses">
                <div class="card-header">Pengaduan Proses</div>
                <div class="card-body">
                    <div class="text-center">
                        <a href="{{ route('pengaduan.proses') }}">{{ $proses }}</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card-selesai">
                <div class="card-header">Pengaduan Selesai</div>
                <div class="card-body">
                    <div class="text-center">
                        <a href="{{ route('pengaduan.selesai') }}">{{ $selesai }}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
