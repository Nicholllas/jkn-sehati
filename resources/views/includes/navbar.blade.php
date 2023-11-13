<!-- ======= Header ======= -->
<header id="header" class="fixed-top ">
  <div class="container d-flex align-items-center justify-content-between align-self-center">

    <a href="{{ route('home') }}" class="logo"><img src="{{ url('frontend/images/logo-bpjs.png') }}" alt="icon"></a>

    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li class="active"><a href="{{ route ('home') }}">HOME</a></li>
        <li><a href="{{ route ('tabelfktp') }}">TABEL PERSEBARAN FKTP</a></li>
        <li><a href="{{ route ('gis') }}">PETA PERSEBARAN FKTP</a></li>
        <li><a href="{{ route ('faq') }}">FAQ</a></li>

        @guest
        <li><a href="{{ url('login') }}">LOGIN</a></li>
        @endguest
        @auth
        <!-- Mobile Button -->
        <form class="form-inline d-sm-block d-md-none" title="logout" action="{{ url('logout') }}"
        method="POST">
        @csrf
          <button class="btn btn-loginm my-2-sm-0 px-4" type="submit" title="logout">
            Logout
          </button>
        </form>
        <!-- Desktop Button -->
        <form class="form-inline my-2 my-lg-0 d-none d-md-block" title="logout" action="{{ url('logout') }}"
        method="POST">
        @csrf
          <button class="btn btn-login btn-navbar-right my-2-sm-0 px-4" type="submit" title="logout">
            Logout
          </button>
        </form>
            @endauth
        </div>
      </div>
    </div>
  </div>
</div>
      </ul>
    </nav><!-- .nav-menu -->

  </div>
</header><!-- End Header -->
