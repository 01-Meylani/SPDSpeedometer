<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pesan extends Model
{
    use HasFactory;
    
    protected $table = 'pesan'; 
    protected $fillable = ['nama', 'no_whatsapp', 'merk_mobil', 'kota', 'pesan'];
}
