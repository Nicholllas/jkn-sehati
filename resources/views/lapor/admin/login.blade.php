<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        @notifyCss
        <style>
            body {
                background: #284b8c;
            }

            .btn-purple {
                background: #284b8c;
                width: 100%;
                color: #fff;
            }

        </style>
    <title>Halaman Masuk Petugas</title>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <h2 class="text-center text-white mb-0 mt-5">JKN SEHATI</h2>
                <P class="text-center text-white mb-5">Kanal Pengaduan Layanan JKN</P>
                <div class="card mt-5">
                    <div class="card-body">
                        <h2 class="text-center mb-5">Form Petugas</h2>
                        <form action="{{ route ('admin.login') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <input type="text" name="username" placeholder="Username" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" placeholder="Password" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-purple">Login</button>
                        </form>
                    </div>
                </div>
                @if (Session::has('pesan'))
                <div class="alert alert-danger mt-2">
                    {{ Session::get('pesan') }}
                </div>
                @endif
                <a href="{{ route('lapor.index') }}" class="btn btn-purple" style="width: 100%">Kembali ke Halaman Utama</a>
            </div>
        </div>
    </div>
    @include('notify::components.notify')
        @notifyJs
</body>
</html>
