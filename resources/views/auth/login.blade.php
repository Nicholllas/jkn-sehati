@extends('layouts.login')

@section('title')
    PALAPA | Login
@endsection

@section('content')

    <body>


        <main class="login-container">
            <div class="container">
                <div class="row page-login d-flex align-items-center">
                    <div class="section-left col-12 col-md-6">
                        <h1 class="mb-4"><br></h1>
                        <img src="frontend/images/FOTO_BPJS.jpg" alt="Maskot" class="login-image">
                    </div>
                    <div class="section-right col-12 col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="text-center">
                                    <a href="{{ route('home') }}">
                                        <img src="/frontend/images/logo-bpjs.png" alt="Logo BPJS" class="w-75  mb-4">
                                    </a>
                                </div>
                                <form method="POST" action="{{ route('login') }}">
                                    @csrf
                                    <div class="form-group">
                                        <label for="email">Alamat Email</label>
                                        <input type="email" class="form-control @error('email') is-invalid @enderror"
                                            id="email" aria-describedby="emailHelp" name="email"
                                            value="{{ old('email') }}" required autocomplete="email" autofocus>
                                        @error('email')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>

                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input id="password" type="password"
                                            class="form-control @error('password') is-invalid @enderror" name="password"
                                            required autocomplete="current-password">
                                        @error('password')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>

                                    <div class="form-group form-check">
                                        <input class="form-check-input" type="checkbox" name="remember" id="remember"
                                            {{ old('remember') ? 'checked' : '' }}>
                                        <label for="remember">Ingat Saya</label>
                                    </div>
                                    <br>
                                    <button type="submit" class="btn btn-login btn-block">Masuk
                                    </button>

                                    <p class="text-center mt-4">
                                        <a href="{{ route('password.request') }}">Saya Lupa Password</a>
                                    </p>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
@endsection
