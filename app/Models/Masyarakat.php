<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Masyarakat extends Authenticatable
{
    use HasFactory;

    protected $table = 'masyarakat';
    protected $primaryKey = 'nik';

    protected $fillable = [
        'nik',
        'noka',
        'nama',
        'email',
        'username',
        'password',
        'telp',
    ];

    public function faskes_category()
    {
        return $this->belongsTo(FaskesCategory::class, 'faskes_categories_id', 'id');
    }
}
