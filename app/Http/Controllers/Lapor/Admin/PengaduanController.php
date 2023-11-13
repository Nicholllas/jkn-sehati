<?php

namespace App\Http\Controllers\Lapor\Admin;

use App\Http\Controllers\Controller;
use App\Models\FaskesCategory;
use App\Models\Pengaduan;
use App\Models\Tanggapan;
use Illuminate\Http\Request;

class PengaduanController extends Controller
{
    public function index()
    {
        $pengaduan = Pengaduan::orderBy('tgl_pengaduan', 'desc')->get();
        return view('lapor.admin.pengaduan.index', ['pengaduan' => $pengaduan]);
    }

    public function pendingIndex()
    {
        $pending = Pengaduan::orderBy('tgl_pengaduan', 'desc')->where('status', 'like', '%0%')->get();
        return view('lapor.admin.pengaduan.indexPending', ['pending' => $pending]);
    }

    public function prosesIndex()
    {
        $proses = Pengaduan::orderBy('tgl_pengaduan', 'desc')->where('status', 'like', '%proses%')->get();
        return view('lapor.admin.pengaduan.indexProses', ['proses' => $proses]);
    }

    public function selesaiIndex()
    {
        $selesai = Pengaduan::orderBy('tgl_pengaduan', 'desc')->where('status', 'like', '%selesai%')->get();
        return view('lapor.admin.pengaduan.indexSelesai', ['selesai' => $selesai]);
    }

    public function show($id_pengaduan)
    {
        $pengaduan = Pengaduan::with(['faskes_category'])->where('id_pengaduan', $id_pengaduan)->first();
        $tanggapan = Tanggapan::where('id_pengaduan', $id_pengaduan)->first();
        return view('lapor.admin.pengaduan.show', ['pengaduan' => $pengaduan, 'tanggapan' => $tanggapan,]);
    }
}
