
        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route ('dashboard') }}">
                <div class="sidebar-brand-text mx-3">Dashboard Staff</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <div class="sidebar-heading">
                CRUD FKTP
            </div>
            <li class="nav-item">
                <a class="nav-link" href="{{ route ('dashboard') }}">
                    <i class="fas fa-info-circle"></i>
                    <span>Dashboard Informasi FKTP</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{ route ('faskes-category.index') }}">
                    <i class="fas fa-building"></i>
                    <span>Daftar FKTP</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('gallery.index') }}">
                    <i class="fas fa-fw fa-images"></i>
                    <span>Foto FKTP</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('faskes-location.index') }}">
                    <i class="fas fa-fw fa-map-marker"></i>
                    <span>Titik Koordinat FKTP</span></a>
            </li>

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->
