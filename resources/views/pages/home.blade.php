@extends('layouts.app')
@section('title')
BPJS Kesehatan Kantor Cabang Denpasar
@endsection

@section('css')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
@endsection

@section('content')
<!-- ======= Background Header ======= -->
  <section id="hero" class="d-flex align-items-center justify-content-center">
    <div class="container">
      <div class="row justify-content-flex-start">
        <div class="col-xl-12">
        <br>
          <h1>JKN Sehati</h1>
          <h2>Publikasi Layanan Peserta BPJS Kesehatan Cabang Denpasar</h2>
        </div>
      </div>

      <div class="countdown-timer">
        <div class="section-title mt-5">

        </div>
        <br>
        <div class="row justify-content-flex-start" data-aos="zoom-in" data-aos-delay="250">
          <div class="col-xl-2 col-md-4 col-6">
            <div class="icon-box">
              <h3>Total FKTP</h3>
              <h3>{{ $faskes_category }}</h3>
            </div>
          </div>
          <div class="col-xl-2 col-md-4 col-6 ">
            <div class="icon-box">
              <h3>Total FKTP Denpasar</h3>
              <h3>{{ $faskes_dps }}</h3>
            </div>
          </div>
          <div class="col-xl-2 col-md-4 col-6 mt-4 mt-md-0">
            <div class="icon-box">
                <h3>Total FKTP Badung</h3>
                <h3>{{ $faskes_badung }}</h3>
            </div>
          </div>
          <div class="col-xl-2 col-md-4 col-6 mt-4 mt-xl-0">
            <div class="icon-box">
                <h3>Total FKTP Tabanan</h3>
                <h3>{{ $faskes_tabanan }}</h3>
            </div>
          </div>
        </div>
        <br>
    </div>

    </div>


  </section>
<!-- End Background Header -->

<main>
    <section class="section-about" id="about">
        <div class="container">
          <div class="row">
            <div class="col text-center section-about-heading">
              <h2>Tentang JKN Sehati</h2>
            </div>
            <div class="col-12">
              <div class="about-cards">
                <div class="row d-flex align-items-center">
                  <div class="col-12 col-lg-6">
                    <div class="video-container text-center my-3 border rounded p-2">
                      <iframe style="width: 100%; height: 300px;" src="{{ url('frontend/videos/JKN.mp4') }}" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture"></iframe>
                    </div>
                  </div>
                  <div class="col-12 col-lg-6">
                    <div class="text-container text-light border rounded p-1">
                      <p class="text-justify" style="color: #000; font-size: 18px; line-height: 1.6; padding: 10px;">
                        Kami hadir melalui Website JKN Sehati Media Informasi BPJS Kesehatan Cabang Denpasar.
                        Di website ini kami mempublikasikan hasil penilaian FKTP berdasarkan Nilai Walkthrough Audit.
                        Melalui website ini, kami mengharapkan Anda peserta BPJS Kesehatan mendapatkan pelayanan yang prima dari FKTP yang bekerjasama dengan kami.
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

    <!-- FKTP Terbaik Denpasar -->
   <section class="section-dps" id="fktpDps">
    <div class="container">
      <div class="row">
        <div class="col text-center section-dps-heading"data-aos="fade-up">
          <h2>Top 10 FKTP Kota Denpasar</h2>
          <p>Penilaian Berdasarkan Nilai Walkthrough Audit (WTA)</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Denpasar -->
<section class="section-popular-content-dps" id="popularContent">
    <div class="container">
      <div class="section-popular-fktp row justify-content-center">
        <div id="carouselDPS" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                @foreach ($items as $item)
              <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                <div class="col-12 col-lg-6">
                    <div class="card-fktp"
                      style="background-image: url('{{ $item->galleries->count() ? Storage:: url($item->galleries->first()->image) : '' }}');">
                      <div class="details">
                      <div class="content">
                                  <h2>{{ $item->category }}</h2>
                                  <p>{{ $item->title }}</p>
                                  <a href="{{ url ('/detail', $item->slug) }}" class="button">Lihat Detail</a>
                      </div>
                      </div>
                    </div>
                </div>
              </div>
            <a class="carousel-control-prev" href="#carouselDPS" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselDPS" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
            @endforeach
          </div>
      </div>
      </div>
    </div>
    </div>
</section>
<!-- FKTP Terbaik Tabanan -->
<section class="section-tbn" id="tbn">
    <div class="container">
      <div class="row">
        <div class="col text-center section-tbn-heading"data-aos="fade-up">
          <h2>Top 10 FKTP Kabupaten Tabanan</h2>
          <p>Penilaian Berdasarkan Nilai Walkthrough Audit (WTA)</p>
        </div>
      </div>
    </div>
  </section>
<section class="section-popular-content-tbn" id="popularContent">
    <div class="container">
      <div class="section-popular-fktp row justify-content-center">
        <div id="carouseltbn" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                @foreach ($tabanans as $tabanan)
              <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                <div class="col-12 col-lg-6">
                    <div class="card-fktp"
                      style="background-image: url('{{ $tabanan->galleries->count() ? Storage:: url($tabanan->galleries->first()->image) : '' }}');">
                      <div class="details">
                      <div class="content">
                                  <h2>{{ $tabanan->category }}</h2>
                                  <p>{{ $tabanan->title }}</p>
                                  <a href="{{ url ('/detail', $tabanan->slug) }}" class="button">Lihat Detail</a>
                      </div>
                      </div>
                    </div>
                </div>

              </div>
            <a class="carousel-control-prev" href="#carouseltbn" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouseltbn" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
            @endforeach
          </div>
      </div>
    </div>
</section>

<section class="section-bdg" id="bdg">
    <div class="container">
      <div class="row">
        <div class="col text-center section-bdg-heading"data-aos="fade-up">
          <h2>Top 10 FKTP Kabupaten Badung</h2>
          <p>Penilaian Berdasarkan Nilai Walkthrough Audit (WTA)</p>
        </div>
      </div>
    </div>
  </section>

  <section class="section-popular-content-bdg" id="popularContent">
    <div class="container">
      <div class="section-popular-fktp row justify-content-center">
        <div id="carouselbdg" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                @foreach ($badungs as $badung)
              <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                <div class="col-12 col-lg-6">
                    <div class="card-fktp"
                      style="background-image: url('{{ $badung->galleries->count() ? Storage:: url($badung->galleries->first()->image) : '' }}');">
                      <div class="details">
                      <div class="content">
                                  <h2>{{ $badung->category }}</h2>
                                  <p>{{ $badung->title }}</p>
                                  <a href="{{ url ('/detail', $badung->slug) }}" class="button">Lihat Detail</a>
                      </div>
                      </div>
                    </div>
                </div>

              </div>
            <a class="carousel-control-prev" href="#carouselbdg" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselbdg" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
            @endforeach
          </div>
      </div>
    </div>
</section>
{{-- carousel --}}


</main>
@endsection

@section('js')
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#daftarfaskesTable').DataTable();
        } );
    </script>
@endsection
