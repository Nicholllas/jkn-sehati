@extends('layouts.checkout')
@section('title','Checkout')

@section('content')
<!-- Main Content -->
<main>
    <section class="section-details-header"></section>
    <section class="section-details-content">
      <div class="container">
        <div class="row">
          <div class="col p-0">
            <nav>
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  Travel Package
                </li>
                <li class="breadcrumb-item">
                  Details
                </li>
                <li class="breadcrumb-item active">
                  Checkout
                </li>
              </ol>
            </nav>
          </div>
        </div>
        <!-- Galery -->
        <div class="row">
          <div class="col-lg-8 pl-lg-0">
            <div class="card card-details">
              @if ($errors->any())
                  <div class="alert alert-danger">
                    <ul>
                      @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                      @endforeach
                    </ul>
                  </div>
              @endif
              <h1>Siapa yang berpartisipasi?</h1>
              <p>
                {{ $item->faskes_category->title }} | {{ $item->faskes_category->category }}
              </p>

              <div class="attendee">
                <table class="table table-responsive-sm text-center">
                  <thead>
                    <tr>
                      <td>Picture</td>
                      <td>Name</td>
                      <td>Tanggal Lahir</td>
                      <td>Nationality</td>
                      <td>Asal Provinsi</td>
                      <td>NIK</td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    @forelse ($item->details as $detail)
                    <tr>
                      <td><img src="https://ui-avatars.com/api/?name={{ $detail->username }}" alt="Gambar Member"
                        height="60" class="rounded-circle">
                      </td>
                      <td class="align-middle">
                        {{ $detail->username }}
                      </td>
                      <td class="align-middle">
                        {{ \Carbon\Carbon::create($detail ->date_of_birth)->format('m/d/Y') }}
                      </td>
                      <td class="align-middle">
                        {{ $detail->institute }}
                      </td>
                      <td class="align-middle">
                        {{ $detail->province }}
                      </td>
                      <td class="align-middle">
                        {{ $detail->nim_nis }}
                      </td>
                      <td class="align-middle">
                        <a href="{{ route('checkout-remove', $detail->id) }}">
                          <img src="{{ url('frontend/images/ic_remove.png') }}" alt="Button Remove">
                        </a>
                      </td>
                    </tr>

                    @empty
                      <tr>
                        <td colspan="6" class="text-center">No Visitor</td>
                      </tr>

                    @endforelse

                  </tbody>
                </table>
              </div>
              <div class="member-mt-3">
                <h2>Add Member</h2>
                <form class="form-inline" method="post" action="{{ route('checkout-create', $item->id) }}">
                  @csrf
                  <label for="username" class="sr-only">Nama</label>
                    <input type="text" class="form-control mb-2 mr-sm-2" id="username" placeholder="Username"
                    name="username"/>

                    <label for="date_of_birth" class="sr-only">Tanggal Lahir</label>
                    <div class="input-group mb-2 mr-sm-2">
                      <input type="text" class="form-control datepicker" id="date_of_birth" placeholder="Tanggal Lahir" name="date_of_birth" required>
                    </div>

                  <label for="institute" class="sr-only">Asal Instansi</label>
                    <input type="text" class="form-control mb-2 mr-sm-2" id="institute" placeholder="Asal Instansi"
                    name="institute" required/>

                  <label for="province" class="sr-only">Asal Provinsi</label>
                  <select name="province" id="province" class="custom-select mb-2 mr-sm-2" required>
                    <option value="" selected> Asal Provinsi</option>
                    <option value="Aceh">Aceh</option>
                    <option value="Sumatera Utara">Sumatera Utara</option>
                    <option value="Sumatera Barat">Sumatera Barat</option>
                    <option value="Riau">Riau</option>
                    <option value="Kepulauan Riau">Kepulauan Riau</option>
                    <option value="Jambi">Jambi</option>
                    <option value="Sumatera Selatan">Sumatera Selatan</option>
                    <option value="Kepulauan Bangka Belitung">Kepulauan Bangka Belitung</option>
                    <option value="Bengkulu">Bengkulu</option>
                    <option value="Lampung">Lampung</option>
                    <option value="DKI Jakarta">DKI Jakarta</option>
                    <option value="Banten">Banten</option>
                    <option value="Jawa Barat">Jawa Barat</option>
                    <option value="Jawa Tengah">Jawa Tengah</option>
                    <option value="DI Yogyakarta">DI Yogyakarta</option>
                    <option value="Jawa Timur">Jawa Timur</option>
                    <option value="Bali">Bali</option>
                    <option value="Nusa Tenggara Barat">Nusa Tenggara Barat</option>
                    <option value="Nusa Tenggara Timur">Nusa Tenggara Timur</option>
                    <option value="Kalimantan Barat">Kalimantan Barat</option>
                    <option value="Kalimantan Tengah">Kalimantan Tengah</option>
                    <option value="Kalimantan Selatan">Kalimantan Selatan</option>
                    <option value="Kalimantan Timur">Kalimantan Timur</option>
                    <option value="Kalimantan Utara">Kalimantan Utara</option>
                    <option value="Sulawesi Utara">Sulawesi Utara</option>
                    <option value="Gorontalo">Gorontalo</option>
                    <option value="Sulawesi Tengah">Sulawesi Tengah</option>
                    <option value="Sulawesi Barat">Sulawesi Barat</option>
                    <option value="Sulawesi Selatan">Sulawesi Selatan</option>
                    <option value="Sulawesi Tenggara">Sulawesi Tenggara</option>
                    <option value="Maluku">Maluku</option>
                    <option value="Maluku Utara">Maluku Utara</option>
                    <option value="Papua Barat">Papua Barat</option>
                    <option value="Papua">Papua</option>
                  </select>

                  <label for="nim_nis" class="sr-only">NIM/NIS</label>
                    <input type="text" class="form-control mb-2 mr-sm-2" id="nim_nis" placeholder="NIM/NIS" style="width:150px"
                      name="nim_nis" required/>

                  <button type="submit" class="btn btn-add-now mb-2 px-4">Add Now</button>

                </form>
                <h3 class="mt-2 mb-0">Note</h3>
                <p class="disclaimer mb-0">
                  You are only able to invite member that has registered in
                  Travelucard Website.
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="card card-details card-right">

              <h2>Checkout Information</h2>
              <table class="trip-informations">
                <tr>
                  <th width="50%">Jumlah Partisipan</th>
                  <td width="50%" class="text-right">{{ $item->details->count() }} orang</td>
                </tr>
                <tr>
                  <th width="50%">Biaya Tour</th>
                  <td width="50%" class="text-right">Rp{{ number_format($item->faskes_category->price) }}</td>
                </tr>
                <tr>
                  <th width="50%">Sub Total</th>
                  <td width="50%" class="text-right">Rp{{ number_format($item->transaction_total) }}</td>
                </tr>
                <tr>
                  <th width="50%">Total (+Kode Unik)</th>
                  <td width="50%" class="text-right text-total"><span class="text-blue">Rp{{ number_format($item->transaction_total + mt_rand(0,999),2,',','.') }}</span>
                  </td>
                </tr>
              </table>
              <hr />
              <h2>Payment Instruction</h2>
              <p class="payment-instruction">
                You will be redirected to a new tab to complete your payment
              </p>
              <img src="{{ url ('frontend/images/indo.png') }}" class="w-50 h-50">
              <img src="{{ url ('frontend/images/ShopeePay.png') }}" class="w-50 h-50">

            </div>
            <div class="join-container">
              <a href="{{ route('checkout-success', $item->id) }}" class="btn btn-block btn-join-now mt-3 py-2">Lanjut Bayar</a>
            </div>
            <div class="text-center mt-3">
              <a href="{{ route('detail', $item->faskes_category->slug) }}" class="text-muted">Batal Bayar</a>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

@endsection

@push('prepend-style')
<link rel="stylesheet" href="{{ url ('frontend/libraries/gijgo/css/gijgo.min.css') }}">
@endpush

@push('addon-script')
<script src="{{ url ('frontend/libraries/gijgo/js/gijgo.min.js') }}"></script>
  <script>
    $(document).ready(function () {
      $('.datepicker').datepicker({
        format: 'yyyy-mm-dd',
        uiLibrary: 'bootstrap4',
        icons: {
          rightIcon: '<img src="{{ url('frontend/images/Icon/ic_doe.png') }}"/>'
        }
      })
    });
  </script>


@endpush
