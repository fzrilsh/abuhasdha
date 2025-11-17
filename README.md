
## Petunjuk singkat

File ini berisi instruksi singkat untuk men-setup WordPress ringan menggunakan skrip `setup.sh` yang tersedia di root repository.

### Tujuan

Memberikan skrip sederhana untuk men-download bagian core WordPress (folder `wp-admin` dan `wp-includes`) dan membuat `wp-config.php` dari `wp-config-sample.php` bila belum ada.

> Catatan: skrip ini tidak meng-install database; setelah menjalankan skrip, Anda tetap perlu mengimpor database atau membuka installer WordPress lewat browser.

### File SQL yang disertakan

Repository ini sudah menyertakan file dump database bernama `abuhasdha.sql` di root folder. File ini adalah dump phpMyAdmin dari database asli dan bisa Anda impor secara manual ke MySQL/MariaDB bila ingin mengembalikan konten situs yang sesuai.

### Prasyarat

- macOS, Linux, atau lingkungan POSIX dengan `bash`, `curl`, dan `tar` terpasang.
- Jalankan dari root folder WordPress (folder yang berisi `wp-config-sample.php` dan `index.php`).

### Cara menjalankan `setup.sh`

1. Pastikan Anda berada di direktori project (root WordPress):

```zsh
cd /path/to/your/abuhasdha
pwd  # pastikan menampilkan folder yang berisi index.php
```

2. Beri izin eksekusi pada skrip (hanya perlu sekali):

```zsh
chmod +x setup.sh
```

3. Jalankan skrip:

```zsh
./setup.sh
# atau jika Anda lebih suka menjalankan lewat shell
bash setup.sh
```

Skrip akan melakukan beberapa hal otomatis:

- Mengunduh file WordPress core terbaru (hanya `wp-admin` dan `wp-includes`).
- Jika belum ada `wp-config.php`, akan menyalin `wp-config-sample.php` → `wp-config.php` dan memberi tahu supaya Anda mengisi detail database dan salts.

Jika skrip mendeteksi bukan folder root WordPress (tidak menemukan `index.php`), skrip akan keluar dengan pesan error dan tidak melakukan perubahan.

### Mengedit `wp-config.php`

Setelah skrip membuat `wp-config.php` (jika dibuat), Anda perlu mengisi nilai berikut:

- `DB_NAME` — nama database
- `DB_USER` — user database
- `DB_PASSWORD` — password database
- (Opsional) `DB_HOST` jika tidak `localhost`

Untuk salts keamanan, kunjungi generator resmi WordPress dan tempel hasilnya di `wp-config.php`:

https://api.wordpress.org/secret-key/1.1/salt/

### Troubleshooting

- Error "Jalankan script ini di dalam folder root WordPress!": pastikan Anda berada di folder yang berisi `index.php` dan `wp-config-sample.php`.
- Jika `curl` tidak tersedia: pasang `curl` atau gunakan package manager (Homebrew pada macOS: `brew install curl`).
- Hak akses file: jika unduhan gagal karena izin, jalankan perintah dengan user yang memiliki izin tulis pada direktori atau gunakan `sudo` dengan hati-hati.

### Apa yang tidak dilakukan skrip

- Skrip ini tidak otomatis membuat atau mengimpor database. Namun, repository menyertakan file dump `abuhasdha.sql` untuk impor manual jika diperlukan.
- Skrip tidak mengunduh tema, plugin, atau file lain di luar `wp-admin` dan `wp-includes`.

### Mengimpor file SQL (disertakan `abuhasdha.sql`)

Contoh cepat mengimpor file `abuhasdha.sql` ke database MySQL/MariaDB:

```zsh
# buat database (opsional)
mysql -u root -p -e "CREATE DATABASE my_wp_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;"

# impor dump ke database target
mysql -u DB_USER -p my_wp_db < /path/to/abuhasdha/abuhasdha.sql
```

Ganti `DB_USER`, `my_wp_db`, dan path sesuai lingkungan Anda. Jika tabel di dump menggunakan prefix `abuhasdha_`, pastikan `$table_prefix` di `wp-config.php` sesuai atau ubah prefix pada dump sebelum impor.

### Rekomendasi setelah menjalankan

1. Buka browser ke alamat situs (mis. `http://localhost/your-folder`) untuk menyelesaikan install WordPress via web installer, atau impor database SQL bila Anda memilikinya.
2. Periksa `wp-config.php` untuk memastikan credensial database dan salts sudah benar.

### Lisensi & Catatan

Skrip sederhana untuk tujuan setup lokal. Sesuaikan dan gunakan dengan tanggung jawab Anda sendiri.
