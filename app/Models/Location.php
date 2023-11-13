<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\DB;
use Kyslik\ColumnSortable\Sortable;

class Location extends Model
{
    use HasFactory;
    use SoftDeletes;
    use Sortable;

    public $fillable = [
        'faskes_categories_id',
        'latitude',
        'longitude'
    ];

    protected $hidden = [];

    public function titik()
    {
        $locations = DB::table('locations')
        ->join('faskes_categories','locations.faskes_categories_id', '=', 'faskes_categories.id')
        ->select('locations.*', 'faskes_categories.title', 'faskes_categories.kecamatan', 'faskes_categories.city', 'faskes_categories.desa')
        ->get();
        return $locations;
    }

    public function allLokasi()
    {
        $results = DB::table('locations')
        ->join('faskes_categories','locations.faskes_categories_id', '=', 'faskes_categories.id')
        ->select('locations.*', 'faskes_categories.title')
        ->get();
        return $results;
    }

    public function faskes_category()
    {
        return $this->belongsTo(FaskesCategory::class, 'faskes_categories_id', 'id');
    }

}
