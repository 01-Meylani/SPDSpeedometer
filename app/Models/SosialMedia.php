<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SosialMedia extends Model
{
    use HasFactory;
    
    protected $table = 'sosial_media'; 
    protected $fillable = ['logo', 'nama_sosmed', 'link_sosmed'];
}
