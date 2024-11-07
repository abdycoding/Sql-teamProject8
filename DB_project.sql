-- PROJE :  z_grup10  gbi ayrı db de çalışalım her grup kendi grup db sini oluşturmalı

-- Bir üniversite ders kayıt db si tasarlanmak isteniyor(JAVA sorusunun DB sini)
-- öğrencilerin adı, soyadı, email, telefon, bolum  bilgisi vardır
-- bu öğrencilere ders saati belli olan dersler keydedilecektir(stored)
-- bu bilgilerin kaydedilmesini sağlayacak veritabanını tasarlayınız
-- Tabloların uyugn olanlarını diğer tablolardan bilgileri alarak dodurunuz.
-- (Ogrenci (ogrId, ad,soyad,email,telefon,bolumId), Dersler(dersId, dersAd, saat), 
-- OgrenciDersler(ogrId, dersId), Bolumler (bolumId, BolumAd))

-- daha sonra aşağıdaki bilgilerin sorgularını yazınız
-- Soru 0 : Öğrencilerin bölümlerini listeletiniz.
-- Soru 1 : Öğrencleri aldığı dersleri listeletiniz.
-- Soru 2 : hangi bölümden, kaç ders kaydı olduğunu bulunuz
-- Soru 3 : hangi dersten kaç ogrenci kaydı olduğunu bulunuz
-- Soru 4 : derse kayıtlı olmayan öğrencilerin listesini yazdırınız
-- Soru 5 : hangi öğrenci kaç derse kayıtlı olduğunu bulunuz
-- Soru 6 : Her bölümüm kayıtlı olan toplam ders saatini bulunuz
-- Soru 7 : En yüksek ders saatine sahip bolumu bulunuz. 
-- Soru 8 : Hangi bölümden kaç öğrenci olduğunuz bulunuz.

-- tablo isim ve tasarım görüntüsünü(object info)
-- sorgu sonuçlarını hem sql hemde çıktısı şeklinde bir Word dökümanı hazırlayıp,
-- kendi grup chatinizde hocayı etiketliyerek paylaşınız.

create database z_team8; -- db olusturma
use z_team8; 

 create table ogrenci(
 ogrId int auto_increment primary key,
 ad varchar(50) not null, 
 soyad varchar(50) not null,
 tel varchar(50) default '',
 email varchar(100) default '',
 bolumId varchar(100) default ''
  );
  
insert into ogrenci (ad, soyad, tel, email, bolumId) VALUES
('Ali', 'Yılmaz', '05331234567', 'ali.yilmaz@example.com', 'B101'),
('Ayşe', 'Kara', '05339876543', 'ayse.kara@example.com', 'B102'),
('Mehmet', 'Demir', '05331239876', 'mehmet.demir@example.com', 'B103'),
('Fatma', 'Çelik', '05337894561', 'fatma.celik@example.com', 'B104'),
('Hasan', 'Öztürk', '05331234789', 'hasan.ozturk@example.com', 'B105'),
('Zeynep', 'Şahin', '05339874561', 'zeynep.sahin@example.com', 'B106'),
('Ahmet', 'Kaya', '05339872345', 'ahmet.kaya@example.com', 'B107'),
('Emine', 'Güneş', '05339871234', 'emine.gunes@example.com', 'B108'),
('Murat', 'Polat', '05337892345', 'murat.polat@example.com', 'B109'),
('Elif', 'Koç', '05334567890', 'elif.koc@example.com', 'B110'),
('Seda', 'Aydın', '05337894567', 'seda.aydin@example.com', 'B111'),
('Yusuf', 'Kurt', '05339875678', 'yusuf.kurt@example.com', 'B112'),
('Hüseyin', 'Çiftçi', '05331234987', 'huseyin.ciftci@example.com', 'B113'),
('Rabia', 'Taş', '05334567654', 'rabia.tas@example.com', 'B114'),
('Deniz', 'Uzun', '05331233456', 'deniz.uzun@example.com', 'B115'),
('Furkan', 'Bulut', '05339879876', 'furkan.bulut@example.com', 'B116'),
('Selin', 'Sağlam', '05337891234', 'selin.saglam@example.com', 'B117'),
('Okan', 'Özdemir', '05331236789', 'okan.ozdemir@example.com', 'B118'),
('Bahar', 'Akın', '05339874589', 'bahar.akin@example.com', 'B119'),
('Gökhan', 'Erdoğan', '05339871267', 'gokhan.erdogan@example.com', 'B120');
select * from ogrenci;


 create table Dersler(
 dersId int auto_increment primary key,
 dersAd varchar(50) not null, 
 saat varchar(50) default ''

  );
  insert into Dersler (dersAd, saat) VALUES
('Matematik', '09:00 - 10:30'),
('Fizik', '10:45 - 12:15'),
('Kimya', '13:00 - 14:30'),
('Biyoloji', '15:00 - 16:30'),
('Türkçe', '09:00 - 10:30'),
('Tarih', '10:45 - 12:15'),
('Coğrafya', '13:00 - 14:30'),
('Felsefe', '15:00 - 16:30'),
('İngilizce', '09:00 - 10:30'),
('Almanca', '10:45 - 12:15'),
('Fransızca', '13:00 - 14:30'),
('Edebiyat', '15:00 - 16:30'),
('Geometri', '09:00 - 10:30'),
('Müzik', '10:45 - 12:15'),
('Resim', '13:00 - 14:30'),
('Beden Eğitimi', '15:00 - 16:30'),
('Bilgisayar', '09:00 - 10:30'),
('Ekonomi', '10:45 - 12:15'),
('Psikoloji', '13:00 - 14:30'),
('Sosyoloji', '15:00 - 16:30');
select * from Dersler;


 create table OgrenciDersler(
 ogrId int ,
 dersId int,
 
 primary key(ogrId, dersId)
  );
  select * from OgrenciDersler;


  create table Bolumler(
 bolumId int auto_increment primary key,
 BolumAd varchar(50) not null
  );
  
  insert INTO Bolumler (BolumAd) VALUES
('Bilgisayar Mühendisliği'),
('Elektrik-Elektronik Mühendisliği'),
('Makine Mühendisliği'),
('İnşaat Mühendisliği'),
('Endüstri Mühendisliği'),
('Çevre Mühendisliği'),
('Mimarlık'),
('İşletme'),
('Ekonomi'),
('Psikoloji'),
('Hukuk'),
('Tıp'),
('Eczacılık'),
('Diş Hekimliği'),
('Hemşirelik'),
('Biyoloji'),
('Fizik'),
('Kimya'),
('Matematik'),
('Sosyoloji');
  
-- (Ogrenci (ogrId, ad,soyad,email,telefon,bolumId), Dersler(dersId, dersAd, saat), 
-- OgrenciDersler(ogrId, dersId), Bolumler (bolumId, BolumAd))


-- daha sonra aşağıdaki bilgilerin sorgularını yazınız
-- Soru 0 : Öğrencilerin bölümlerini listeletiniz.
-- Soru 1 : Öğrencleri aldığı dersleri listeletiniz.
-- Soru 2 : hangi bölümden, kaç ders kaydı olduğunu bulunuz
-- Soru 3 : hangi dersten kaç ogrenci kaydı olduğunu bulunuz
-- Soru 4 : derse kayıtlı olmayan öğrencilerin listesini yazdırınız
-- Soru 5 : hangi öğrenci kaç derse kayıtlı olduğunu bulunuz
-- Soru 6 : Her bölümüm kayıtlı olan toplam ders saatini bulunuz
-- Soru 7 : En yüksek ders saatine sahip bolumu bulunuz. 
-- Soru 8 : Hangi bölümden kaç öğrenci olduğunuz bulunuz.

-- tablo isim ve tasarım görüntüsünü(object info)
-- sorgu sonuçlarını hem sql hemde çıktısı şeklinde bir Word dökümanı hazırlayıp,
-- kendi grup chatinizde hocayı etiketliyerek paylaşınız.

-- Soru 0 : Öğrencilerin bölümlerini listeletiniz.

select ogrenci.ad, ogrenci.soyad, Bolumler.BolumAd
 from ogrenci
left join Bolumler on Bolumler.bolumId= ogrenci.bolumId;

