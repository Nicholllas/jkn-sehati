<?php

namespace App\Imports;

use App\Models\FaskesCategory;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\ToModel;

class FaskesImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
{
    $existingRecord = FaskesCategory::where('kode_fktp', $row['kode_fktp'])->first();

    if ($existingRecord) {
        // Update existing record
        $existingRecord->update([
            'title'         => $row['title'],
            'slug'          => $row['slug'],
            'service_hour'  => $row['service_hour'],
            'about'         => $row['about'],
            'kecamatan'     => $row['kecamatan'],
            'desa'          => $row['desa'],
            'city'          => $row['city'],
            'no_telp'       => $row['no_telp'],
            'address'       => $row['address'],
            'perawat'       => $row['perawat'],
            'dokter_umum'   => $row['dokter_umum'],
            'dokter_gigi'   => $row['dokter_gigi'],
            'rating'        => $row['rating'],
            'jenis_faskes'  => $row['jenis_faskes'],
            'gmap_embed'    => $row['gmap_embed'],
        ]);
        return $existingRecord; // Return the updated record
    } else {
        // Insert new record
        return new FaskesCategory([
            'kode_fktp'     => $row['kode_fktp'],
            'title'         => $row['title'],
            'slug'          => $row['slug'],
            'service_hour'  => $row['service_hour'],
            'about'         => $row['about'],
            'kecamatan'     => $row['kecamatan'],
            'desa'          => $row['desa'],
            'city'          => $row['city'],
            'no_telp'       => $row['no_telp'],
            'address'       => $row['address'],
            'perawat'       => $row['perawat'],
            'dokter_umum'   => $row['dokter_umum'],
            'dokter_gigi'   => $row['dokter_gigi'],
            'rating'        => $row['rating'],
            'jenis_faskes'  => $row['jenis_faskes'],
            'gmap_embed'    => $row['gmap_embed'],
        ]);
    }
}

}
