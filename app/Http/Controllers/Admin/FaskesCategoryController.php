<?php

namespace App\Http\Controllers\Admin;

use App\Exports\FaskesExport;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\FaskesCategoryRequest;
use App\Http\Requests\Admin\FaskesCategoryUpdateRequest;
use App\Http\Requests\Admin\FaskesCategoryUpdateRequest as AdminFaskesCategoryUpdateRequest;
use App\Imports\FaskesImport;
use App\Models\FaskesCategory;
use App\Notifications\FaskesCategoryStoredNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use willvincent\Rateable\Rating;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;

class FaskesCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $items = FaskesCategory::sortable()->get();
        return view('pages.admin.faskes-category.index', [
            'items' => $items
        ]);
    }


    public function cetak_excel()
    {
        return Excel::download(new FaskesExport, 'daftar-fktp-jkn-sehati.xlsx');
        notify()->success('Berhasil Cetak Excel');
    }

    public function import_excel()
    {
        Excel::import(new FaskesImport,request()->file('file'));
        return redirect()->back()->with(['pesan' => 'Berhasil Import Data!']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return view('pages.admin.faskes-category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(FaskesCategoryRequest $request)
    {
        $data = $request->all();
        $data['slug'] = Str::slug($request->title);

        FaskesCategory::create($data);
        notify()->success('Berhasil Simpan Data FKTP Baru!');
        return redirect()->route('faskes-category.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = FaskesCategory::findOrFail($id);
        return view('pages.admin.faskes-category.edit', [
            'item' => $item
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AdminFaskesCategoryUpdateRequest $request, $id)
    {
        $data = $request->all();
        $data['slug'] = Str::slug($request->title);

        $item = FaskesCategory::findOrFail($id);
        notify()->success('Berhasil Update Data FKTP '.$request->title.' !');
        $item->update($data);
        return redirect()->route('faskes-category.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $item  = FaskesCategory::findOrFail($id);
        $item->delete();
        notify()->success('Berhasil Menghapus Data FKTP!');
        return redirect()->route('faskes-category.index', ['page'=>$request->page]);
    }

}
