-- Hapus tabel jika sudah ada sebelumnya
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS mahasiswa;

-- Membuat tabel 'users' untuk menyimpan informasi pengguna
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- ID unik yang bertambah otomatis
    username TEXT UNIQUE NOT NULL,        -- Nama pengguna unik, tidak boleh kosong
    password TEXT NOT NULL                 -- Kata sandi tidak boleh kosong
);

-- Membuat tabel 'mahasiswa' untuk menyimpan informasi mahasiswa
CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- ID unik yang bertambah otomatis
    nama TEXT NOT NULL,                   -- Nama mahasiswa, tidak boleh kosong
    nim TEXT UNIQUE NOT NULL              -- NIM unik, tidak boleh kosong
);

-- Menambahkan data awal ke tabel 'users'
INSERT INTO users (username, password) VALUES ('Aldy Amar Al Firdaus', '1');