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
 ogrId varchar(100) not null,
 ad varchar(50) not null, 
 soyad varchar(50) not null,
 tel varchar(50) default '',
 email varchar(100) default '',
 bolumId varchar(100) default '',
  PRIMARY KEY (ogrId)
  );
insert into ogrenci (ogrId, ad, soyad, tel, email, bolumId) VALUES
('O001', 'Ali', 'Yılmaz', '05331234567', 'ali.yilmaz@example.com', 'B101'),
('O002', 'Ayşe', 'Kara', '05339876543', 'ayse.kara@example.com', 'B102'),
('O003', 'Mehmet', 'Demir', '05331239876', 'mehmet.demir@example.com', 'B103'),
('O004', 'Fatma', 'Çelik', '05337894561', 'fatma.celik@example.com', 'B104'),
('O005', 'Hasan', 'Öztürk', '05331234789', 'hasan.ozturk@example.com', 'B105'),
('O006', 'Zeynep', 'Şahin', '05339874561', 'zeynep.sahin@example.com', 'B106'),
('O007', 'Ahmet', 'Kaya', '05339872345', 'ahmet.kaya@example.com', 'B107'),
('O008', 'Emine', 'Güneş', '05339871234', 'emine.gunes@example.com', 'B108'),
('O009', 'Murat', 'Polat', '05337892345', 'murat.polat@example.com', 'B109'),
('O010', 'Elif', 'Koç', '05334567890', 'elif.koc@example.com', 'B110'),
('O011', 'Seda', 'Aydın', '05337894567', 'seda.aydin@example.com', 'B111'),
('O012', 'Yusuf', 'Kurt', '05339875678', 'yusuf.kurt@example.com', 'B112'),
('O013', 'Hüseyin', 'Çiftçi', '05331234987', 'huseyin.ciftci@example.com', 'B113'),
('O014', 'Rabia', 'Taş', '05334567654', 'rabia.tas@example.com', 'B114'),
('O015', 'Deniz', 'Uzun', '05331233456', 'deniz.uzun@example.com', 'B115'),
('O016', 'Furkan', 'Bulut', '05339879876', 'furkan.bulut@example.com', 'B116'),
('O017', 'Selin', 'Sağlam', '05337891234', 'selin.saglam@example.com', 'B117'),
('O018', 'Okan', 'Özdemir', '05331236789', 'okan.ozdemir@example.com', 'B118'),
('O019', 'Bahar', 'Akın', '05339874589', 'bahar.akin@example.com', 'B119'),
('O020', 'Gökhan', 'Erdoğan', '05339871267', 'gokhan.erdogan@example.com', 'B120');
select * from ogrenci;

 create table Dersler(
 dersId varchar(50) default '',
 dersAd varchar(50) not null, 
 saat varchar(50) default '',
PRIMARY KEY (dersId)
  );
INSERT INTO Dersler (dersId, dersAd, saat) VALUES
('D101', 'Matematik', '09:00 - 10:30'),
('D102', 'Fizik', '10:45 - 12:15'),
('D103', 'Kimya', '13:00 - 14:30'),
('D104', 'Biyoloji', '15:00 - 16:30'),
('D105', 'Türkçe', '09:00 - 10:30'),
('D106', 'Tarih', '10:45 - 12:15'),
('D107', 'Coğrafya', '13:00 - 14:30'),
('D108', 'Felsefe', '15:00 - 16:30'),
('D109', 'İngilizce', '09:00 - 10:30'),
('D110', 'Almanca', '10:45 - 12:15'),
('D111', 'Fransızca', '13:00 - 14:30'),
('D112', 'Edebiyat', '15:00 - 16:30'),
('D113', 'Geometri', '09:00 - 10:30'),
('D114', 'Müzik', '10:45 - 12:15'),
('D115', 'Resim', '13:00 - 14:30'),
('D116', 'Beden Eğitimi', '15:00 - 16:30'),
('D117', 'Bilgisayar', '09:00 - 10:30'),
('D118', 'Ekonomi', '10:45 - 12:15'),
('D119', 'Psikoloji', '13:00 - 14:30'),
('D120', 'Sosyoloji', '15:00 - 16:30');
select * from Dersler;


CREATE TABLE OgrenciDersler (
  ogrId VARCHAR(100) NOT NULL,
  dersId VARCHAR(100) NOT NULL,
  PRIMARY KEY (ogrId, dersId),
  FOREIGN KEY (ogrId) REFERENCES ogrenci(ogrId),
  FOREIGN KEY (dersId) REFERENCES Dersler(dersId)
);
-- Insert associations for students from O001 to O020 with various courses
INSERT INTO OgrenciDersler (ogrId, dersId) VALUES
('O001', 'D101'), ('O001', 'D102'), ('O001', 'D103'),
('O002', 'D104'), ('O002', 'D105'), ('O002', 'D106'),
('O003', 'D107'), ('O003', 'D108'), ('O003', 'D109'),
('O004', 'D110'), ('O004', 'D111'), ('O004', 'D112'),
('O005', 'D113'), ('O005', 'D114'), ('O005', 'D115'),
('O006', 'D116'), ('O006', 'D117'), ('O006', 'D118'),
('O007', 'D119'), ('O007', 'D120'), ('O008', 'D101'),
('O008', 'D102'), ('O008', 'D103'), ('O009', 'D104'),
('O009', 'D105'), ('O009', 'D106'), ('O010', 'D107'),
('O010', 'D108'), ('O010', 'D109'), ('O011', 'D110'),
('O011', 'D111'), ('O011', 'D112'), ('O012', 'D113'),
('O012', 'D114'), ('O012', 'D115'), ('O013', 'D116'),
('O013', 'D117'), ('O013', 'D118'), ('O014', 'D119'),
('O014', 'D120'), ('O015', 'D101'), ('O015', 'D102'),
('O015', 'D103'), ('O016', 'D104'), ('O016', 'D105'),
('O016', 'D106'), ('O017', 'D107'), ('O017', 'D108'),
('O017', 'D109'), ('O018', 'D110'), ('O018', 'D111'),
('O018', 'D112'), ('O019', 'D113'), ('O019', 'D114'),
('O019', 'D115'), ('O020', 'D116'), ('O020', 'D117'),
('O020', 'D118');


  select * from OgrenciDersler;

  create table Bolumler(
 bolumId varchar(100) default '',
 BolumAd varchar(50) not null
  );

INSERT INTO Bolumler (bolumId, BolumAd) VALUES
('B101', 'Bilgisayar Mühendisliği'),
('B102', 'Elektrik-Elektronik Mühendisliği'),
('B103', 'Makine Mühendisliği'),
('B104', 'İnşaat Mühendisliği'),
('B105', 'Endüstri Mühendisliği'),
('B106', 'Çevre Mühendisliği'),
('B107', 'Mimarlık'),
('B108', 'İşletme'),
('B109', 'Ekonomi'),
('B110', 'Psikoloji'),
('B111', 'Hukuk'),
('B112', 'Tıp'),
('B113', 'Eczacılık'),
('B114', 'Diş Hekimliği'),
('B115', 'Hemşirelik'),
('B116', 'Biyoloji'),
('B117', 'Fizik'),
('B118', 'Kimya'),
('B119', 'Matematik'),
('B120', 'Sosyoloji');
  
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

select * from ogrenci;
select * from Bolumler;

-- Soru 0 : Öğrencilerin bölümlerini listeletiniz.

select ogrenci.ad, ogrenci.soyad, Bolumler.BolumAd
 from ogrenci
left join Bolumler on Bolumler.bolumId= ogrenci.bolumId;

-- Soru 1 : Öğrencleri aldığı dersleri listeletiniz.
select ogrenci.ad, ogrenci.soyad, Dersler.dersAd
from ogrenci
left join OgrenciDersler on ogrenci.ogrId = OgrenciDersler.ogrId
left join Dersler on OgrenciDersler.dersId= Dersler.dersId;


-- Soru 2 : hangi bölümden, kaç ders kaydı olduğunu bulunuz
select Bolumler.BolumAd, count(Dersler.dersAd) as DersSayisi
from Bolumler
left join ogrenci on ogrenci.bolumId = Bolumler.bolumId
left join OgrenciDersler on OgrenciDersler.ogrId = ogrenci.ogrId
left join Dersler on OgrenciDersler.dersId = Dersler.dersId
group by Bolumler.BolumAd;


-- Soru 3 : hangi dersten kaç ogrenci kaydı olduğunu bulunuz

select Dersler.dersAd as DersSayisi, count(ogrenci.ogrID)
from Dersler
left join OgrenciDersler on OgrenciDersler.dersId = Dersler.dersId
left join ogrenci on ogrenci.ogrId = OgrenciDersler.ogrId
group by DersSayisi;




