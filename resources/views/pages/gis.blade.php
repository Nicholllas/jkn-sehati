@extends('layouts.gis')
@section('title','Peta Persebaran FKTP')

@section('content')
<section class="section-map">
    <p id="demo"></p>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="form-grup">
                <label for="latitude">Latitude</label>
                <input type="text" class="form-control" id="latitude" name="latitude">
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-grup">
                <label for="longitude">Longitude</label>
                <input type="text" class="form-control" id="longitude" name="longitude">
            </div>
        </div>
        <div class="col-md-4">
            <button class="dariSini btn btn-info"><i class="fa fa-map-marker"></i>   Temukan Posisi Awal</button>
        </div>
    </div>
        <div id="map"></div>
</div>
</section>



@endsection
