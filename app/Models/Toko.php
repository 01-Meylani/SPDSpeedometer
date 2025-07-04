<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Toko extends Model
{
    use HasFactory;

    protected $table = 'toko'; // ← ini WAJIB kalau nama tabel kamu tidak jamak
    protected $fillable = ['logo', 'nama_toko', 'link_toko'];
}
