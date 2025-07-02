<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GEARSECOND</title>
    <!-- <link rel="stylesheet" href="https://cdn.fontshare.com/css?f=Montserrat"> -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <script>
        // POP UP TAMPIL TERUS KETIKA DI REFRESH
        function openPopup() {
            document.getElementById("popup-form").style.display = "flex";
        }

        // function closePopup() {
        //     document.getElementById("popup-form").style.display = "none";
        // }

        // Panggil openPopup() saat halaman selesai dimuat
        window.onload = function() {
            openPopup();
        };

        // Event listener untuk menutup pop-up saat mengklik di luar pop-up
        // document.getElementById("popup-form").addEventListener("click", function(event) {
        //     if (event.target === this) {
        //         closePopup();
        //     }
        // });

        document.addEventListener("DOMContentLoaded", function () {
            // Ambil elemen pop-up dan overlay
            var popupOverlay = document.getElementById("popup-form");
            var popupBox = document.querySelector(".popup");

            // Fungsi untuk menutup pop-up
            function closePopup() {
                popupOverlay.style.display = "none";
            }

            // Event listener untuk tombol X
            document.querySelector(".close").addEventListener("click", closePopup);

            // Event listener untuk klik di luar pop-up
            popupOverlay.addEventListener("click", function (event) {
                // Pastikan yang diklik adalah overlay, bukan pop-up di dalamnya
                if (!popupBox.contains(event.target)) {
                    closePopup();
                }
            });
        });

         // POP UP TAMPIL 3x SEHARI
        // document.addEventListener("DOMContentLoaded", function () {
        //     const popup = document.getElementById("popup-form");

        //     // Ambil jumlah tampilan popup dari localStorage
        //     let popupCount = localStorage.getItem("popupCount") || 0;
        //     let lastShownDate = localStorage.getItem("popupDate");

        //     // Dapatkan tanggal hari ini dalam format YYYY-MM-DD
        //     let today = new Date().toISOString().split("T")[0];

        //     // Reset hitungan jika hari berganti
        //     if (lastShownDate !== today) {
        //         localStorage.setItem("popupCount", 0);
        //         localStorage.setItem("popupDate", today);
        //         popupCount = 0;
        //     }

        //     // Tampilkan popup hanya jika belum muncul 3 kali hari ini
        //     function openPopup() {
        //         if (popupCount < 3) {
        //             popup.style.display = "flex";
        //             popupCount++;
        //             localStorage.setItem("popupCount", popupCount);
        //         }
        //     }

        //     function closePopup() {
        //         popup.style.display = "none";
        //     }

        //     // Panggil openPopup() saat halaman selesai dimuat
        //     openPopup();

        //     // Pastikan fungsi closePopup bisa dipanggil dari tombol close
        //     window.closePopup = closePopup;
        // });
    </script>
    @livewireStyles
</head>
<body>
    <main>
       <img src="/images/logogearsecond.jpeg" alt="Logo Gearsecond">
        <p>Bengkel spesialis Speedometer Motor. Menerima Custom (Modifikasi) dan Service (Reparasi) Speedometer Motor.
Apapun Merek Speedometernya, Gearsecond Solusinya!</p>
        <div class="container">
            <a href="https://gearsecondspeedometer.com/" target="_blank" class="button-primary">
                <img src="/images/Icon Web.png" alt="WA">Website
            </a>
        </div>
        
        <div class="grid-container">
        <div class="grid-section">
            <!-- CABANG -->
            @foreach ($cabangs as $cabang)
            <div class="grid-kotak">
                <div class="grid-judul">
                    <h3 style="color: white;">{{ $cabang->nama_cabang }}</h3>
                </div>
                <div class="grid-cabang">
                    <!-- <div>
                        <img src="{{ asset('storage/' . $cabang->logo) }}" alt="SPD {{ $cabang->nama_cabang }}" class="logo-maps">
                    </div>
                    <div class="row">
                        <a href="https://wa.me/{{ $cabang->no_whatsapp }}" target="_blank" class="button-hijau"><img src="/images/Icon WA.png" alt="WA" class="icon-WA">CS</a>
                        <a href="{{ $cabang->maps_link }}" target="_blank" class="button-biru"><img src="/images/Icon Gmaps.png" alt="WA" class="icon-Maps">Gmaps</a>
                    </div> -->
                    <div class="logo-container">
                        <img src="{{ asset('storage/' . $cabang->logo) }}" alt="SPD {{ $cabang->nama_cabang }}" class="logo-maps">
                    </div>
                    <div class="button-container">
                        <a href="https://wa.me/{{ $cabang->no_whatsapp }}" target="_blank" class="button-hijau">
                            <img src="/images/Icon WA.png" alt="WA" class="icon-WA"> CS
                        </a>
                        <a href="{{ $cabang->maps_link }}" target="_blank" class="button-biru">
                            <img src="/images/Icon Gmaps.png" alt="Gmaps" class="icon-Maps"> Maps
                        </a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <div class="grid-section">
            <!-- TOKO ONLINE -->
            @foreach ($tokos as $toko)
            <div class="grid-item">
                <img src="{{ asset('storage/' . $toko->logo) }}" alt="{{ $toko->nama_toko }}" class="logo-{{ strtolower($toko->nama_toko) }}">
                <a href="{{ $toko->link_toko }}" target="_blank" class="button-{{ strtolower($toko->nama_toko) }}">Beli via {{ $toko->nama_toko }}</a>
            </div>
            @endforeach
            
            <div class="grid-item">
                <img src="/images/Logo Tiktok.png" alt="Tiktok" class="logo-khusus">
                <a href="https://www.tiktok.com/@gearsecondspeedometer?_t=ZS-8xgIK2AuhmR&_r=1" target="_blank" class="button-hitam">Tiktok</a>
                <a href="https://www.tiktok.com/@gearsecondspeedometer?_t=ZS-8xgIK2AuhmR&_r=1" target="_blank" class="button-hitam">Tiktok Shop</a>
            </div>

            <!-- SOSIAL MEDIA -->
            @foreach ($sosmed as $media)
            <div class="grid-item">
                <img src="{{ asset('storage/' . $media->logo) }}" alt="{{ $media->nama_sosmed }}" class="logo-{{ strtolower($media->nama_sosmed) }}">
                <a href="{{ $media->link_sosmed }}" target="_blank" class="button-{{ strtolower($media->nama_sosmed) }}">{{ $media->nama_sosmed }}</a>
            </div>
            @endforeach
        </div>
        </div>
    </main>
    
    <div class="popup-overlay" id="popup-form">
        <div class="popup">
            <button class="close" type="button" onclick="closePopup()">X</button>
            <p class="diskon">dapetin kupon diskon untuk custom atau service speedometer motor kamu</p>
            <form action="{{ route('pesan.kirim') }}" method="POST">
                @csrf
                <label for="nama"><input type="text" id="nama" name="nama" placeholder="Nama" required></label>
                <label for="no_whatsapp"><input type="text" id="no_whatsapp" name="no_whatsapp" placeholder="No Whatsapp" required></label>
                <label for="merk_motor"><input type="text" id="merk_motor" name="merk_motor" placeholder="Merk Motor" required></label>
                <label for="kota"><input type="text" id="kota" name="kota" placeholder="Kota" required></label>
                <label for="pesan"><textarea id="pesan" name="pesan" placeholder="Pesan" required></textarea></label>
                <button class="klaim" type="submit">Klaim Kupon SPD</button>
                <p class="kupon">Kupon ini hanya muncul 3x sehari, ambil manfaatnya sekarang!</p>
            </form>
        </div>
    </div>
    @livewireScripts
</body>
</html>