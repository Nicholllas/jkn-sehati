@extends('layouts.admin')

@section('title','Tambah Faskes Baru')

@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Tambah Faskes</h1>
    </div>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <div class="card shadow">
        <div class="card-body">
            <form action="{{ route('faskes-category.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="kode_fktp">Kode Faskes</label>
                <input type="text" class="form-control" name="kode_fktp" placeholder="Masukan Kode FKTP" value="{{ old('kode_fktp') }}">
            </div>
            <div class="form-group">
                <label for="jenis_faskes">Jenis Faskes</label>
                <select id="jenis_faskes"  class="form-control" name="jenis_faskes" value="{{ old('jenis_faskes') }}" required autocomplete="jenis_faskes" autofocus>
                                    <option value="" selected>Pilih Jenis Faskes</option>
                                    <option value="Puskesmas">Puskesmas</option>
                                    <option value="Klinik Swasta">Klinik Swasta</option>
                                    <option value="Klinik Polri">Klinik Polri</option>
                                    <option value="Klinik TNI">Klinik TNI</option>
                                    <option value="Dokter Umum">DPP</option>
                                    <option value="Dokter Gigi">Dokter Gigi</option>
                </select>
            </div>
            <div class="form-group">
                <label for="title">Nama Faskes</label>
                <input type="text" class="form-control" name="title" placeholder="Masukan Nama Faskes" value="{{ old('title') }}">
            </div>
            <div class="form-group">
                <label for="service_hour">Jam Pelayanan</label>
                <input type="text" class="form-control" name="service_hour" placeholder="Masukan Jam Pelayanan" value="{{ old('service_hour') }}">
            </div>
            <div class="form-group">
                <label for="about">Deskripsi Faskes</label>
                <textarea name="about" placeholder="Masukan Deskripsi FKTP" rows="10" class="d-block w-100 form-control">{{ old('about') }}</textarea>
            </div>
            <div class="form-group">
                <label for="city">Kota</label>
                <select id="city"  class="form-control" name="city" value="{{ old('city') }}" required autocomplete="city" autofocus>
                                    <option value="" selected>Pilih Lokasi Kota/Kabupaten Faskes</option>
                                    <option value="Kota Denpasar">Kota Denpasar</option>
                                    <option value="Kabupaten Badung">Kabupaten Badung</option>
                                    <option value="Kabupaten Tabanan">Kabupaten Tabanan</option>
                </select>
            </div>
            <div class="form-group">
                <label for="kecamatan">Kecamatan</label>
                <select id="kecamatan"  class="form-control" name="kecamatan" value="{{ old('kecamatan') }}" required autocomplete="kecamatan" autofocus>
                                    <option value="" selected>Pilih Lokasi Kecamatan Faskes</option>

                                    {{-- Start Of List Kecamatan In Denpasar --}}
                                    <option value="Denpasar Barat">Denpasar Barat</option>
                                    <option value="Denpasar Selatan">Denpasar Selatan</option>
                                    <option value="Denpasar Timur">Denpasar Timur</option>
                                    <option value="Denpasar Utara">Denpasar Utara</option>
                                    {{-- End Of List Kecamatan In Denpasar --}}

                                    {{-- Start Of List Kecataman In Tabanan --}}
                                    <option value="Baturiti">Baturiti</option>
                                    <option value="Kediri">Kediri</option>
                                    <option value="Kerambitan">Kerambitan</option>
                                    <option value="Marga">Marga</option>
                                    <option value="Penebel">Penebel</option>
                                    <option value="Pupuan">Pupuan</option>
                                    <option value="Selemadeg">Selemadeg</option>
                                    <option value="Selemadeg Barat">Selemadeg Barat</option>
                                    <option value="Selemadeg Timur">Selemadeg Timur</option>
                                    <option value="Tabanan">Tabanan</option>
                                    {{-- End Of List Kecamatan in Tabanan --}}

                                    {{-- Start Of List Kecamatan in Badung --}}
                                    <option value="Abiansemal">Abiansemal</option>
                                    <option value="Kuta">Kuta</option>
                                    <option value="Kuta Selatan">Kuta Selatan</option>
                                    <option value="Kuta Utara">Kuta Utara</option>
                                    <option value="Mengwi">Mengwi</option>
                                    <option value="Petang">Petang</option>
                                    {{-- End of List Kecamatan in Badung --}}
                </select>
            </div>
            {{-- Start Of Desa Form Input --}}
            <div class="form-group">
                <label for="desa">Desa</label>
                <select id="desa"  class="form-control" name="desa" value="{{ old('desa') }}" required autocomplete="desa" autofocus>
                                    <option value="" selected>Pilih Lokasi Desa/Kelurahan Faskes</option>
                    {{-- Start Of List Desa In Denpasar --}}

                                    {{-- Start Of List Desa In Denpasar Barat --}}
                                    <option value="Dauh Puri Kangin">Dauh Puri Kangin</option>
                                    <option value="Dauh Puri Kauh">Dauh Puri Kauh</option>
                                    <option value="Dauh Puri Klod">Dauh Puri Klod</option>
                                    <option value="Padang Sambian Kaja">Padang Sambian Kaja</option>
                                    <option value="Padang Sambian Klod">Padang Sambian Klod</option>
                                    <option value="Pemecutan Klod">Pemecutan Klod</option>
                                    <option value="Tegal Harum">Tegal Harum</option>
                                    <option value="Tegal Kerta">Tegal Kerta</option>
                                    <option value="Dauh Puri">Dauh Puri</option>
                                    <option value="Padang Sambian">Padang Sambian</option>
                                    <option value="Pemecutan">Pemecutan</option>
                                    {{-- End Of List Desa In Denpasar Barat --}}

                                    {{-- Start Of List Desa In Denpasar Selatan --}}
                                    <option value="Pemogan">Pemogan</option>
                                    <option value="Sanur Kaja">Sanur Kaja</option>
                                    <option value="Sanur Kauh">Sanur Kauh</option>
                                    <option value="Sidakarya">Sidakarya</option>
                                    <option value="Panjer">Panjer</option>
                                    <option value="Pedungan">Pedungan</option>
                                    <option value="Renon">Renon</option>
                                    <option value="Sanur">Sanur</option>
                                    <option value="Serangan">Serangan</option>
                                    <option value="Sesetan">Sesetan</option>
                                    {{-- End Of List Desa In Denpasar Selatan --}}

                                     {{-- Start Of List Desa In Denpasar Timur --}}
                                    <option value="Dangin Puri Klod">Dangin Puri Klod</option>
                                    <option value="Kesiman Kertalangu">Kesiman Kertalangu</option>
                                    <option value="Kesiman Petilan">Kesiman Petilan</option>
                                    <option value="Penatih Dangin Puri">Penatih Dangin Puri</option>
                                    <option value="Sumerta Kaja">Sumerta Kaja</option>
                                    <option value="Sumerta Kauh">Sumerta Kauh</option>
                                    <option value="Sumerta Klod/Kelod">Sumerta Klod/Kelod</option>
                                    <option value="Dangin Puri">Dangin Puri</option>
                                    <option value="Kesiman">Kesiman</option>
                                    <option value="Penatih">Penatih</option>
                                    <option value="Sumerta">Sumerta</option>
                                    {{-- End Of List Desa In Denpasar Timur --}}

                                     {{-- Start Of List Desa In Denpasar Utara --}}
                                    <option value="Dangin Puri Kaja">Dangin Puri Kaja</option>
                                    <option value="Dangin Puri Kangin">Dangin Puri Kangin</option>
                                    <option value="Dangin Puri Kauh">Dangin Puri Kauh</option>
                                    <option value="Dauh Puri Kaja">Dauh Puri Kaja</option>
                                    <option value="Peguyangan Kaja">Peguyangan Kaja</option>
                                    <option value="Peguyangan Kangin">Peguyangan Kangin</option>
                                    <option value="Pemecutan Kaja">Pemecutan Kaja</option>
                                    <option value="Ubung Kaja">Ubung Kaja</option>
                                    <option value="Peguyangan">Peguyangan</option>
                                    <option value="Tonja">Tonja</option>
                                    <option value="Ubung">Ubung</option>
                                    {{-- End Of List Desa In Denpasar Utara --}}

                    {{-- End Of List Desa In Denpasar --}}

                    {{-- Start Of List Desa In Badung --}}

                                    {{-- Start Of List Desa In Abiansemal --}}
                                    <option value="Abiansemal">Abiansemal</option>
                                    <option value="Angantaka">Angantaka</option>
                                    <option value="Ayunan">Ayunan</option>
                                    <option value="Blahkiuh">Blahkiuh</option>
                                    <option value="Bongkasa">Bongkasa</option>
                                    <option value="Bongkasa Pertiwi">Bongkasa Pertiwi</option>
                                    <option value="Darmasaba">Darmasaba</option>
                                    <option value="Dauh Yeh Cani">Dauh Yeh Cani</option>
                                    <option value="Jagapati">Jagapati</option>
                                    <option value="Mambal">Mambal</option>
                                    <option value="Mekar Bhuana">Mekar Bhuana</option>
                                    <option value="Punggul">Punggul</option>
                                    <option value="Sangeh">Sangeh</option>
                                    <option value="Sedang">Sedang</option>
                                    <option value="Selat">Selat</option>
                                    <option value="Sibang Gede">Sibang Gede</option>
                                    <option value="Sibang Kaja">Sibang Kaja</option>
                                    <option value="Taman">Taman</option>
                                    {{-- End Of List Desa In Abiansemal --}}

                                    {{-- Start Of List Desa In Kuta --}}
                                    <option value="Kedonganan">Kedonganan</option>
                                    <option value="Tuban">Tuban</option>
                                    <option value="Kuta">Kuta</option>
                                    <option value="Legian">Legian</option>
                                    <option value="Seminyak">Seminyak</option>
                                    {{-- End Of List Desa In Kuta --}}

                                    {{-- Start Of List Desa In Kuta Selatan --}}
                                    <option value="Pecatu">Pecatu</option>
                                    <option value="Ungasan">Ungasan</option>
                                    <option value="Kutuh">Kutuh</option>
                                    <option value="Benoa">Benoa</option>
                                    <option value="Tanjung Benoa">Tanjung Benoa</option>
                                    <option value="Jimbaran">Jimbaran</option>
                                    {{-- End Of List Desa In Kuta Selatan --}}

                                    {{-- Start Of List Desa In Kuta Utara --}}
                                    <option value="Canggu">Canggu</option>
                                    <option value="Dalung">Dalung</option>
                                    <option value="Tibubeneng">Tibubeneng</option>
                                    <option value="Kerobokan">Kerobokan</option>
                                    <option value="Kerobokan Kelod">Kerobokan Kelod</option>
                                    <option value="Kerobokan Kaja">Kerobokan Kaja</option>
                                    {{-- End Of List Desa In Kuta Utara --}}

                                    {{-- Start Of List Desa In Mengwi --}}
                                    <option value="Baha">Baha</option>
                                    <option value="Buduk">Buduk</option>
                                    <option value="Cemagi">Cemagi</option>
                                    <option value="Gulingan">Gulingan</option>
                                    <option value="Kekeran">Kekeran</option>
                                    <option value="Kuwum">Kuwum</option>
                                    <option value="Mengwi">Mengwi</option>
                                    <option value="Mengwitani">Mengwitani</option>
                                    <option value="Munggu">Munggu</option>
                                    <option value="Penarungan">Penarungan</option>
                                    <option value="Pererenan">Pererenan</option>
                                    <option value="Sembung">Sembung</option>
                                    <option value="Sobangan">Sobangan</option>
                                    <option value="Tumbak Bayuh">Tumbak Bayuh</option>
                                    <option value="Werdi Bhuwana">Werdi Bhuwana</option>
                                    <option value="Abianbase">Abianbase</option>
                                    <option value="Kapal">Kapal</option>
                                    <option value="Lukluk">Lukluk</option>
                                    <option value="Sading">Sading</option>
                                    <option value="Sempidi">Sempidi</option>
                                    {{-- End of List Desa In Mengwi --}}

                                    {{-- Start of List Desa in Petang --}}
                                    <option value="Belok">Belok</option>
                                    <option value="Carangsari">Carangsari</option>
                                    <option value="Getasan">Getasan</option>
                                    <option value="Pangsan">Pangsan</option>
                                    <option value="Pelaga">Pelaga</option>
                                    <option value="Petang">Petang</option>
                                    <option value="Sulangai">Sulangai</option>
                                    {{-- End of list desa in petang --}}
                    {{-- End Of List Desa In Badung --}}


                    {{-- Start Of List Desa In Tabanan --}}

                                    {{-- Start of List Desa in Baturiti --}}
                                    <option value="Angseri">Angseri</option>
                                    <option value="Antapan">Antapan</option>
                                    <option value="Apuan">Apuan</option>
                                    <option value="Bangli">Bangli</option>
                                    <option value="Batunya">Batunya</option>
                                    <option value="Baturiti">Baturiti</option>
                                    <option value="Candikuning">Candikuning</option>
                                    <option value="Luwus">Luwus</option>
                                    <option value="Mekarsari">Mekarsari</option>
                                    <option value="Perean">Perean</option>
                                    <option value="Perean Kangin">Perean Kangin</option>
                                    <option value="Perean Tengah">Perean Tengah</option>
                                    {{-- End of list desa in baturiti --}}

                                    {{-- start of list desa in kediri --}}
                                    <option value="Abian Tuwung">Abian Tuwung</option>
                                    <option value="Banjar Anyar">Banjar Anyar</option>
                                    <option value="Belalang">Belalang</option>
                                    <option value="Bengkel">Bengkel</option>
                                    <option value="Beraban">Beraban</option>
                                    <option value="Buwit">Buwit</option>
                                    <option value="Cepaka">Cepaka</option>
                                    <option value="Kaba-kaba">Kaba-kaba</option>
                                    <option value="Kediri">Kediri</option>
                                    <option value="Nyambu">Nyambu</option>
                                    <option value="Nyitdah">Nyitdah</option>
                                    <option value="Pandak Bandung">Pandak Bandung</option>
                                    <option value="Pandak Gede">Pandak Gede</option>
                                    <option value="Pangkung Tibah">Pangkung Tibah</option>
                                    <option value="Pejaten">Pejaten</option>
                                    {{-- end of list desa in kediri --}}

                                    {{-- start of list desa in  kerambitan --}}
                                    <option value="Batuaji">Batuaji</option>
                                    <option value="Baturiti">Baturiti</option>
                                    <option value="Belumbang">Belumbang</option>
                                    <option value="Kelating">Kelating</option>
                                    <option value="Kerambitan">Kerambitan</option>
                                    <option value="Kesiut">Kesiut</option>
                                    <option value="Kukuh">Kukuh</option>
                                    <option value="Meliling">Meliling</option>
                                    <option value="Pangkung Karung">Pangkung Karung</option>
                                    <option value="Penarukan">Penarukan</option>
                                    <option value="Samsam">Samsam</option>
                                    <option value="Sambung Gede">Sambung Gede</option>
                                    <option value="Tibubiu">Tibubiu</option>
                                    <option value="Timpag">Timpag</option>
                                    <option value="Tista">Tista</option>
                                    {{-- end of list desa in kerambitan --}}

                                    {{-- start of list desa in marga --}}
                                    <option value="Baru">Baru</option>
                                    <option value="Batannyuh">Batannyuh</option>
                                    <option value="Beringkit">Beringkit</option>
                                    <option value="Cau Belayu">Cau Belayu</option>
                                    <option value="Geluntung">Geluntung</option>
                                    <option value="Kukuh">Kukuh</option>
                                    <option value="Kuwum">Kuwum</option>
                                    <option value="Marga">Marga</option>
                                    <option value="Marga Dajan Puri">Marga Dajan Puri</option>
                                    <option value="Marga Dauh Puri">Marga Dauh Puri</option>
                                    <option value="Payangan">Payangan</option>
                                    <option value="Peken">Peken</option>
                                    <option value="Petiga">Petiga</option>
                                    <option value="Selanbawak">Selanbawak</option>
                                    <option value="Tegaljadi">Tegaljadi</option>
                                    <option value="Tua">Tua</option>
                                    {{-- end of list desa in marga --}}

                                    {{-- start of list desa in penebel --}}
                                    <option value="Babahan">Babahan</option>
                                    <option value="Biaung">Biaung</option>
                                    <option value="Buruan">Buruan</option>
                                    <option value="Jatiluwih">Jatiluwih</option>
                                    <option value="Jegu">Jegu</option>
                                    <option value="Mangesta">Mangesta</option>
                                    <option value="Penatahan">Penatahan</option>
                                    <option value="Penebel">Penebel</option>
                                    <option value="Pesagi">Pesagi</option>
                                    <option value="Pitra">Pitra</option>
                                    <option value="Rejasa">Rejasa</option>
                                    <option value="Rianggede">Rianggede</option>
                                    <option value="Sangketan">Sangketan</option>
                                    <option value="Senganan">Senganan</option>
                                    <option value="Tajen">Tajen</option>
                                    <option value="Tegallinggah">Tengallinggah</option>
                                    <option value="Tengkudak">Tengkudak</option>
                                    <option value="Wongaya Gede">Wongaya Gede</option>
                                    {{-- end of list desa in penebel --}}

                                    {{-- start of list desa in pupuan --}}
                                    <option value="Bantiran">Bantiran</option>
                                    <option value="Batungsel">Batungsel</option>
                                    <option value="Belatungan">Belatungan</option>
                                    <option value="Belimbing">Belimbing</option>
                                    <option value="Jelijih Punggang">Jelijih Punggang</option>
                                    <option value="Karya Sari">Karya Sari</option>
                                    <option value="Kebon Padangan">Kebon Padangan</option>
                                    <option value="Munduk Temu">Munduk Temu</option>
                                    <option value="Padangan">Padangan</option>
                                    <option value="Pajahan">Pajahan</option>
                                    <option value="Pujungan">Pujungan</option>
                                    <option value="Pupuan">Pupuan</option>
                                    <option value="Sai">Sai</option>
                                    <option value="Sanda">Sanda</option>
                                    {{-- end of list desa in pupuan --}}

                                    {{-- start of list desa in selemadeg --}}
                                    <option value="Antap">Antap</option>
                                    <option value="Bajera">Bajera</option>
                                    <option value="Bajera Utara">Bajera Utara</option>
                                    <option value="Berembeng">Berembeng</option>
                                    <option value="Manikyang">Manikyang</option>
                                    <option value="Pupuan Sawah">Pupuan Sawah</option>
                                    <option value="Selemadeg">Selemadeg</option>
                                    <option value="Serampingan">Serampingan</option>
                                    <option value="Wanagiri">Wanagiri</option>
                                    <option value="Wanagiri Kauh">Wanagiri Kauh</option>
                                    {{-- end of list desa in selemadeg --}}

                                    {{-- start of list desa in selemadeg barat --}}
                                    <option value="Angkah">Angkah</option>
                                    <option value="Antosari">Antosari</option>
                                    <option value="Bengkel Sari">Bengkel Sari</option>
                                    <option value="Lalang Linggah">Lalang Linggah</option>
                                    <option value="Lumbung">Lumbung</option>
                                    <option value="Lumbung Kauh">Lumbung Kauh</option>
                                    <option value="Mundeh">Mundeh</option>
                                    <option value="Mundeh Kangin">Mundeh Kangin</option>
                                    <option value="Mundeh Kauh">Mundeh Kauh</option>
                                    <option value="Selabih">Selabih</option>
                                    <option value="Tiying Gading">Tiying Gading </option>
                                    {{-- end of list desa in selemadeg barat --}}

                                    {{-- start of list desa in selemadeg timur --}}
                                    <option value="Bantas">Bantas</option>
                                    <option value="Beraban">Beraban</option>
                                    <option value="Dalang">Dalang</option>
                                    <option value="Gadungan">Gadungan</option>
                                    <option value="Gadung Sari">Gadung Sari</option>
                                    <option value="Gunung Salak">Gunung Salak</option>
                                    <option value="Mambang">Mambang</option>
                                    <option value="Megati">Megati</option>
                                    <option value="Tangguntiti">Tangguntiti</option>
                                    <option value="Tegal Mengkeb">Tegal Mengkeb</option>
                                    {{-- end of list desa in selemadeg timur --}}

                                    {{-- start of list desa in tabanan --}}
                                    <option value="Bongan">Bongan</option>
                                    <option value="Buahan">Buahan</option>
                                    <option value="Dajan Peken">Dajan Peken</option>
                                    <option value="Dauh Peken">Dauh Peken</option>
                                    <option value="Delod Peken">Delod Peken</option>
                                    <option value="Denbantas">Denbantas</option>
                                    <option value="Gubug">Gubug</option>
                                    <option value="Sesandan">Sesandan</option>
                                    <option value="Subamia">Subamia</option>
                                    <option value="Sudimara">Sudimara</option>
                                    <option value="Tunjuk">Tunjuk</option>
                                    <option value="Wanasari">Wanasari</option>
                                    {{-- end of list desa in kab tabanan --}}
                    {{-- End Of List Desa In Kab Tabanan --}}
                </select>
                {{-- End Of Desa form input --}}
            </div>
            <div class="form-group">
                <label for="address">Alamat Faskes</label>
                <input type="text" class="form-control" name="address" placeholder="Masukan Nama Jalan/Blok Saja" value="{{ old('address') }}">
            </div>
            <div class="form-group">
                <label for="no_telp">No Telepon</label>
                <input type="tel" class="form-control" name="no_telp" placeholder="Masukan No Telepon" value="{{ old('no_telp') }}">
            </div>
            <div class="form-group">
                <label for="perawat">Perawat/Suster</label>
                <input type="number" class="form-control" name="perawat" min="0" max="20" placeholder="Masukan Jumlah Perawat/Suster" value="{{ old('perawat') }}">
            </div>
            <div class="form-group">
                <label for="dokter_umum">Dokter Umum</label>
                <input type="number" class="form-control" name="dokter_umum" min="0" max="20" placeholder="Masukan Jumlah Dokter Umum (Ketik 0 Jika drg)" value="{{ old('dokter_umum') }}">
            </div>
            <div class="form-group">
                <label for="dokter_gigi">Dokter Gigi</label>
                <input type="number" class="form-control" name="dokter_gigi" min="0" max="20" placeholder="Masukan Jumlah Dokter Gigi (Ketik 0 Jika dpp)" value="{{ old('dokter_gigi') }}">
            </div>

            <div class="form-group">
                <label for="rating">Nilai WTA</label>
                <input type="text" class="form-control" name="rating" placeholder="Masukan Jumlah Nilai WTA" value="{{ old('rating') }}">
            </div>

            <div class="form-group">
                <label for="gmap_embed">Link Embed Google</label>
                <input type="text" class="form-control" name="gmap_embed" placeholder="Masukan Link Embed Gmap" value="{{ old('gmap_embed') }}">
            </div>

            <button type="submit" class="btn btn-primary btn-block">
                Simpan
            </button>
            </form>
        </div>
    </div>

    <div class="row">
        <div class="card-body">

        </div>
    </div>

</div>

<script type="text/javascript">

    $("#input-id").rating();

</script>
@endsection
