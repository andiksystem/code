create TABLE pengguna (
    id VARCHAR(60) primary key,
    password VARCHAR(255),
    nama VARCHAR(255),
    hak_akses VARCHAR(60),
    waktu_dibuat TIMESTAMP
);

create TABLE kategori (
    id VARCHAR(60) primary key,
    nama VARCHAR(255),
    waktu_dibuat TIMESTAMP
);

create TABLE artikel (
    id VARCHAR(60) PRIMARY KEY,
    judul VARCHAR(255),
    isi TEXT,
    gambar VARCHAR(255),
    kategori_id VARCHAR(60) REFERENCES kategori(id),
    pengguna_id VARCHAR(60) REFERENCES pengguna(id),
    waktu_dibuat TIMESTAMP,
    is_published BOOLEAN,
    waktu_publish TIMESTAMP,
    waktu_diubah TIMESTAMP
);

create TABLE komentar (
    id VARCHAR(60) PRIMARY KEY,
    artikel_id VARCHAR(60) REFERENCES artikel(id),
    pengguna_id VARCHAR(60) REFERENCES pengguna(id),
    isi_komentar TEXT,
    waktu_dibuat TIMESTAMP
);

