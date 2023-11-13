<?php

namespace App\Http\Controllers\Lapor\Admin;

use App\Http\Controllers\Controller;
use App\Models\Masyarakat;
use App\Models\Pengaduan;
use App\Models\Petugas;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(Request $request)
    {
        $petugas = Petugas::all()->count();

        $masyarakat = Masyarakat::all()->count();

        $pending = Pengaduan::where('status', '0')->get()->count();

        $proses = Pengaduan::where('status', 'proses')->get()->count();

        $selesai = Pengaduan::where('status', 'selesai')->get()->count();

        return view('lapor.admin.dashboard.index', ['petugas' => $petugas, 'masyarakat' => $masyarakat, 'pending' =>$pending, 'proses' => $proses, 'selesai' => $selesai]);
    }
}
