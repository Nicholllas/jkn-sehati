@extends('layouts.lapor.admin')

@section('title', 'Halaman Daftar Peserta')

@section('css')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
@endsection

@section('header', 'Data Peserta')

@section('content')
    <table id="pesertaTable" class="table">
        <thead>
            <tr>
                <th>No</th>
                <th>NIK</th>
                <th>Nama</th>
                <th>Username</th>
                <th>Telp</th>
                <th>Edit</th>
                <th>Hapus</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($masyarakat as $k => $v)
                <tr>
                    <td>{{ $k += 1 }}</td>
                    <td>{{ $v->nik }}</td>
                    <td>{{ $v->nama }}</td>
                    <td>{{ $v->username }}</td>
                    <td>{{ $v->telp }}</td>
                    <td><a href="{{ route('masyarakat.edit', $v->nik) }}" style="text-decoration: underline">Edit</a></td>
                    <td><a href="{{ route('masyarakat.show', $v->nik) }}" style="text-decoration: underline">Hapus</a></td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection

@section('js')
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#pesertaTable').DataTable();
        });
    </script>
@endsection
