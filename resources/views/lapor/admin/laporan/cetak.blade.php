<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ url('frontend/styles/pdf.css') }}" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title>Laporan Pengaduan Pelayanan JKN</title>
</head>

<body>
    <header class="header">
    </header>
    <table align="center">
        <tr>
            <table>
                <tr>
                    <td>
                        <center>
                            <font size="4"><b>Kantor Cabang Denpasar</b></font><br>
                            <font size="2"><i>Jalan Panjaitan No 6, Panjer, Denpasar Selatan, Kota Denpasar</i>
                            </font>
                        </center>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr>
                    </td>
                </tr>
            </table>
            <div class="text-center">
                <h3>Laporan Pengaduan Peserta</h3>
            </div>
            <div class="container">
                <table class="table">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama FKTP</th>
                            <th>Tanggal</th>
                            <th>Judul Laporan</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($pengaduan as $k => $v)
                            <tr>
                                <td>{{ $k + 1 }}</td>
                                <td>{{ $v->faskes_category->title }}</td>
                                <td>{{ $v['tgl_pengaduan']->format('d-M-Y') }}</td>
                                <td>{{ $v['judul_laporan'] }}</td>
                                <td>{{ $v['status'] == '0' ? 'Pending' : ucwords($v['status']) }}</td>
                            </tr>
                        @endforeach


                    </tbody>
                </table>
            </div>
            <footer class="text-right">
                <p class="pr-3 m-0">Tanggal Cetak :{{ date('Y-m-d H:i:s') }}</p>
            </footer>
</body>

</html>
