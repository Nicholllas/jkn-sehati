<?php

namespace App\Exports;

use App\Models\FaskesCategory;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
class FaskesExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return FaskesCategory::select(
        'kode_fktp',
        'title' ,
         'slug' ,
         'service_hour' ,
         'about'    ,
         'kecamatan' ,
         'desa',
         'city' ,
         'address',
         'no_telp',
         'perawat' ,
         'dokter_umum',
         'dokter_gigi' ,
         'rating',
         'jenis_faskes',
         'gmap_embed')->get();
    }

    /**
     * Write code on Method
     *
     * @return response()
     */

     public function headings(): array
    {
        return [
        'kode_fktp',
        'title' ,
         'slug' ,
         'service_hour' ,
         'about'    ,
         'kecamatan' ,
         'desa',
         'city' ,
         'no_telp',
         'address',
         'perawat' ,
         'dokter_umum',
         'dokter_gigi' ,
         'rating',
         'jenis_faskes',
         'gmap_embed'];
    }
}
