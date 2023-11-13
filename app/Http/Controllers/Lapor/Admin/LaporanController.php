<?php

namespace App\Http\Controllers\Lapor\Admin;

use App\Http\Controllers\Controller;
use App\Models\Pengaduan;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;

class LaporanController extends Controller
{
    public function index()
    {
        return view('lapor.admin.Laporan.index');
    }

    public function getLaporan(Request $request)
    {
        $from = $request->from . ' ' . '00:00:00';
        $to = $request->to . ' ' . '23:59:59';
        $status = $request->status;
        $query = Pengaduan::whereBetween('tgl_pengaduan', [$from, $to]);

        if ($status === '0') {
            $query->where('status', '0');
        } elseif ($status === 'proses') {
            $query->where('status', 'Proses');
        } elseif ($status === 'selesai') {
            $query->where('status', 'Selesai');
        }

        $pengaduan = $query->get();

        return view('lapor.admin.Laporan.index', [
            'pengaduan' => $pengaduan,
            'from' => $from,
            'to' => $to,
            'status' => $status
        ]);
    }


    public function cetakLaporan($from, $to, $status)
    {
        $pengaduan = Pengaduan::whereBetween('tgl_pengaduan', [$from, $to])->where('status', $status)->get();

        $pdf = Pdf::loadView('lapor.admin.Laporan.cetak', ['pengaduan' => $pengaduan]);
        return $pdf->download('laporan-pengaduan.pdf');
    }
}
