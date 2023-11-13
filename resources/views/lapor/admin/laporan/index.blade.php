@extends('layouts.lapor.admin')

@section('title', 'Halaman Laporan')

@section('header', 'Laporan Pengaduan')

@section('content')
    <div class="row">
        <div class="col-lg-4 col-12">
            <div class="card">
                <div class="card-header">
                    Cari Berdasarkan Tanggal & Status
                </div>
                <div class="card-body">
                    <form action="{{ route('laporan.getLaporan') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <input type="text" name="from" id="from" class="form-control"
                                placeholder="Tanggal Awal" onfocusin="(this.type='date')" onfocusout="(this.type='text')">
                        </div>
                        <div class="form-group">
                            <input type="text" name="to" id="to" class="form-control"
                                placeholder="Tanggal Akhir" onfocusin="(this.type='date')" onfocusout="(this.type='text')">
                        </div>
                        <div class="form-group">
                            <select name="status" class="form-control">
                                <option value="">Pilih Status Laporan</option>
                                <option value="0"{{ old('status') === '0' ? 'selected' : '' }}>Pending</option>
                                <option value="proses"{{ old('status') === 'proses' ? 'selected' : '' }}>Proses</option>
                                <option value="selesai"{{ old('status') === 'selesai' ? 'selected' : '' }}>Selesai</option>
                                <!-- Add more options if needed -->
                            </select>
                        </div>
                        <button type="submit" class="btn btn-purple" style="width: 100%">Cari Laporan</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-8 col-12">
            <div class="card">
                <div class="card-header">
                    Data Berdasarkan Tanggal & Status
                    <div class="float-right">
                        @if ($pengaduan ?? '')
                            <a href="{{ route('laporan.cetakLaporan', ['from' => $from, 'to' => $to, 'status' => $status]) }}"
                                class="btn btn-danger">CETAK PDF</a>
                        @endif
                    </div>
                </div>
                <div class="card-body">
                    @if ($pengaduan ?? '')
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Tanggal</th>
                                    <th>Nama FKTP</th>
                                    <th>Judul Laporan</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($pengaduan as $k => $v)
                                    <tr>
                                        <td>{{ $k += 1 }}</td>
                                        <td>{{ $v->tgl_pengaduan }}</td>
                                        <td>{{ $v->faskes_category->title }}</td>
                                        <td>{{ $v->judul_laporan }}</td>
                                        <td>
                                            @if ($v->status == '0')
                                                <a href="" class="badge badge-danger">Pending</a>
                                            @elseif($v->status == 'proses')
                                                <a href="" class="badge badge-warning text-white">Proses</a>
                                            @else
                                                <a href="" class="badge badge-success">Selesai</a>
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    @else
                        <div class="text-center">
                            Tidak ada data
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection
