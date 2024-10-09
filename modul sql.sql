-- 1. Tunjukan data umkm di Kota Bandung!
-- 2. Tunjukan data umkm dari tahun 2019 dan disusun berdasarkan kategori_usaha!
-- 3. Kategori_usaha apa saja yang tersedia di dalam dataset?
-- 4. Tunjukkan seluruh data hanya kategori_usaha FASHION dan MAKANAN
-- 5. Tunjukkan seluruh data dengan kategori usaha FASHION di Kabupaten Karawang dari tahun 2017 hingga 2021!
-- 6. Tunjukkan kabupaten/kota yang memiliki usaha Kuliner atau FASHION!
-- 7. Tunjukkan seluruh data selain kategori usaha kuliner, makanan dan minuman!
-- 8. Apakah terdapat id yang memiliki jumlah_umkm yang tidak diketahui (NULL)?
-- 9. Dari tahun 2018 s.d. 2020, bagaimana tren jumlah umkm di Kabupaten Tasikmalaya untuk kategori usaha Batik? 
-- 10. Di antara Kota Bandung, Kabupaten Bandung dan Kabupaten Bandung Barat, di manakah umkm kuliner terpusat pada tahun 2021?
-- 11. Kabupaten/Kota mana saja yang memiliki angka 7 pada digit ke 3 kode tersebut?

select * from umkm_jabar limit 10;
select * from umkm_jabar where nama_kabupaten_kota ='kota bandung';
select distinct kategori_usaha from umkm_jabar;
select * from umkm_jabar where tahun>= 2019 order by kategori_usaha,tahun;
select * from umkm_jabar where kategori_usaha in ('makanan','minuman');
select * from umkm_jabar where nama_kabupaten_kota ='kabupaten karawang' and kategori_usaha ='fashion' and tahun >= 2017 and tahun <= 2021; 
select distinct nama_kabupaten_kota from umkm_jabar where kategori_usaha in ('fashion','kuliner');
select * from umkm_jabar where kategori_usaha in ('fashion','kuliner');
select * from umkm_jabar where kategori_usaha not in ('minuman','kuliner','makanan');
select * from umkm_jabar where jumlah_umkm = null;
select * from umkm_jabar where kategori_usaha = 'batik' and nama_kabupaten_kota = 'kabupaten tasikmalaya' and tahun between 2018 and 2020;
select * from umkm_jabar where kategori_usaha = 'kuliner' and nama_kabupaten_kota like "%bandung%" and tahun = 2021 order by 'jumlah_umkm' ;
select * from umkm_jabar where kode_kabupaten_kota like '__7%';



