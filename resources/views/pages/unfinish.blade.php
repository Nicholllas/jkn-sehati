@extends('layouts.success')
@section('title','Checkout Success')

@section('content')

<!-- Main Content -->
<main>
    <div class="section-success d-flex align-items-center">
      <div class="col text-center">
        <img src="{{ url ('frontend/images/Icon/ic_mail.png') }}" alt="icon_mail">
        <h1>ZzzZzz</h1>
        <p>
          We still waiting for you to complete your payment
          <br>
          Please complete the payment
        </p>
        <a href="{{ url('/') }}" class="btn btn-home-page mt-3 px-5">
          Home Page
        </a>
      </div>
    </div>
  </main>

@endsection
