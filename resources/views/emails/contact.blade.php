@if(session('success'))
    <div class="bg-success text-white p-3 rounded mb-4">
        {{ session('success') }}
    </div>
@endif

@if(session('error'))
    <div class="bg-danger text-white p-3 rounded mb-4">
        {{ session('error') }}
    </div>
@endif

<p><strong>Nama:</strong> {{ $nama }}</p>
<p><strong>No. WhatsApp:</strong> {{ $no_whatsapp }}</p>
<p><strong>Merk Mobil:</strong> {{ $merk_mobil }}</p>
<p><strong>Kota:</strong> {{ $kota }}</p>
<p><strong>Pesan:</strong><br> {{ $pesan }}</p>