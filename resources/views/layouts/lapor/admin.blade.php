<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>@yield('title')</title>
    @notifyCss
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
        integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="{{ asset('backend/css/admin.css') }}">

    <link rel="icon" sizes="any" href="{{ url('frontend/images/favicon/logo.ico') }}">
    @yield('css')

    <style>
        .btn-purple {
            background: #284b8c;
            border: 1px solid #284b8c;
            color: #fff;
        }

        .btn-purple:hover {
            background: #284b8c;
            border: 1px solid #284b8c;
            color: #fff;
        }
    </style>

</head>

<body>

    <div class="wrapper">
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3 class="mb-0">JKN SEHATI</h3>
                <p class="text-white mb-0">Pengaduan Layanan JKN</p>
            </div>
            @if (Auth::guard('admin')->user()->level === 'admin')
                <ul class="list-unstyled components">
                    <li class="{{ Request::is('petugas/dashboard') ? 'active' : '' }}">
                        <a href="{{ route('dashboard.index') }}">Dashboard</a>
                    </li>
                    <div class="dropdown">
                        <button class="dropdown-btn">Pengaduan
                            <i class="fa fa-caret-down"></i>
                        </button>
                        <div class="dropdown-container">
                            <a href="{{ route('pengaduan.index') }}">Semua Pengaduan</a>
                            <a href="{{ route('pengaduan.pending') }}">Pending</a>
                            <a href="{{ route('pengaduan.proses') }}">Proses</a>
                            <a href="{{ route('pengaduan.selesai') }}">Selesai</a>
                        </div>
                    </div>

                    <li class="{{ Request::is('petugas/petugas') ? 'active' : '' }}">
                        <a href="{{ route('petugas.index') }}">Petugas</a>
                    </li>
                    <li class="{{ Request::is('petugas/masyarakat') ? 'active' : '' }}">
                        <a href="{{ route('masyarakat.index') }}">Peserta</a>
                    </li>
                    <li class="{{ Request::is('petugas/laporan') ? 'active' : '' }}">
                        <a href="{{ route('laporan.index') }}">Laporan</a>
                    </li>
                @elseif(Auth::guard('admin')->user()->level === 'petugas')
                    <ul class="list-unstyled components">
                        <li class="{{ Request::is('petugas/dashboard') ? 'active' : '' }}">
                            <a href="{{ route('dashboard.index') }}">Dashboard</a>
                        </li>
                        <div class="dropdown">
                            <button class="dropdown-btn">Pengaduan
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-container">
                                <a href="{{ route('pengaduan.index') }}">Semua Pengaduan</a>
                                <a href="{{ route('pengaduan.pending') }}">Pending</a>
                                <a href="{{ route('pengaduan.proses') }}">Proses</a>
                                <a href="{{ route('pengaduan.selesai') }}">Selesai</a>
                            </div>
                        </div>
                    </ul>
            @endif

            </ul>
        </nav>


        <div id="content">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="navbar-btn">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>
                    <div class="ml-2">@yield('header')</div>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <a class="nav-link dropdown-toggle" href="{{ route('admin.logout') }}" id="button"
                                role="button">{{ Auth::guard('admin')->user()->nama_petugas }}</a>

                        </ul>
                    </div>
                </div>



            </nav>
            @yield('content')
        </div>
    </div>
    @include('notify::components.notify')
    @notifyJs
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
    </script>

    <script>
        $(document).ready(function() {
            $('#sidebarCollapse').on('click', function() {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('active');
            });
        });

        /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
        var dropdown = document.getElementsByClassName("dropdown-btn");
        var i;

        for (i = 0; i < dropdown.length; i++) {
            dropdown[i].addEventListener("click", function() {
                this.classList.toggle("active");
                var dropdownContent = this.nextElementSibling;
                dropdownContent.style.display = dropdownContent.style.display === "block" ? "none" : "block";
            });
        }
    </script>

    @yield('js')
</body>

</html>
