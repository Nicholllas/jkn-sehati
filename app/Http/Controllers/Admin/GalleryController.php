<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\GalleryRequest;
use App\Models\FaskesCategory;
use App\Models\Gallery;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use App\Rules\MaxImageSize;


class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

       $items = Gallery::with(['faskes_category'])->sortable()->get();
       return view('pages.admin.gallery.index', [
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
        return view('pages.admin.gallery.create', [
            'faskes_categories' => $faskes_categories
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(GalleryRequest $request)
    {
        $data = $request->all();
        $data['image'] = $request->file('image')->store(
            'assets/gallery',
            'public'
        );
        Gallery::create($data);
        notify()->success('Berhasil Menambahkan Foto FKTP '.$request->title.' ! ');
        return redirect()->route('gallery.index');
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
        $items = Gallery::with(['faskes_category'])->where('id', $id)->first();
        $item = Gallery::findOrFail($id);
        $faskes_categories = FaskesCategory::all();
        return view('pages.admin.gallery.edit', [
            'item' => $item,
            'faskes_categories' => $faskes_categories,
            'items' => $items,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(GalleryRequest $request, $id)
    {
        $data = $request->all();
        $data['image'] = $request->file('image')->store(
            'assets/gallery',
            'public'
        );


        $item = Gallery::findOrFail($id);
        $item->update($data);
        notify()->success('Berhasil Update Foto FKTP '.$request->title.' ! ');
        return redirect()->route('gallery.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $item  = Gallery::findOrFail($id);
        $item->delete();
        notify()->success('Berhasil Delete Foto FKTP! ');
        return redirect()->route('gallery.index', ['page'=>$request->page]);
    }
}
