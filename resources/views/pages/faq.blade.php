@extends('layouts.app')
@section('title','Frequently Asked Question')

@section('content')

<!-- FAQ Heading -->

<section class="section-faq-heading" id="faskes">
    <div class="container">
      <div class="row">
        <div class="col text-center" data-aos="fade-up" data-aos-delay="150">
          <h2>Frequently Asked Question</h2>
          <p>Pertanyaan yang sering ditanyakan</p>
        </div>
      </div>
    </div>
  </section>
  <!-- End FAQ Heading -->

{{-- FAQ --}}
<section class="section-faq" id="faq" class="py-5">
    <div class="container">
    <div id="accordion">
        <div class="card">
          <div class="card-header" id="headingOne">
            <h5 class="mb-0">
              <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                Bagaimana cara melaporkan FKTP yang pelayanannya kurang baik?
              </button>
            </h5>
          </div>

          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
            Anda dapat mencari nama FKTP pada halaman depan kemudian mengklik nama FKTP tersebut lalu tekan tombol "Laporkan Faskes" dan isi aduan serta bukti pendukung.
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" id="headingTwo">
            <h5 class="mb-0">
              <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                Bagaimana cara melakukan perpindahan FKTP bagi PNS/TNI/POLRI?
              </button>
            </h5>
          </div>
          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
            <div class="card-body">
              Anda dapat mencari FKTP pada halaman depan, kemudian memilih FKTP yang sesuai dengan kemauan anda, lalu tekan tombol "Pindah melalui Pandawa".
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" id="headingThree">
            <h5 class="mb-0">
              <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                Bagaimana cara melakukan perpindahan FKTP melalui mobile JKN?
              </button>
            </h5>
          </div>
          <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
            <div class="card-body">
                Anda dapat mencari FKTP pada halaman depan, kemudian memilih FKTP yang sesuai dengan kemauan anda, lalu tekan tombol "Pindah melalui Mobile JKN".
            </div>
          </div>
        </div>
      </div>
    </div>
</section>
{{-- End FAQ --}}

@endsection


@push('prepend-style')
<link rel="stylesheet" href="{{ url ('frontend/libraries/xzoom/xzoom.css') }}">
@endpush

@push('addon-script')
<script src="{{ url ('frontend/libraries/xzoom/xzoom.min.js') }}"></script>
  <script>
    $(document).ready(function () {
      $('.xzoom, .xzoom-gallery').xzoom({
        zoomWidth: 500,
        title: false,
        tint: '#333',
        xoffset: 15,
      });
    });
  </script>

@endpush
