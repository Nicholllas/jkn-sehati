<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\FaskesCategory;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(Request $request)
    {
        return view('pages.admin.dashboard', [
            'faskes_category' => FaskesCategory::count(),
            'faskes_dps' => FaskesCategory::where('city','Kota Denpasar')->count(),
            'faskes_badung' => FaskesCategory::where('city','Kabupaten Badung')->count(),
            'faskes_tabanan' => FaskesCategory::where('city','Kabupaten Tabanan')->count(),
            'dpp' => FaskesCategory::where('jenis_faskes','Dokter Umum')->count(),
            'klinik_swasta' => FaskesCategory::where('jenis_faskes','Klinik Swasta')->count(),
            'drg' => FaskesCategory::where('jenis_faskes','Dokter Gigi')->count(),
            'klinik_polri' => FaskesCategory::where('jenis_faskes','Klinik Polri')->count(),
            'klinik_tni' => FaskesCategory::where('jenis_faskes','Klinik TNI')->count(),


        ]);
    }
}
