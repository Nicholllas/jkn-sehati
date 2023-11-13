@extends('layouts.app_detail')
@section('title','Detail Faskes Tingkat I')

@section('content')

 <!-- Main Content -->
 <main>
    <section class="section-details-header" ></section>
    <section class="section-details-content">
      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col p-0">
            <nav>
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  Fasilitas Kesehatan Tingkat 1
                </li>
                <li class="breadcrumb-item active">
                  Details
                </li>
              </ol>
            </nav>
          </div>
        </div>
        <!-- Galery -->
        <div class="row">
          <div class="col-lg-8 pl-lg-0">
            <div class="card card-details">
              <h1>{{ $item->kode_fktp }} - {{ $item->title }}</h1>
              <h3><input id="input-21e" value="{{ $item->rating /20 }}" type="text" class="rating" data-theme="krajee-fas" data-min=0 data-max=5 data-step=0.5 data-size="md"
                title="" disabled></h3>
              <p>
                {{ $item->category }}
              </p>
              @if ($item->galleries->count())
              <div class="gallery">
                <div class="xzoom-container">
                  <img src="{{ Storage:: url($item->galleries->first()->image) }}" alt="Detail Gambar Faskes" class="xzoom" id="xzoom-default"
                    xoriginal="{{ Storage:: url($item->galleries->first()->image) }}">
                </div>
                <div class="xzoom-thumbs">
                  @foreach ($item->galleries as $gallery)
                  <a href="{{ Storage:: url($gallery->image) }} ">
                    <img  src="{{ Storage:: url($gallery->image) }}"
                          alt="Gambar" class="xzoom-gallery" width="128"
                          xpreview="{{ Storage:: url($gallery->image) }}">
                  </a>
                  @endforeach
                </div>
              </div>
                 @else
                    <div class="gallery">
                    <div class="xzoom-container">
                    <img src="{{ asset('frontend/images/kosong.png') }}" alt="Image Not Available" class="xzoom" id="xzoom-default">
                    </div>
                    </div>

              @endif
              <h2>Deskripsi Fasilitas Kesehatan</h2>
              <p style="color: #000; font-size: 18px; line-height: 1.6;">
                {!! $item->about !!}
              </p>
              <div class="features row">
                <div class="col-md-4">
                    <img src="{{ url('frontend/images/Icon/ic_nurse.png') }}" alt="Icon Event" class="features-image">
                    <div class="description">
                        <h3>Perawat</h3>
                        <p>
                            @if (!empty($item->perawat) && $item->perawat !== '0')
                                {{ $item->perawat }}
                            @else
                                No Data
                            @endif
                        </p>
                    </div>
                </div>

                <div class="col-md-4 border-left">
                  <img src="{{ url('frontend/images/Icon/ic_dokterumum.png') }}" alt="Icon Event" class="features-image">
                  <div class="description">
                    <h3>Dokter Umum</h3>
                    <p>{{ $item->dokter_umum }}</p>
                  </div>
                </div>
                <div class="col-md-4 border-left">
                  <img src="{{ url('frontend/images/Icon/ic_dentist.png') }}" alt="Icon Event" class="features-image">
                  <div class="description">
                    <h3>Dokter Gigi</h3>
                    <p>{{ $item->dokter_gigi }}</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="card card-details card-right">

              <h2>Informasi FKTP</h2>
              <table class="trip-informations table-sm">
                <tr>
                  <th width="50%">Jenis Faskes</th>
                  <td width="50%">{{ $item->jenis_faskes }}</td>
                </tr>
                <tr>
                  <th width="50%">Jam Layanan</th>
                  <td width="50%">{{ $item->service_hour }}</td>
                </tr>
                <tr>
                  <th width="50%">No Telp</th>
                  <td width="50%"><a href="https://api.whatsapp.com/send?phone={{ $item->no_telp }}&text=Selamat%20Datang%20Silahkan%20Klik%20Lanjut%20Chat%20Untuk%20Melakukan%20Konsultasi">{{ $item->no_telp }}</td>
                </tr>
                <tr>
                  <th width="50%">Alamat</th>
                  <td width="50%">{{$item->address}}</td>
                </tr>
                <tr>
                  <th width="50%">Kab/Kota</th>
                  <td width="50%">{{ $item->city }}</td>
                </tr>
                <tr>
                  <th width="50%">Kecamatan</th>
                  <td width="50%">{{ $item->kecamatan }}</td>
                </tr>
                <tr>
                  <th width="50%">Desa/Kel</th>
                  <td width="50%">{{ $item->desa}}</td>
                </tr>
                <tr>
                    <th width="50%">Latitude</th>
                    <td width="50%">
                        @if ($item->locations->isNotEmpty())
                            {{ $item->locations->first()->latitude ?? 'Data Belum Tersedia' }}
                        @else
                        Data Belum Tersedia
                        @endif
                    </td>
                </tr>
                  <tr>
                    <th width="50%">Longitude</th>
                    <td width="50%">
                        @if ($item->locations->isNotEmpty())
                            {{ $item->locations->first()->longitude ?? 'Data Belum Tersedia' }}
                        @else
                            Data Belum Tersedia
                        @endif
                    </td>
                </tr>

              </table>
                <br>
                <h2>Lokasi {{ $item->title }}</h2>

                 <!--Google map-->
                <div id="map-container-google-1" class="z-depth-1-half map-container" style="height: 200px">
                <iframe src="{{ $item->gmap_embed }}" frameborder="2"
                    style="border:0" allowfullscreen referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <!--Google Maps-->

                <h3 class="mt-2 mb-0">Note</h3>
                <p class="disclaimer mb-0 text-justify">
                 Untuk peserta dengan pekerjaan TNI/Polri Atau Peserta yang ingin mengubah faskes sebelum 3 bulan dapat melakukan perubahan FKTP melalui Pandawa
                </p>
                <br>
                <p class="disclaimer mb-0 text-justify">
                 Untuk peserta selain pekerjaan TNI/Polri dan belum melakukan perubahan faskes dalam 3 bulan terakhir dapat melakukan perubahan faskes melalui aplikasi Mobile JKN
                </p>
            </div>
            <br>
            <div class="question-container">
            <h2>Ingin Pindah Ke Faskes Kami ?</h2>
            <div class="join-container">
              @auth
                <a href="https://api.whatsapp.com/send?phone=628118165165&text=Selamat%20Datang%20Silahkan%20Klik%20Lanjut%20Chat%20Untuk%20Pindah%20Faskes"  class=" btn btn-block btn-join-pandawa mt-3 py-2" target="_blank" rel="noopener noreferrer"> Pindah Melalui Pandawa</a>
                <a href="https://play.google.com/store/apps/details?id=app.bpjs.mobile&hl=id&gl=US" class="btn btn-block btn-join-jkn mt-3 py-2" target="_blank" rel="noopener noreferrer">Pindah Melalui Mobile JKN </a>
                <br>
                <h2>Pengaduan Layanan JKN</h2>
                <a href="{{ route ('lapor.index') }}"  class=" btn btn-block btn-join-pandawa mt-3 py-2" target="_blank" rel="noopener noreferrer"> Laporkan Faskes </a>
              @endauth
                  @guest
                  <a href="https://api.whatsapp.com/send?phone=628118165165&text=Selamat%20Datang%20Silahkan%20Klik%20Lanjut%20Chat%20Untuk%20Pindah%20Faskes" class="btn btn-block btn-join-pandawa mt-3 py-2" target="_blank" rel="noopener noreferrer">Pindah Melalui Pandawa</a>
                  <a href="https://play.google.com/store/apps/details?id=app.bpjs.mobile&hl=id&gl=US" class="btn btn-block btn-join-jkn mt-3 py-2" target="_blank" rel="noopener noreferrer">Pindah Melalui Mobile JKN</a>
                  <h2>Pengaduan Layanan JKN</h2>
                <a href="{{ route ('lapor.index', ) }}"  class=" btn btn-block btn-join-pandawa mt-3 py-2" target="_blank" rel="noopener noreferrer"> Laporkan Faskes </a>
                  @endguest
            </div>
          </div>
          </div>
        </div>
      </div>
      </div>
    </section>
  </main>
  <br>
  <br>
  <div id="disqus_thread" class="mt-5" style="padding:50px"></div>
  <script>
      /**
      *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
      *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
      /*
      var disqus_config = function () {
      this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
      this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
      };
      */
      (function() { // DON'T EDIT BELOW THIS LINE
      var d = document, s = d.createElement('script');
      s.src = 'https://palapa2022.disqus.com/embed.js';
      s.setAttribute('data-timestamp', +new Date());
      (d.head || d.body).appendChild(s);
      })();
  </script>
  <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
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
