<?php

namespace App\Http\Controllers\Lapor\Admin;

use App\Http\Controllers\Controller;
use App\Models\Masyarakat;
use App\Models\Pengaduan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class MasyarakatController extends Controller
{
    public function index()
    {
        $masyarakat = Masyarakat::all();

        return view('lapor.admin.Masyarakat.index', ['masyarakat' => $masyarakat]);
    }

    public function show($nik)
    {
        $masyarakat = Masyarakat::where('nik', $nik)->first();

        return view('lapor.admin.Masyarakat.show', ['masyarakat' => $masyarakat]);
    }


    public function edit($nik)
    {
        $peserta = Masyarakat::where('nik', $nik)->first();
        return view('lapor.admin.Masyarakat.edit', ['peserta' => $peserta]);
    }

    public function update(Request $request, $nik)
    {
        $data = $request->all();

        $peserta = Masyarakat::find($nik);

        $peserta->update([
            'noka' => $data['noka'],
            'nama' => $data['nama'],
            'email' => $data['email'],
            'username' => $data['username'],
            'password' => Hash::make($data['password']),
            'telp' => $data['telp'],
        ]);
        notify()->success('Berhasil Update Masyarakat !');
        return redirect()->route('masyarakat.index');
    }


    public function destroy(Masyarakat $masyarakat)
    {
        $pengaduan = Pengaduan::where('nik', $masyarakat->nik)->first();

        if (!$pengaduan) {
            $masyarakat->delete();

            notify()->success('Berhasil Menghapus Peserta !');
            return redirect()->route('masyarakat.index');
        } else {
            return redirect()->back()->with(['notif' => 'Can\'t delete. Masyarakat has a relationship!']);
        }
    }

}
