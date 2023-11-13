<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Location;

class LocationController extends Controller
{
    public function __construct()
    {
        $this->Location = new Location();
    }

    public function gis(Request $request)
    {
        $items = Location::with(['faskes_category']);
        return view('pages.gis', [
            'items' => $items,
        ]);
    }

    public function titik(){
        $locations = $this->Location->titik();
        return json_encode($locations);
     }




}
