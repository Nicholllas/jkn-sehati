<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Kyslik\ColumnSortable\Sortable;

class Gallery extends Model
{
    use HasFactory;
    use SoftDeletes;
    use Sortable;

    protected $fillable = [
        'faskes_categories_id',
        'image',
    ];

    protected $hidden = [];

    public function faskes_category()
    {
        return $this->belongsTo(FaskesCategory::class, 'faskes_categories_id', 'id');
    }
}
