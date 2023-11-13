<?php

namespace App\Http\Controllers;

use App\Models\FaskesCategory;
use Illuminate\Http\Request;

class DetailController extends Controller
{
    public function index(Request $request, $slug)
    {
        $item = FaskesCategory::with(['galleries','locations'])->where('slug', $slug)->firstOrFail();
        return view('pages.detail', [
            'item' => $item,
        ]);


    }
}
