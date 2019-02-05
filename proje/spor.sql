-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Ara 2016, 23:01:51
-- Sunucu sürümü: 10.1.19-MariaDB
-- PHP Sürümü: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `spor`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `kadi` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `isim` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `kadi`, `sifre`, `isim`) VALUES
(2, 'genesis', '1234', 'mojo'),
(3, '1234', '1234', 'sasa'),
(4, 'asd', '12', ''),
(5, 'oguz', '123', ''),
(6, 'birelli', '1234', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basketbol`
--

CREATE TABLE `basketbol` (
  `id` int(11) NOT NULL,
  `haberbaslik` text COLLATE utf8_turkish_ci NOT NULL,
  `resimyolu` text COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `yazan` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `basketbol`
--

INSERT INTO `basketbol` (`id`, `haberbaslik`, `resimyolu`, `icerik`, `yazan`) VALUES
(1, 'Thunder''ı yine Westbrook uçurdu.', 'images\\b1.jpg', 'Amerikan Basketbol Ligi''nde (NBA) Oklahoma City Thunder forması giyen Russell Westbrook, 46 sayı attığı Atlanta Hawks maçından sonra New Orleans Pelicans''a karşı da 42 sayı kaydetti.\r\nNBA''e 8 maçla devam edildi. Ligin iki formda ismi New Orleans Pelicanslı Anthony Davis ile Oklahoma City Thunderlı Russell Westbrook''u karşı karşıya getiren mücadeleyi, 121-110 Thunder kazandı.\r\nThunder''ın yıldız oyuncusu Westbrook, 46 sayı attığı Atlanta Hawks maçından sonra Pelicans''a karşı da 40 sayı barajını geçti ve karşılaşmayı 42 sayı, 10 ribaunt ve 7 asistle tamamladı. Yedek oyuncu Alex Abrines, 18 sayılık katkıda bulundu.\r\nMaçta 34 sayı, 15 ribaunt üreten ev sahibi Pelicans''ın all-star forveti Anthony Davis ise bu sezon 9. kez 30 sayı ve 15 ribaunt barajlarını aştı. Pelicans''ta oynayan Ömer Aşık, skor üretemediği maçta 2 ribaunt aldı.', 'AA'),
(2, 'Gentile, Panathinaikos''a transfer oldu', 'images\\b2.jpg', 'THY Avrupa Ligi’nde de mücadele eden Yunan ekibi Panathinaikos Superfoods, İtalyan temsilcisi EA7 Emporio Armani Milan’dan skorer basketbolcu Alessandro Gentile’yi kadrosuna kattı.\r\nPanathinaikos Kulübünden yapılan açıklamada, 24 yaşındaki İtalyan oyuncu Gentile ile sezon sonuna kadar sözleşme imzalandığı bildirildi.\r\n\r\nKariyerine ülkesinin Benetton Treviso takımında başlayan 2,01 metre boyundaki şutör oyuncu, 2011’de transfer olduğu EA7 Emporio Armani Milan’da iki kez İtalya Ligi şampiyonluğu yaşadı.\r\n\r\nİtalyan basketbolcu, bu sezon THY Avrupa Ligi’nde maç başına 10,8 sayı, 3 ribaunt ve 2,4 asistle oynadı. Gentile, İtalya Ligi’nde ise 9,5 sayı, 3,9 ribaunt ve 3,2 asist ortalamaları yakaladı.', 'AA'),
(3, 'Los Angeles Clippers’a Griffin''den kötü haber', 'images\\b3.jpg', 'Sağ dizinden ameliyat edilen yıldız oyuncu Blake Griffin, yaklaşık 6 hafta sahalardan uzak kalacak.\r\nAmerikan Basketbol Ligi (NBA) takımlarından Los  Angeles Clippers’ın yıldız oyuncusu Blake Griffin’in, yaklaşık 6 hafta sahalardan  uzak kalacağı bildirildi.\r\n\r\nLos Angeles Clippers’tan yapılan açıklamada, 27 yaşındaki oyuncunun sakatlığı nedeniyle sağ dizinden ameliyat edildiği ve operasyonun başarılı geçtiği belirtildi. Griffin’in sahalara dönüşünün 6 haftayı bulabileceği kaydedildi.\r\n\r\nNBA’de 5 kez all-star seçilen basketbolcu, 26 maçta 21 sayı, 8,9 ribaunt, 4,6 asist ortalamasına sahip oldu.', 'AA'),
(4, 'Pınar Karşıyaka sıkıntılı', 'images\\b4.jpg', 'SPOR Toto Basketbol Ligi takımı Pınar Karşıyaka, FIBA Şampiyonlar Ligi B Grubu''nda da Maccabi Rand Media''ya deplasmanda 78-69 yenilerek ilk 2 mücadelesinde geriye düştü.\r\nPınar Karşıyaka, 10 maçta 6 galibiyette kalarak ikinci sıradaki yerini 7 galibiyete ulaşan Umana Reyer Venezia''ya kaptırdı. Pınar Karşıyaka, grup maçlarının bitimine 4 hafta kala üçüncü sırada yer alıyor.\r\n\r\nLigde 5 grupta ilk 4 sırayı elde eden takımlar ve en iyi 4 grup beşincisi 2''nci tura çıkacak. Grup liderleri ve ve en iyi 3 ikinci, 2''nci turda maç yapmadan direkt play off''a kalacak. Pazar günü Spor Toto Basketbol Ligi''nde Galatasaray Odeabank''ı yenerek kötü gidişe son vermek isteyen yeşil kırmızılılarda  Antrenör Nenad Markovic, İsrail''de sezon başından bu yana en kötü basketbolu oynadıklarını söyledi.', 'ERGİN KARATAŞ'),
(5, 'Ergin Ataman: Bize hiç saygı duyulmuyor!', 'images\\b5.jpg', 'Ergin Ataman, THY Euroleague''de Anadolu Efes ile oynanan karşılaşmanın ardından açıklamalarda bulundu. \r\nErgin Ataman, THY Euroleague''de Anadolu Efes ile oynanan karşılaşmanın ardından açıklamalarda bulundu. \r\n\r\nAtaman, Euroleague yönetimini eleştirirerek, "Dün akşam İstanbul’a yeni varabildik, Kazan’dan 5 saatte gelebildik. Geldik, antrenman bile yapamadan maça çıkıyoruz. Efes ise yine İstanbul takımı olarak İstanbul’da Zalgiris ile oynuyor. Bu ciddi bir haksızlık bize karşı. Şu ana kadar üç Türk takımıyla maç yaptık ve hepsinde de aynı durum oldu. Üçünde de öncesinde biz deplasmanda İstanbul dışında oynarken rakiplerimiz İstanbul’da kaldılar. Bize hiç saygı duymadıkları belli, hem bu şekilde hem de hakemlerinin tavırlarıyla. Biz belki bu ligin sponsorlarından değiliz ama saygıyı istiyoruz. Bu takım ve bu kulüp saygıyı hak ediyor. Özellikle İtalyan hakemin beni oyundan atış tarzı, “bençe bak sen, oyuna bak” tarzındaki tavırları gerçekten garipti." şeklinde konuştu.', 'İHSAN BAYÜLKEN'),
(6, 'Canik Belediyespor’da galibiyet sevinci', 'images\\b6.jpg', 'Bilyoner.com Kadınlar Basketbol Ligi ekiplerinden Canik Belediyespor’da, BOTAŞ karşısında alınan galibiyetinin sevinci yaşanıyor.\r\nGenel menajer Zafer Şimşek, AA muhabirine yaptığı açıklamada, Adana ekibi karşısında iyi mücadelenin ardından 72-70 galip gelerek ligdeki ikinci galibiyetlerini aldıklarını söyledi.\r\n\r\nİlk yarıda 23 sayı geride kalmalarına rağmen müsabakayı iyi oyunla galip bitirmeyi başardıklarını dile getiren Şimşek, "Takımımız ikinci yarıda 23 sayı geriden gelerek maçı kazandı. Oyuncularımızı azimle sergilediği güzel\r\noyundan dolayı tebrik ediyorum." dedi.\r\n\r\nŞimşek, oyunculara her zaman güvendiklerini vurgulayarak, "Takım kötü sonuçlar aldığı zaman da biz oyuncu değişikliğine gitmedik. Oyuncularımıza her zaman güvendik, güvenmeye devam edeceğiz. Bu galibiyet bizim için moral oldu.\r\n\r\nİnşallah devamını getiririz." diye konuştu. Samsun ekibi, ligin 10. haftasında 24 Aralık’ta Yakın Doğu Üniversitesi’ne konuk olacak.', 'AA'),
(7, 'Tek forma iki takım!', 'images\\b7.jpg', 'Kırklareli Belediyespor Basketbol Takımı, hafta sonu Küçükköy deplasmanında yaşanan forma krizi nedeniyle hükmen galip gelme şansını yakalasa da buna karşı çıktı, yedek formalarını rakibe verip, maçın oynanmasını sağladı.\r\nBuna en güzel örnek geçtiğimiz günlerde karşımıza çıktı... Erkekler Bölgesel Basketbol Ligi’nde hafta sonu oynanan Küçükköy-Kırklareli Belediyesi karşılaşmasından önce yaşananlar, sporda fair-play ruhunun her zaman ayakta kalacağını kanıtladı, gelecek adına hepimizi umutlandırdı...\r\n\r\nKurallar gereği, ev sahibi takımların maçlara açık, deplasman takımlarının ise koyu renk formayla çıkması gerekirken, Küçükköy Basketbol Takımı, diğer formalarını salona getirmediği için maça koyu renkle çıkmak istedi. Maçın gözlemcisi Yaşar Terzioğlu, iki takım oyuncularının yan yana fotoğrafını çekip hakemlere gösterdi. Maçın hakemleri Ahmet Basri Yıldız ile Merve Batur, bu şekilde karşılaşmayı oynatamayacaklarını belirtti. Küçükköy takımının belirtilen sürede açık renkli formaları getirememesi durumunda maçı Kırklareli’nin hükmen kazanacağı bildirildi.', 'İSMAİL ŞENOL'),
(8, 'CSKA - Fenerbahçe maçı saat kaçta?', 'images\\b8.jpg', 'Ligde 12 galibiyetle zirvede bulunan CSKA Moskova, tek yenilgisini Darüşşafaka Doğuş deplasmanında yaşadı. Daha önce CSKA Moskova ile 10 kez karşılaşan sarı-lacivertli takım, bu maçların 3’ünü kazandı, 7’sinde sahadan mağlubiyetle ayrıldı. Rus temsilcisi, tarafların iki sezondur Dörtlü Final’de karşılaştığı son iki maçta da Fenerbahçe’ye üstünlük sağladı.\r\n\r\nKarşılaşmayı Daniel Hierrezuelo (İspanya), Robert Lottermoser (Almanya) ve Jakub Zamojski (Polonya) hakem üçlüsü yönetecek.\r\n\r\nCSKA Moskova - Fenerbahçe maçı hangi kanalda saat kaçta?\r\n\r\nMoskova kentindeki Megasport Arena’da oynanacak karşılaşma, TSİ 20.00’de başlayacak ve LigTV 2’den canlı yayınlanacak. Ayrıca mücadeleyi Nesine.com''dan canlı izleyebilirsiniz. ', 'İSMAİL ŞENOL');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `futbol`
--

CREATE TABLE `futbol` (
  `id` int(11) NOT NULL,
  `haberbaslik` text COLLATE utf8_turkish_ci NOT NULL,
  `resimyolu` text COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `yazan` text COLLATE utf8_turkish_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `futbol`
--

INSERT INTO `futbol` (`id`, `haberbaslik`, `resimyolu`, `icerik`, `yazan`, `link`) VALUES
(1, 'Başakşehir İrfan Kahveci ile anlaştı.', 'images/f1.jpg', 'Medipol Başakşehir, adı Fenerbahçe''yle de anılan Gençlerbirliği''nin futbolcusu İrfan Can Kahveci''yle anlaşmaya vardı... Medipol Başakşehir Futbol Kulübü Asbaşkanı Mustafa Saral da daha önce yaptığı açıklamada Gençlerbirliği ile büyük ölçüde anlaştıklarını belirtmişti...\r\nFenerbahçe''nin transfer gündeminde yer alan İrfan Can, Medipol Başakşehir''le anlaştı. Medipol Başakşehir Futbol Kulübü Asbaşkanı Mustafa Saral, daha önce yaptığı açıklamada genç orta saha oyuncusunu kadrolarında görmek istediklerini belirtmişti.\r\n\r\nİşte Saral''ın açıklamaları:\r\n"İrfan Can Kahveci''nin transferi için Gençlerbirliği Kulübü ile büyük ölçüde anlaştık, artık son detayları görüşüyoruz. Bonservis bedeli olan 2 milyon avroyu biraz düşürmeye çalışıyoruz. Ayrıca bizden giderse Gençlerbirliği''nin talep ettiği yüzde 15''lik pay üzerinde de konuşuyoruz. İrfan Can ile de gelecek hafta başında görüşüp, bu transferi noktalamayı arzu ediyoruz."\r\n', 'MEHMET DEMİRKOL', ''),
(2, 'İşte Ryan Babel''in geliş tarihi.', 'images/f2.jpg', 'Beşiktaş''ın anlaşmaya vardığı Hollandalı futbolcu Ryan Babel, Cumartesi günü İstanbul''a geliyor.\r\nİspanya La Liga ekiplerinden Deportivo La Coruna''da forma giyen Ryan Babel''in siyah-beyazlı kulüp ile 2,5 yıllığına anlaştığı bilgisi verildi. Hollandalı futbolcuyla alakalı Beşiktaş cephesinden henüz resmi bir açıklama gelmezken, Babel''in Cumartesi günü akşam saatlerine doğru İstanbul''a geleceği bildirildi.', 'MEHMET DEMİRKOL', ''),
(3, 'Cumhurbaşkanı Erdoğan: “Biz tek milletiz".', 'images/f3.jpeg', 'Cumhurbaşkanı Recep Tayyip Erdoğan, "Şehitlere Saygı Maçı" öncesi Vodafone Arena''da yaptığı açıklamada tek millet vurgusu yaptı.\r\nSon dönemde yaşanan terör olayları karşısında bir araya gelen futbol ailesi, bu akşam Spor Toto Süper Lig''de forma giyen yerli ve yabancı futbolcuların katılımıyla "Şehitlere Saygı Maçı" adıyla gerçekleştirilen dayanışma gecesi düzenlendi. Cumhurbaşkanlığının himayesinde, Türkiye Futbol Federasyonu (TFF), Kulüpler Birliği Vakfı ve Türkiye Futbol Direktörü Fatih Terim''in koordinasyonunda Vodafone Arena''da yapılacak maç öncesi Kuran-ı Kerim okundu ve ardından dua edildi. Daha sonra Cumhurbaşkanı Recep Tayyip Erdoğan açıklamalarda bulundu. Erdoğan, "Sevgili İstanbullular. Değerli polis kardeşlerim. Hanımefendiler, beyefendiler. Sizleri en kalbi duygularımla, muhabbetle selamlıyorum. Türkiye, terörle mücadelede tarihinin en zor dönemlerinden birini yaşıyor.', 'METİN TEKİN', ''),
(4, 'Arda Turan şov yaptı! 3 gol ve 1 asist', 'images/f4.jpg', 'İspanya Kral Kupası''nda Hercules ile karşı karşıya gelen Barcelona''da gururumuz Arda Turan karşılaşmaya ilk 11''de çıktı. Milli futbolcumuz 3 gol ve 1 asist ile oynayarak 7-0''lık galibiyette en büyük pay sahibi oldu.\r\n\r\nMücadelede gol perdesini 37''de Lucas Digne açtı. Ardından Ivan Rakitic penaltıdan Barcelona''yı 2-0 öne geçirdi. İlk yarı bu skorla tamamlandı.\r\n\r\nİkinci yarıda Rafinha skoru 3-0''a getiren golü attı. Golün asistini Arda Turan yaptı. 55. dakikada sahneye Arda Turan çıktı ve attığı golle takımını 4-0 öne geçirdi. 73. dakikada Alcacer skoru 5-0''a getirdi.\r\n\r\n5-0''dan sonra Arda Turan yine şova devam etti. Milli gururumuz 86. ve 89. dakikalarda attığı gollerle maçı 7-0''a getiren isim oldu.', 'OĞUZ ÇETİN', ''),
(5, 'Tottenham, Lloris ile sözleşme yeniledi', 'images/f5.jpg', 'İngiltere Premier Lig takımlarından Tottenham, Fransız kalecisi Hugo Lloris’in sözleşmesini uzattı.\r\nKulüpten yapılan açıklamada, 29 yaşındaki file bekçisinin 2018-2019 sezonu sonunda bitecek sözleşmesinin, 2022’nin haziran ayına kadar uzatıldığı bildirildi.\r\n\r\nBaşkent ekibinin kaptanlığını yapan Lloris, Fransa Milli Takımı formasını 85 kez giydi.', 'ALİ ECE', ''),
(6, 'Chapecoense kupasını aldı', 'images/f6.jpg', 'Kolombiya’da meydana gelen uçak kazasında futbolcularını ve teknik heyetini kaybeden Brezilya’nın Chapecoense takımına Sudamericana Kupası verildi.\r\nGelecek yıl düzenlenecek Copa Libertadores turnuvasının kura çekimi öncesinde düzenlenen tören ile kupa, önceki başkan Sandro Pallaoro’nun kazada hayatını kaybetmesinin ardından Chapecoense takımının yeni başkanı Plinio David de Nes Filho’ya sunuldu.\r\n\r\nÖdül töreninde, organizasyonu şampiyon tamamlamalarına vesile olan finaldeki rakipleri Atletico Nacional’e teşekkür eden Başkan Nes Filho, "Ortak kazandığımız kupada büyük bir jest yaparak bize bu olanağı veren Atletico Nacional Kulübüne minnettarlığımı sunarım. Gerçekten çok nazik ve asil bir hareketti." değerlendirmesinde bulundu.', 'ALİ ECE', ''),
(7, 'Gaziantepspor kafilesi yolda kaldı!', 'images/f7.jpg', 'Hafta sonu Beşiktaş''la deplasmanda karşılaşacak Gaziantepspor''da takım kafilesi Adana''ya hareket ederken, kötü hava şartları nedeniyle yolda kaldı.\r\nSüper Lig''de cumartesi akşamı Beşiktaş''a konuk olacak Gaziantepspor''da aksilikler bitmiyor.\r\nYaklaşık 3 gündür kar nedeniyle antrenman yapamayan Kırmızı-Siyahlı ekip 2. şoku Adana yolculuğu sırasında yaşadı.\r\nKötü hava şartları nedeniyle Adana''dan İstanbul''a gelecek Gaziantepspor kafilesi, otobüsle yapılan Adana yolculuğu sırasında yoğun kar yağışının kurbanı oldu ve yolda kaldı.', 'OĞUZ ÇETİN', ''),
(8, 'Rıdvan Dilmen’in acı günü', 'images/f8.jpg', 'Eski milli futbolcu Rıdvan Dilmen, annesi Döndü Makbule Dilmen’in hayatını kaybettiği Denizli’deki hastaneye geldi.\r\nAnnesinin vefat ettiği hastanenin yetkilileri ile görüşen Rıdvan Dilmen, daha sonra gazetecilere açıklamada bulundu.\r\n\r\n"Annem ailemizin direğiydi." diyen Dilmen, şunları söyledi:\r\n\r\n"41 yıl önce babam rahmetli olduktan sonra bütün yük ona kalmıştı. Her anne değerli, en önemli varlıklar annelerdir. O yüzden acımız büyük. Annem benim arkadaşımdı, annemden çok arkadaşımdı. Bütün annelerin ellerinden öperim, saygılar sunarım. Hastanemiz de sağ olsun çok ilgilendi. Allah’ın takdiri tabii, 5 dakika önce 5 dakika sonra olmuyor. Çok özleyeceğiz annemi."', 'METİN TEKİN', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicikayit`
--

CREATE TABLE `kullanicikayit` (
  `ad` text COLLATE utf8_turkish_ci NOT NULL,
  `soyad` text COLLATE utf8_turkish_ci NOT NULL,
  `email` text COLLATE utf8_turkish_ci NOT NULL,
  `kadi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `statu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanicikayit`
--

INSERT INTO `kullanicikayit` (`ad`, `soyad`, `email`, `kadi`, `sifre`, `statu`) VALUES
('mücahit', 'seba', '', 'genesis', '1234', 1),
('asd', 'gfdgfd', 'hgfhgfhgf', 'ad', 'a', 0),
('a', 'a', 'a', 'a', 'a', 0),
('c', 'c', 'c', 'c', 'c', 0),
('deneme', 'deneme', 'deneme', 'deneme', '12', 0),
('n', 'n', 'n', 'n', 'n', 0),
('deneme', 'd', 'd', 'dfg', 'd', 0),
('w', 'w', 'w', 'w', 'w', 0),
('', '', '', '', '', 0),
('q', 'q', 'q', 'q', 'q', 0),
('Mücahit', 'seba', 'asd', 'y', 'y', 0),
('yunus', 'dönmez', 'fsafas', 'revios', '1234', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliderlar`
--

CREATE TABLE `sliderlar` (
  `id` int(11) NOT NULL,
  `resimyolu` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sliderlar`
--

INSERT INTO `sliderlar` (`id`, `resimyolu`) VALUES
(1, 'C:\\xampp\\htdocs\\proje\\images\\s1'),
(2, 'C:\\xampp\\htdocs\\proje\\images\\s2'),
(3, 'C:\\xampp\\htdocs\\proje\\images\\s3'),
(4, 'C:\\xampp\\htdocs\\proje\\images\\s4'),
(5, 'C:\\xampp\\htdocs\\proje\\images\\s5');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `voleybol`
--

CREATE TABLE `voleybol` (
  `id` int(11) NOT NULL,
  `haberbaslik` text COLLATE utf8_turkish_ci NOT NULL,
  `resimyolu` text COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `yazan` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `voleybol`
--

INSERT INTO `voleybol` (`id`, `haberbaslik`, `resimyolu`, `icerik`, `yazan`) VALUES
(1, 'Friedrichshafen-Arkas Spor: 2-3', 'images\\v1.jpg', 'Arkas Spor Erkek Voleybol Takımı, CEV Şampiyonlar Ligi C Grubu ikinci maçında Alman ekibi VfB Friedrichshafen’i deplasmanda 3-2 yendi.\r\nArkas Spor Erkek Voleybol Takımı, CEV Şampiyonlar Ligi C Grubu ikinci maçında Alman ekibi VfB Friedrichshafen’i deplasmanda 3-2 yendi.\r\n\r\nBu sonuçla grupta ilk galibiyetini alan Arkas Spor, üçüncü maçında 18 Ocak 2017’de deplasmanda Fransa’nın Paris Volley takımı ile karşılaşacak.\r\n\r\nFriedrichshafen: 2 - Arkas Spor: 3\r\nSalon: ZF Arena\r\nHakemler: Alin Mateizer (Romanya), Agnieszka Michlic (Polonya)\r\nVfB Friedrichshafen: Rousseaux, Klein, Finger, Mustedanovic, Takvam, Tischer (Protopsaltis, Malescha, Steuerwald, Sossenheimer, Kocian)\r\nArkas Spor: Mauricio, Mustafa Koç, Sanders, Gökhan Gökgöz, Hasan Sıkar, Sanchez (Bravo, Yiğit Gülmezoğlu, Hakkı Çapkınoğlu)\r\nSetler: 21-25, 23-25, 25-22, 25-19, 12-15\r\nSüre: 128 dakika (27, 29, 28, 25, 19)', 'AA'),
(2, 'Belogorie Belgorod-Halkbank: 3-0', 'images\\v2.jpg', 'Voleybolda Halkbank, CEV Erkekler Avrupa ŞampiyonlarLigi E Grubu''ndaki ikinci maçında deplasmanda Rus Belogorie Belgorod''a 3-0 mağlup oldu.\r\nVoleybolda Halkbank, CEV Erkekler Avrupa ŞampiyonlarLigi E Grubu''ndaki ikinci maçında deplasmanda Rus Belogorie Belgorod''a 3-0 mağlup oldu.\r\n\r\nSalon: Sports Palace Cosmos\r\nHakemler: Konstantinos Voudouris (Yunanistan), Aleksandar Vinaliev(Bulgaristan)\r\nBelogorie Belgorod: Zhigalov, Tetyukhin, Teryomenko, Poroshin, Khtey,Musersky (Martynyuk, Danilov)\r\nHalkbank: Resul Tekeli, Miljkovic, Akhrem, Faik Samed Güneş, MustafaRamazanoğlu, Burutay Subaşı (Hasan Yeşilbudak, Emre Batur, Abdullah Çam, Kooy)\r\nSetler: 25-14, 30-28, 25-21\r\nSüre: 87 dakika (24, 38, 25)', 'AA'),
(3, 'Karşıyaka''dan ''Bir parke de sen koy'' Sloganı', 'images\\v3.jpg', '''Bir parke de sen koy'' sloganıyla yapılmaya başlanan voleybol altyapı salonunda hafriyat ve dolgu işleri tamamlandı.\r\nKarşıyaka''da voleybol şubesinin Çiğli Selçuk Yaşar Tesisleri''ndeki kullanılmayan yüzme havuzunun yerine, ''Bir parke de sen koy'' sloganıyla yaptırmaya başladığı voleybol altyapı salonunda hafriyat ve dolgu işleri tamamlandı.\r\nZemini sağlamlaştırıldıktan sonra salonun temeli atılacak. Salonun yapımı için 15 ton demire ihtiyaç olduğu belirtildi. Şimdiye kadar inşaat için camiadan 4 bin TL ve 2 ton demir desteği alan şube, katkıların artmasını bekliyor.', 'AA'),
(4, 'Fenerbahçe - Seramiksan: 3-1', 'images\\v4.jpg', 'Voleybol Vestel Venus Sultanlar Ligi’nin 10. hafta maçında Fenerbahçe, Seramiksan’ı 3-1 yendi.\r\nVoleybol Vestel Venus Sultanlar Ligi’nin 10. hafta maçında Fenerbahçe, Seramiksan’ı 3-1 yendi.\r\n\r\nSalon: Metro Enerji\r\nHakemler: Ramazan Çevik, Recep Karakoç\r\nFenerbahçe: Natalia, Ergül Avcı, Polen Uslupehlivan, Kim Koung, Eda Dündar, Tomkom (Melis Yılmaz, Merve Dalbeler, Meliha İsmailoğlu, Dicle Babat, Şeyma Ercan, Balkestein, Ezgi Dilik)\r\nSeramiksan: Selime İlyasoğlu, Arnet, Meryem Boz, Nizetich, Ceyda Demirhan, Cansu Aydınoğulları (Sedef Sazlıdere, Gamze Ergin, Elif Kavrar, Sıla Çalışkan, Desisleva)\r\nSetler: 23-25, 25-15, 25-18, 25-21\r\nSüre: 107 dakika (30, 23, 26, 28)\r\n', 'AA'),
(5, 'Eczacıbaşı VitrA-Sarıyer Belediyespor: 3-0', 'images\\v5.jpg', 'Voleybol Vestel Venus Sultanlar Ligi’nin 10. hafta maçında Eczacıbaşı VitrA, Sarıyer Belediyespor’u 3-0 yendi.\r\nVoleybol Vestel Venus Sultanlar Ligi’nin 10. hafta maçında Eczacıbaşı VitrA, Sarıyer Belediyespor’u 3-0 yendi.\r\n\r\nEczacıbaşı VitrA: 3 - Sarıyer Belediyespor: 0 \r\nSalon: Eczacıbaşı\r\nHakemler: Erol Akbulut, Yılmaz Duman\r\nEczacıbaşı VitrA: Larson, Büşra Kılıçlı, Boskovic, Kosheleva, Ceylan Arısan, Nilay Özdemir (Gülden Kuzubaşıoğlu, Neslihan Güler, Thaisa, Hande Baladin)\r\nSarıyer Belediyespor: Arelya Karasoy, Esra Kırıcı, Crimes, Çağla Erdem, Yaneva, Melike Yılmaz (Funda Bilgi, Selin Uygur, Fawcett, Zülfiye Derinbay, Miniriye Vatansever)\r\nSetler: 25-18, 26-24, 25-18\r\nSüre: 84 dakika (27, 32, 25)', 'AA'),
(6, 'Arkas Spor-İBB: 1-3', 'images\\v6.jpg', 'Voleybol Efeler Ligi’nde İstanbul Büyükşehir Belediyespor, deplasmanda Arkas Spor’u 3-1 mağlup etti.\r\nVoleybol Efeler Ligi’nde İstanbul Büyükşehir Belediyespor, deplasmanda Arkas Spor’u 3-1 mağlup etti.\r\n\r\nArkas Spor-İstanbul Büyükşehir Belediyespor: 1-3\r\nSalon: Atatürk Voleybol\r\nHakemler: Ozan Sarıkaya, Arzu Emiroğlu\r\nArkas Spor: Sanders, Mauricio, Mustafa Koç, Sanchez, Gökhan Gökgöz, Hasan Sıkar (Ahmet Karataş, Caner Ergül, Hakkı Çapkınoğlu, Yiğit Gülmezoğlu, Muhammet Kaya)\r\nİstanbul Büyükşehir Belediyespor: Kadir Cin, Özkan Hayırlı, Price, Marechal, Mert Matic, Caner Pekşen (Burak Mert, Arslan Ekşi, Rouzier)\r\nSetler: 23-25, 23-25, 25-23, 21-25\r\nSüre: 111 dakika (27, 28, 31, 25)', 'AA'),
(7, 'Halkbank-VakıfBank: 0-3', 'images\\v7.jpg', 'Voleybol Vestel Venus Sultanlar Ligi’nde VakıfBank, deplasmanda Halkbank’ı 3-0 mağlup etti.\r\nVoleybol Vestel Venus Sultanlar Ligi’nde VakıfBank, deplasmanda Halkbank’ı 3-0 mağlup etti.\r\n\r\nHalkbank: 0 - VakıfBank: 3 \r\nSalon: TVF Başkent\r\nHakemler: Mehmet Demirdelen, Hatice Yıldız Özmen\r\nHalkbank: Seda Zeynep Uslu, Fulden Ural, Hande Naz Şimşek, Tutku Burcu Yüzgenç, Salas, Iuliia, (Derya Çayıngan-Eylül Akarçeşme, Duygu Nur Doğan, Ceyda Durukan, Aslıhan Kılıç) VakıfBank: Melis Ayşe Gürkaynak, Kimberly, Rasic, Naz Aydemir Akyol, Zhu, Melis Durul (Gizem Hatice Örge, Gözde Kırdar, Özgenur Yurtdagülen, Cansu Çetin)\r\nSüre: 80 dakika (31, 25, 24)\r\nSetler: 25-27, 18-25, 17-25\r\n', 'AA'),
(8, 'İdmanocağı: 3 - Nilüfer Belediyespor: 2', 'images\\v8.jpg', 'Voleybol Vestel Venus Sultanlar Ligi’nde İdmanocağı, Nilüfer Belediyespor’u 3-2 yendi.\r\nVoleybol Vestel Venus Sultanlar Ligi’nde İdmanocağı, Nilüfer Belediyespor’u 3-2 yendi.\r\n\r\nSalon: Trabzon 19 Mayıs\r\nHakemler: Zeki Bocutcu, Mutlu Seçal\r\nİdmanocağı: Sanchiz, Birgül Güler, Ece Hocaoğlu, Kübra Kegan, Kicka, Neşve Büyükbayram (Fatma Beyaz, Meta Enko, Aycanaz İhitayroğlu)\r\nNilüfer Belediyespor: Trushkina, Kozlova, Cemre Janset Erkul, Ceyda Aktaş, Duygu Düzceler, Neslişah Durgun (Selen Asıcı Kafadar, Dilara Bağcı, Merve Elif Kapıkıran)\r\nSetler: 21-25, 20-25, 25-20, 25-23, 16-14\r\nSüre: 135 dakika (29, 29, 27, 29, 21)', 'AA');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(11) NOT NULL,
  `kuladi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yorum` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `haberid` int(11) NOT NULL,
  `habertipi` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `kuladi`, `yorum`, `haberid`, `habertipi`) VALUES
(39, 'deneme', '123', 2, 'basketbol'),
(40, 'mücahit', '1.voleybol haberi\r\n', 1, 'voleybol'),
(41, 'mojo', 'westbrook', 1, 'basketbol'),
(42, 'kullanıcı', '4.futbol haberi', 4, 'futbol');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `basketbol`
--
ALTER TABLE `basketbol`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `futbol`
--
ALTER TABLE `futbol`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sliderlar`
--
ALTER TABLE `sliderlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `voleybol`
--
ALTER TABLE `voleybol`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `basketbol`
--
ALTER TABLE `basketbol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `futbol`
--
ALTER TABLE `futbol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `sliderlar`
--
ALTER TABLE `sliderlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `voleybol`
--
ALTER TABLE `voleybol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
