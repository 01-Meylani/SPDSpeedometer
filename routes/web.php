<?php

use App\Exports\DataPesanExport;
use App\Http\Controllers\KontakController;
use Illuminate\Support\Facades\Route;
use Maatwebsite\Excel\Facades\Excel;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {return view('welcome');});

Route::get('/', [KontakController::class, 'index'])->name('kontak');
Route::post('/kirim-pesan', [KontakController::class, 'kirimPesan'])->name('pesan.kirim');

// Route::get('/export-kendaraan', function () {
//     return Excel::download(new DataPesanExport, 'data_pesan.xlsx');
// });
