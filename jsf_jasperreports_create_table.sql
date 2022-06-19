create table kategori (
  id varchar(60) primary key,
  nama varchar(255)
);

create table produk (
  id varchar(60) primary key,
  kategori_id varchar(60) references kategori(id),
  nama varchar(255),
  harga decimal(22,2),
  stok decimal(22,2),
  satuan varchar(60)
);
