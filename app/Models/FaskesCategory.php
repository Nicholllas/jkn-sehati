<?php

namespace App\Models;

use willvincent\Rateable\Rateable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Kyslik\ColumnSortable\Sortable;

class FaskesCategory extends Model
{
    use HasFactory;
    use SoftDeletes;
    use Rateable;
    use Sortable;

    protected $primaryKey = 'id';

    protected $fillable = [
        'kode_fktp',
        'title',
        'slug',
        'service_hour',
        'about',
        'kecamatan',
        'desa',
        'city',
        'no_telp',
        'address',
        'perawat',
        'dokter_umum',
        'dokter_gigi',
        'rating',
        'jenis_faskes',
        'gmap_embed',

    ];

    protected $hidden = [];

    public function galleries()
    {
        return $this->hasMany(Gallery::class, 'faskes_categories_id', 'id');
    }

    public function pengaduans()
    {
        return $this->hasMany(Pengaduan::class, 'faskes_categories_id', 'id');
    }

    public function masyarakats()
    {
        return $this->hasMany(Masyarakat::class, 'faskes_categories_id', 'id');
    }

    public function locations()
    {
        return $this->hasMany(Location::class, 'faskes_categories_id', 'id');
    }

    public $sortable = [
        'title','service_hour','rating'
    ];
}
