<?php

namespace App\Http\Controllers\Lapor\Admin;

use App\Http\Controllers\Controller;
use App\Models\Petugas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function formLogin()
    {
        return view('lapor.admin.login');
    }

    public function login(Request $request)
{
    $username = Petugas::where('username', $request->username)->first();

    if (!$username){
        return redirect()->back()->with(['pesan'=> 'Username tidak terdaftar!']);
    }

    $passwordMatch = Hash::check($request->password, $username->password);

    if (!$passwordMatch) {
        return redirect()->back()->with(['pesan' => 'Password tidak sesuai']);
    }

    if (Auth::guard('admin')->attempt(['username' => $request->username, 'password' => $request->password])) {
        return redirect()->route('dashboard.index');
    } else {
        return redirect()->back()->with(['pesan' => 'Akun tidak terdaftar!']);
    }
}


    public function logout()
    {
        Auth::guard('admin')->logout();
        notify()->success('Berhasil Logout dari Sistem');
        return redirect()->route('admin.formLogin');
    }
}
