<<<<<<< HEAD
<<<<<<< HEAD
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS mahasiswa;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    username TEXT UNIQUE NOT NULL,        
    password TEXT NOT NULL                
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    nama TEXT NOT NULL,                   
    nim TEXT UNIQUE NOT NULL              
);

INSERT INTO users (username, password) VALUES ('Aldy Amar Al Firdaus', '1');
=======
-- Hapus tabel jika sudah ada sebelumnya
=======
>>>>>>> a43d43a (update lagi)
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS mahasiswa;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    username TEXT UNIQUE NOT NULL,        
    password TEXT NOT NULL                
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    nama TEXT NOT NULL,                   
    nim TEXT UNIQUE NOT NULL              
);

<<<<<<< HEAD
-- Menambahkan data awal ke tabel 'users'
INSERT INTO users (username, password) VALUES ('Aldy Amar Al Firdaus', '1');
>>>>>>> ad90c39 (update)
=======
INSERT INTO users (username, password) VALUES ('Aldy Amar Al Firdaus', '1');
>>>>>>> a43d43a (update lagi)
