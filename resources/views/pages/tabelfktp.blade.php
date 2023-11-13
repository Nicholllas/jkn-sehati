@extends('layouts.app')
@section('title')
BPJS Kesehatan Kantor Cabang Denpasar
@endsection

@section('css')
    {{-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css"> --}}
@endsection

@section('content')
<main>
  <!-- Search Heading -->
  <section class="section-search-heading" id="faskes">
    <div class="container">
      <div class="row">
        <div class="col text-center" data-aos="fade-up" data-aos-delay="150">
          <h2>Cari Fasilitas Kesehatan Tingkat Pertama</h2>
          <p>Quality point atau bintang yang Anda lihat adalah berdasarkan penilaian BPJS Kesehatan KC Denpasar</p>
        </div>
      </div>
    </div>
  </section>
  <!-- End Search Heading -->
  <!-- Search Bar -->
  <section class="section-searchbar" id="searchbar">
    <form method="GET">
    <div class="search-container">
        <div class="searchbar">
            <label for="search-input" class="search-icon-wrapper">
            <div class="search-icon"></div>
            </label>

                <input type="text" name="cari" id="cari" class="search-input" placeholder="Ketik Nama Faskes/Tipe Faskes/Kabupaten/Kota/Kecamatan/Desa"
                    value="{{ $cari }}">

        </div>
    </div>
</form>
  </section>
  <!-- End Search Bar -->
  <!-- Table FKTP -->
<section class="section-content-fktp" id="fktp">
    <div class="container">
    <div class="table-responsive">
    <table id="daftarfotofaskesTable" class="table">
    <thead>
      <tr>
        <th scope="col">No</th>
        <th scope="col">@sortablelink('title','Faskes')</th>
        <th scope="col">@sortablelink('service_hour','Jam Layanan')</th>
        <th scope="col">@sortablelink('city','Kota/Kab')</th>
        <th scope="col">Alamat</th>
        <th scope="col">@sortablelink('rating','Quality Point')</th>
      </tr>
    </thead>
    <tbody>
      @forelse ($items as $item)
                    <tr>
                        <th scope="row">{{ $loop->iteration }}</th>
                        <th onclick="window.location='{{url ('/detail', $item->slug)}}'" style="cursor: pointer;">{{ $item->title }}</th>
                        <th>{{ $item->service_hour }}</th>
                        <th>{{ $item->city }}</th>
                        <th>{{ $item->address }}</th>
                        <td><input id="input-21e" value="{{ $item->rating /20 }}" type="text" class="rating" data-theme="krajee-fas" data-min=0 data-max=5 data-step=0.5 data-size="md"
                            title="" disabled></td>
                        </tr>
                         @empty
                        <tr>
                        <td colspan="7" class="text-center">Data Kosong</td>
                        </tr>
        @endforelse
    </tbody>
  </table>
 {!! $items->appends(Request::except('page'))->render() !!}
    </div>
    </div>
</section>
  <!-- End Table FKTP -->
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
