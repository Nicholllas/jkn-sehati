<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengaduan extends Model
{
    use HasFactory;

    protected $table = 'pengaduan';

    protected $primaryKey = 'id_pengaduan';

    protected $fillable = [
        'tgl_pengaduan',
        'tgl_kejadian',
        'judul_laporan',
        'nik',
        'isi_laporan',
        'faskes_categories_id',
        'foto',
        'status',
    ];

    protected $hidden = [];
    protected $dates = ['tgl_pengaduan'];

    public function user(){
        return $this->hasOne(Masyarakat::class, 'nik','nik');
    }

    public function tanggapan()
    {
        return $this->hasOne(Tanggapan::class, 'id_pengaduan', 'id_pengaduan');
    }

    public function faskes_category()
    {
        return $this->belongsTo(FaskesCategory::class, 'faskes_categories_id', 'id');
    }

}
