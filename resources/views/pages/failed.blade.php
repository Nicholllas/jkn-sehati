@extends('layouts.success')
@section('title','Checkout Success')

@section('content')

<!-- Main Content -->
<main>
    <div class="section-success d-flex align-items-center">
      <div class="col text-center">
        <img src="{{ url ('frontend/images/Icon/ic_mail.png') }}" alt="icon_mail">
        <h1>Ooops!</h1>
        <p>
          Something wrong, your payment is failed!
          <br>
          Please contact our teams if you encounter this message again!
        </p>
        <a href="{{ url('/') }}" class="btn btn-home-page mt-3 px-5">
          Home Page
        </a>
      </div>
    </div>
  </main>

@endsection
