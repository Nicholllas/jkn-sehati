<?php

namespace App\Http\Controllers\Lapor\User;

use App\Http\Controllers\Controller;
use App\Models\FaskesCategory;
use App\Models\Masyarakat;
use App\Models\Pengaduan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function index()
    {
        $pengaduan = Pengaduan::all()->count();
        $faskes_categories = FaskesCategory::all();
        return view('lapor.user.landing',['faskes_categories' => $faskes_categories],['pengaduan' => $pengaduan]);
    }

    public function login(Request $request)
    {
        $username = Masyarakat::where('username', $request->username)->first();

        if (!$username) {
            return redirect()->back()->with(['pesan' => 'Username tidak terdaftar']);
        }

        $password = Hash::check($request->password, $username->password);

        if (!$password) {
            return redirect()->back()->with(['pesan' => 'Password tidak sesuai']);
        }

        if (Auth::guard('masyarakat')->attempt(['username' => $request->username, 'password' => $request->password])) {
            return redirect()->back();
        } else {
            return redirect()->back()->with(['pesan' => 'Akun tidak terdaftar!']);
        }
    }

    public function formRegister()
    {
        return view('lapor.user.register');
    }

    public function register(Request $request)
    {
        $data = $request->all();

        $validate = Validator::make($data, [
            'nik' => ['required'],
            'noka' => ['required'],
            'nama' => ['required'],
            'email' => ['required'],
            'username' => ['required'],
            'password' => ['required'],
            'telp' => ['required'],
        ]);

        if ($validate->fails()) {
            return redirect()->back()->with(['pesan' => $validate->errors()]);
        }

        $username = Masyarakat::where('username', $request->username)->first();
        $email = Masyarakat::where('email', $request->email)->first();

        if ($username) {
            return redirect()->back()->with(['pesan' => 'Username sudah terdaftar']);
        }
        if ($email) {
            return redirect()->back()->with(['pesan' => 'Email sudah terdaftar']);
        }

        Masyarakat::create([
            'nik' => $data['nik'],
            'noka' => $data['noka'],
            'nama' => $data['nama'],
            'username' => $data['username'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'telp' => $data['telp'],
        ]);
        notify()->success('Pendaftaran Berhasil Silakan Login Menggunakan Username dan Password!');
        return redirect()->route('lapor.index');
    }

    public function logout()
    {
        Auth::guard('masyarakat')->logout();
        notify()->success('Berhasil Logout dari Sistem');
        return redirect()->route('lapor.index');
    }

    public function storePengaduan(Request $request)
    {
        if (!Auth::guard('masyarakat')->user()) {
            return redirect()->back()->with(['pesan' => 'Login dibutuhkan!'])->withInput();
        }
        $data = $request->all();

        $validate = Validator::make($data, [
            'judul_laporan' => ['required'],
            'isi_laporan' => ['required'],
            'tgl_kejadian' => ['required'],
            'faskes_categories_id' => ['required'],
            'foto' => 'nullable|image|max:5120', // Maximum 5 MB
        ]);

        if ($validate->fails()) {
            return redirect()->back()->withInput()->withErrors($validate);
        }

        if ($request->file('foto')) {
            $data['foto'] = $request->file('foto')->store('assets/pengaduan', 'public');
        }

        date_default_timezone_set('Asia/Bangkok');

        $pengaduan = Pengaduan::create([
            'tgl_pengaduan' => date('Y-m-d h:i:s'),
            'nik' => Auth::guard('masyarakat')->user()->nik,
            'judul_laporan' => $data['judul_laporan'],
            'faskes_categories_id' => $data['faskes_categories_id'],
            'tgl_kejadian' => $data['tgl_kejadian'],
            'isi_laporan' => $data['isi_laporan'],
            'foto' => $data['foto'] ?? '',
            'status' => '0',
        ]);

        if ($pengaduan) {
            return redirect()->route('lapor.laporan', 'me')->with(['pengaduan' => 'Berhasil terkirim!', 'type' => 'success']);
        } else {
            return redirect()->back()->with(['pengaduan' => 'Gagal terkirim!', 'type' => 'danger']);
        }
    }

    public function laporan($siapa = '')
    {
        $faskes_categories = FaskesCategory::all();
        $terverifikasi = Pengaduan::where([['nik', Auth::guard('masyarakat')->user()->nik], ['status', '!=', '0']])->get()->count();
        $proses = Pengaduan::where([['nik', Auth::guard('masyarakat')->user()->nik], ['status', 'proses']])->get()->count();
        $selesai = Pengaduan::where([['nik', Auth::guard('masyarakat')->user()->nik], ['status', 'selesai']])->get()->count();

        $hitung = [$terverifikasi, $proses, $selesai];

        if ($siapa == 'me') {
            $pengaduan = Pengaduan::where('nik', Auth::guard('masyarakat')->user()->nik)->orderBy('tgl_pengaduan', 'desc')->get();

            return view('lapor.user.laporan', ['pengaduan' => $pengaduan, 'hitung' => $hitung, 'siapa' => $siapa],['faskes_categories' => $faskes_categories]);
        } else {
            $pengaduan = Pengaduan::where([['nik', '!=', Auth::guard('masyarakat')->user()->nik], ['status', '!=', '0']])->orderBy('tgl_pengaduan', 'desc')->get();

            return view('lapor.user.laporan', ['pengaduan' => $pengaduan, 'hitung' => $hitung, 'siapa' => $siapa],['faskes_categories' => $faskes_categories]);
        }
    }

}
