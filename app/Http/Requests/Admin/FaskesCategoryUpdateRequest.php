<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;

class FaskesCategoryUpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules(Request $request)
    {
        return [
            'kode_fktp' =>'required','string','max:30',
            'title' => 'required|max:255',
            'service_hour' => 'required|max:255',
            'city' => 'required|max:255',
            'kecamatan'=>'required|max:255',
            'desa'=>'required|max:255',
            'no_telp' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
            'address' => 'required|max:255',
            'perawat' => 'required|max:255',
            'dokter_umum' => 'required|max:255',
            'dokter_gigi' => 'required|max:255',
            'rating' => 'required',
            'jenis_faskes' => 'required',
        ];
    }
}
