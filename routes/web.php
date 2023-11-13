<?php

use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Lapor\Admin\AdminController;
use App\Http\Controllers\Lapor\Admin\DashboardController as DashboardLaporController;
use App\Http\Controllers\Lapor\Admin\PetugasController;
use App\Http\Controllers\Lapor\Admin\LaporanController;
use App\Http\Controllers\Lapor\Admin\MasyarakatController;
use App\Http\Controllers\Lapor\Admin\PengaduanController;
use App\Http\Controllers\Lapor\Admin\TanggapanController;
use App\Http\Controllers\Admin\FaskesCategoryController;
use App\Http\Controllers\Admin\GalleryController;
use App\Http\Controllers\Admin\TransactionController;
use App\Http\Controllers\Admin\FaskesLocationController;
use App\Http\Controllers\Lapor\User\UserController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\DetailController;
use App\Http\Controllers\LocationController;
use App\Http\Controllers\HomeController;

use App\Models\Location;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//home
Route::get('/', [HomeController::class, 'index'])->name('home');
//detailfktp
Route::get('/detail/{slug}', [DetailController::class, 'index'])->name('detail');
//FAQfktp
Route::get('/faq', [HomeController::class, 'faq'])->name('faq');
//Tabel Persebaran FKTP
Route::get('/tabelfktp', [HomeController::class, 'tabelfktp'])->name('tabelfktp');
//Peta Persebaran FKTP
Route::get('/gis', [LocationController::class, 'gis'])->name('gis');
Route::get('/titik', [LocationController::class, 'titik'])->name('titik');
Route::get('/titik/lokasi/{id}', [LocationController::class, 'detail_titik'])->name('detail_titik');
//Cetak dan Import Excel
Route::get('/cetak_excel', [FaskesCategoryController::class, 'cetak_excel'])->name('cetak_excel');
Route::post('/import_excel', [FaskesCategoryController::class, 'import_excel'])->name('import_excel');
//Halaman Index Kanal Pengaduan JKN
Route::get('/lapor', [UserController::class, 'index'])->name('lapor.index');

//admin route FKTP
Route::prefix('admin')
    ->middleware(['auth', 'admin'])
    ->group(function () {
        Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
        Route::resource('/faskes-category', FaskesCategoryController::class);
        Route::resource('/gallery', GalleryController::class);
        Route::resource('/transaction', TransactionController::class);
        Route::resource('/faskes-location', FaskesLocationController::class);
    });


//auth route
Auth::routes(['verify' => true]);

//Guest Route
Route::prefix('kanalPengaduan')
    ->middleware(['guest'])
    ->group(function () {
    //Halaman Login,Register Masyarakat
    Route::post('/login/auth', [UserController::class, 'login'])->name('lapor.login');
    Route::get('/registerLapor', [UserController::class, 'formRegister'])->name('lapor.formRegister');
    Route::post('/registerLapor/auth', [UserController::class, 'register'])->name('lapor.register');
    });
//End Of Guest Route

//Masyarakat Route
Route::middleware(['isMasyarakat'])->group(function () {
    Route::post('/store', [UserController::class, 'storePengaduan'])->name('lapor.store');
    Route::get('/laporan/{siapa?}', [UserController::class, 'laporan'])->name('lapor.laporan');
    Route::get('/logoutLapor', [UserController::class, 'logout'])->name('lapor.logout');
});
//End of Masyarakat route

//Lapor Backend Route
Route::prefix('backend')
    ->group(function () {
        Route::get('/', [AdminController::class, 'formLogin'])->name('admin.formLogin');
        Route::post('/login', [AdminController::class, 'login'])->name('admin.login');
        //Admin Route
        Route::middleware(['isAdminLapor'])->group(function () {
        //Petugas
        Route::resource('petugas', PetugasController::class);
        //Masyarakat
        Route::resource('masyarakat', MasyarakatController::class);
        //Laporan
        Route::get('laporan', [LaporanController::class, 'index'])->name('laporan.index');
        Route::post('getLaporan', [LaporanController::class, 'getLaporan'])->name('laporan.getLaporan');
        Route::get('laporan/cetak/{from}/{to}/{status}', [LaporanController::class, 'cetakLaporan'])->name('laporan.cetakLaporan');
        });
        //End of Admin Route

        //Petugas Route
        Route::middleware(['isPetugas'])->group(function () {
            // Dashboard
            Route::get('/dashboard', [DashboardLaporController::class, 'index'])->name('dashboard.index');

            // Tanggapan
            Route::post('tanggapan/createOrUpdate', [TanggapanController::class, 'createOrUpdate'])->name('tanggapan.createOrUpdate');

            // Custom routes for Pengaduan
            Route::get('/pengaduan/pending', [PengaduanController::class, 'pendingIndex'])->name('pengaduan.pending');
            Route::get('/pengaduan/proses', [PengaduanController::class, 'prosesIndex'])->name('pengaduan.proses');
            Route::get('/pengaduan/selesai', [PengaduanController::class, 'selesaiIndex'])->name('pengaduan.selesai');

            // Resourceful routes for Pengaduan
            Route::resource('pengaduan', PengaduanController::class);
            //logout
            Route::get('/logout', [AdminController::class, 'logout'])->name('admin.logout');
        });
        //End of Petugas Route
    });
//End of Lapor Backend Route
