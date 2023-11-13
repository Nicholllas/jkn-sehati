<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\GalleryRequest;
use App\Http\Requests\Admin\FaskesLocationRequest;
use App\Models\FaskesCategory;
use App\Models\Gallery;
use App\Models\Location;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;


class FaskesLocationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $items = Location::with(['faskes_category'])->sortable()->get();

        return view('pages.admin.titik-lokasi.index', [
            'items' => $items,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $faskes_categories = FaskesCategory::all();
        return view('pages.admin.titik-lokasi.create', [
            'faskes_categories' => $faskes_categories
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(FaskesLocationRequest $request)
    {
        $data = $request->all();
        Location::create($data);
        notify()->success('Berhasil Menyimpan Koordinat FKTP!');
        return redirect()->route('faskes-location.index');
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
        $item = Location::findOrFail($id);
        $faskes_categories = FaskesCategory::all();
        $items = Location::with(['faskes_category'])->where('id', $id)->first();
        return view('pages.admin.titik-lokasi.edit', [
            'items'=>$items,
            'item' => $item,
            'faskes_categories' => $faskes_categories
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(FaskesLocationRequest $request, $id)
    {
        $data = $request->all();
        $item = Location::findOrFail($id);
        $item->update($data);
        notify()->success('Berhasil Update Koordinat FKTP!');
        return redirect()->route('faskes-location.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item  = Location::findOrFail($id);
        $item->delete();
        notify()->success('Berhasil Delete Koordinat FKTP!');
        return redirect()->route('faskes-location.index');
    }
}
