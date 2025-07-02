<?php

namespace App\Http\Controllers;

use App\Models\Cabang;
use App\Models\Pesan;
use App\Models\SosialMedia;
use App\Models\Toko;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Http;
  
class KontakController extends Controller
{
    // Menampilkan halaman kontak
    public function index()
    {
        $cabangs = Cabang::all();
        $sosmed = SosialMedia::all();
        $tokos = Toko::all();
        $pesan = Pesan::all();

        // // Gabungkan berdasarkan nama sosial media atau toko
        // $data = [];

        // foreach ($sosmed as $media) {
        //     $data[$media->nama_sosmed]['Tiktok'] = $sosmed;
        // }

        // foreach ($tokos as $toko) {
        //     $data[$toko->nama_toko]['Tiktok'] = $toko;
        // }
        
        return view('kontak', compact('cabangs', 'sosmed', 'tokos', 'pesan'));
    }

    public function kirimPesan(Request $request)
    {
        // dd(env('MAIL_FROM_ADDRESS'));

        $request->validate([
            'nama' => 'required|string',
            'no_whatsapp' => 'required|string',
            'merk_mobil' => 'required|string',
            'kota' => 'required|string',
            'pesan' => 'required|string',
        ]);

        // Simpan ke database
        $pesan = Pesan::create([
            'nama' => $request->nama,
            'no_whatsapp' => $request->no_whatsapp,
            'merk_mobil' => $request->merk_mobil,
            'kota' => $request->kota,
            'pesan' => $request->pesan,
        ]);

        // Data untuk email
        $data = [
            'nama' => $request->nama,
            'no_whatsapp' => $request->no_whatsapp,
            'merk_mobil' => $request->merk_mobil,
            'kota' => $request->kota,
            'pesan' => $request->pesan,
        ];

        $isiPesan = "Halo Admin SPD Center, ada pesan dari Web Kontak.\n\n"
            . "👤 Nama: $request->nama\n"
            . "📞 No Whatsapp: $request->no_whatsapp\n"
            . "🚙 Merk: $request->merk_mobil\n"
            . "📌 Kota: $request->kota\n"
            . "📄 Pesan: $request->pesan\n";

        try {
            // Kirim email
            Mail::send('emails.contact', $data, function ($message) use ($data) {
                $message->from(env('MAIL_FROM_ADDRESS'), env('MAIL_FROM_NAME'))
                        ->to('spdspeedometer@gmail.com')
                        ->subject("Pesan Baru dari " . $data['nama']);
            });

            // Kirim pesan ke WhatsApp
            $noWa = "6281317773055";  // Nomor WhatsApp penerima
            $message = $isiPesan;  // Pesan yang ingin dikirim

            $response = Http::post('https://wa.radiatorsprings.id/send-message', [
                'api_key' => '2yKlUS3dxeDEcJgc58ZFIXF0Vi74co',  // API Key WhatsApp
                'sender'  => '6285117459607',  // Nomor WhatsApp pengirim
                'number'  => $noWa,  // Nomor WhatsApp penerima
                'message' => $message, // Isi pesan
            ]);

            // Mengecek apakah request berhasil
            if ($response->successful()) {
                Log::info('WA terkirim ke ' . $noWa);
            } else {
                Log::error('Gagal kirim WA: ' . $response->body());
            }

            return back()->with('success', 'Pesan berhasil dikirim!');
        } catch (\Exception $e) {
            Log::error("Gagal mengirim pesan: " . $e->getMessage());
            return back()->with('error', 'Terjadi kesalahan saat mengirim pesan.');
        }
    }
}
