<?php

namespace App\Http\Controllers;
use App\Models\FaskesCategory;
use App\Models\Location;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $items = FaskesCategory::with(['galleries'])
        ->where('city','like', '%Kota Denpasar%')
        ->where('jenis_faskes', 'like','%Swasta%')
        ->orderBy('rating','desc')->take(10)->get();

        $tabanans = FaskesCategory::with(['galleries'])
        ->where('city','like', '%tabanan%')
        ->where('jenis_faskes', 'like','%Swasta%')
        ->orderBy('rating','desc')->take(10)->get();

        $badungs = FaskesCategory::with(['galleries'])
        ->where('city','like', '%badung%')
        ->where('jenis_faskes', 'like','%Swasta%')
        ->orderBy('rating','desc')->take(10)->get();

        return view('pages.home', [

            'faskes_category' => FaskesCategory::count(),
            'faskes_dps' => FaskesCategory::where('city','Kota Denpasar')->count(),
            'faskes_badung' => FaskesCategory::where('city','Kabupaten Badung')->count(),
            'faskes_tabanan' => FaskesCategory::where('city','Kabupaten Tabanan')->count(),

            'items' => $items,
            'tabanans' => $tabanans,
            'badungs' => $badungs
        ]);
    }

    public function tabelfktp(Request $request)
    {
        $cari = $request->query('cari');

        if (!empty($cari)){
            $items = FaskesCategory::sortable()
            ->where('title','like','%'. $cari .'%')
            ->orWhere('city', 'like','%' . $cari. '%')
            ->orWhere('service_hour', 'like','%' . $cari. '%')
            ->orWhere('desa', 'like','%' . $cari. '%')
            ->orWhere('kecamatan', 'like','%' . $cari. '%')
            ->orWhere('jenis_faskes', 'like','%' . $cari. '%')
            ->orWhere('kode_fktp', 'like','%' . $cari. '%')
            ->paginate(10)->fragment('Faskes');
        } else {
            $items = FaskesCategory::sortable()->paginate(10)->onEachSide(2)->fragment('faskes');
        }

        return view('pages.tabelfktp', [
            'items' => $items,
            'cari'  => $cari,
        ]);
    }

    public function faq(Request $request)
    {
        return view('pages.faq');
    }

    public function count(Request $request)
    {
        return view('pages.home', [

            'dpp' => FaskesCategory::where('jenis_faskes','Dokter Umum')->count(),
            'klinik_swasta' => FaskesCategory::where('jenis_faskes','Klinik Swasta')->count(),
            'drg' => FaskesCategory::where('jenis_faskes','Dokter Gigi')->count(),
            'klinik_polri' => FaskesCategory::where('jenis_faskes','Klinik Polri')->count(),
            'klinik_tni' => FaskesCategory::where('jenis_faskes','Klinik TNI')->count(),


        ]);
    }



}
