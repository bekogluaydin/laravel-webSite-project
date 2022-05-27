-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 May 2021, 13:12:31
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `patijoy_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryID` bigint(20) UNSIGNED NOT NULL,
  `cityPlateNo` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0: Pasif | 1: Aktif',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `articles`
--

INSERT INTO `articles` (`id`, `categoryID`, `cityPlateNo`, `userID`, `title`, `image`, `content`, `hit`, `status`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 76, 1, 'Non tempore molestiae ut dolore sint deleniti earum earum.', 'https://via.placeholder.com/800x400.png/0044ee?text=cats+patiJoy+animi', 'Nostrum saepe iusto quia ut ullam praesentium commodi. Assumenda autem non autem fuga ad atque. Et maiores aut aut. Omnis temporibus voluptas et aliquam. Temporibus et quas nihil quo aspernatur quia. Minima quo et ipsam quisquam. Sapiente maiores omnis ipsa qui tenetur unde ut. Molestiae nesciunt aut quo saepe rerum.', 62, 1, 'non-tempore-molestiae-ut-dolore-sint-deleniti-earum-earum', NULL, '2010-03-24 16:35:58', '2021-04-05 11:40:58'),
(2, 6, 33, 1, 'Voluptas animi corporis facilis quo dolorum cupiditate sed iure.', 'https://via.placeholder.com/800x400.png/0022bb?text=cats+patiJoy+et', 'Aut nihil ut dolores doloribus. Explicabo non sed sed. Possimus totam qui velit. Placeat vel nostrum aperiam provident nihil. Recusandae in id ea provident deserunt qui. Incidunt temporibus sit beatae aliquam.', 2, 1, 'voluptas-animi-corporis-facilis-quo-dolorum-cupiditate-sed-iure', NULL, '1994-04-28 08:06:45', '2021-04-05 11:41:05'),
(3, 4, 13, 1, 'Qui rerum ab amet numquam.', 'https://via.placeholder.com/800x400.png/006655?text=cats+patiJoy+delectus', 'Sunt qui et accusantium dolor hic cupiditate non. Illum eligendi deleniti expedita et nemo aperiam ut. Perferendis ipsum possimus iste commodi quibusdam modi dolorum libero. Aut et voluptas est necessitatibus. Velit ex sed deleniti dolores. Amet ad modi non provident. Amet quos id odit laudantium quia. Sequi ut nesciunt ut corporis.', 98, 1, 'qui-rerum-ab-amet-numquam', NULL, '2011-03-11 06:39:16', '2021-04-10 16:16:02'),
(4, 6, 27, 1, 'Cupiditate voluptatibus itaque et officiis.', 'https://via.placeholder.com/800x400.png/00aa66?text=cats+patiJoy+esse', 'Culpa sit velit similique iste. Molestias facere et aut quam aliquam. Incidunt tempore animi exercitationem sunt. Ut aspernatur aliquid corporis ut explicabo sit ad. Quibusdam aliquid temporibus enim ipsa rerum sint.', 10, 1, 'cupiditate-voluptatibus-itaque-et-officiis', NULL, '1972-09-18 07:32:38', '2021-05-01 12:33:38'),
(5, 1, 39, 1, 'Web Site Tanıtımı Hk.', 'uploads/web-site-tanitimi-hk.jpg', '<p>Deneme Yazıdır Deneme Yazıdır Deneme Yazıdır Deneme Yazıdır Denem Yazıdır</p>', 19, 1, 'web-site-tanitimi-hk', NULL, '2021-04-05 10:31:11', '2021-04-10 15:09:23'),
(6, 2, 1, 1, 'Technology News, TechnoVadi | Latest Technology News, TechnoVadi', 'uploads/technology-news-technovadi-latest-technology-news-technovadi.png', '<p><b>heeheaeeheehadssssssssssssssssssssssssssssssss</b></p>', 1, 1, 'technology-news-technovadi-latest-technology-news-technovadi', NULL, '2021-04-05 11:54:41', '2021-04-10 16:32:21'),
(7, 1, 1, 1, 'Technology News, TechnoVadi | Latest Technology News, TechnoVadi', 'uploads/technology-news-technovadi-latest-technology-news-technovadi.jpg', '<p style=\"-webkit-font-smoothing: antialiased; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; position: relative; text-align: center; color: rgb(20, 35, 58); font-family: Segoe, &quot;Segoe UI&quot;, &quot;DejaVu Sans&quot;, &quot;Trebuchet MS&quot;, Verdana, sans-serif; font-size: 18px;\">O kadar güzel gülüyordu ki, sevmesem ziyan olacaktı.</p><p style=\"-webkit-font-smoothing: antialiased; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; position: relative; text-align: center; color: rgb(20, 35, 58); font-family: Segoe, &quot;Segoe UI&quot;, &quot;DejaVu Sans&quot;, &quot;Trebuchet MS&quot;, Verdana, sans-serif; font-size: 18px;\">Hayallerimize tutunsak mesela, yarın sabah gidip nikâh kıysak, ilerleyen zamanlarda burnu sana benzeyen, çenesinin kıvrımını benden alan bir çocuğumuz olsa, sevgisini senden, affetmeyi benden öğrense, bilgiyi senden doğruyu benden alsa hiç fena olmazdı. Çok bir şey istemiyorum sana benzesin yeter, gerisi teferruat.</p>', 2, 1, 'technology-news-technovadi-latest-technology-news-technovadi', NULL, '2021-04-10 15:44:39', '2021-04-10 15:51:39'),
(8, 6, 34, 1, 'Deniz Yıldızının Hikayesi', 'uploads/deniz-yildizinin-hikayesi.JPG', '<p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">Bir adam sabaha karşı okyanus kenarında yürüyormuş. Birden binlerce deniz yıldızının karaya vurduğunu görmüş. Daha da yaklaştığı zaman bir çocuk fark etmiş. Çocuk deniz yıldızlarını tek tek alarak denize geri götürüyormuş.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\"> Adam çocuğa yaklaşarak sormuş:</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\"> -Bu deniz yıldızlarını neden denize geri atıyorsun?</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\"> Çocuk cevap vermiş:</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\"> -Güneş yükseliyor. Birazdan sular çekilecek ve bu deniz yıldızları susuzluktan ölecekler.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\"> Adam bu duruma şaşırmış:</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\"> -Sahil çok uzun ve çok fazla deniz yıldızı var. Hepsini kurtaramazsın. Ne fark eder ki?</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\"> Çocuk adamı dinlemiş. Daha sonra sahilden bir deniz yıldızı daha alarak denize bırakmış. Sonra adama dönerek:</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\"> -Bak görüyor musun bu deniz yıldızı için fark etti demiş.</p>', 2, 1, 'deniz-yildizinin-hikayesi', NULL, '2021-04-10 15:46:46', '2021-04-10 15:47:59'),
(9, 2, 6, 5, 'Akrep Hikayesi', 'uploads/akrep-hikayesi.jpeg', '<p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;Hintli bir adam suyun içinde zar zor ilerlemeye çalışıyormuş. Bu sırada yanına bir&nbsp;<a class=\"inline-keyword\" href=\"https://www.hurriyet.com.tr/mahmure/astroloji/akrep-burcu/\" target=\"_blank\" style=\"transition: none 0s ease 0s; border: 0px; line-height: 1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(48, 97, 243); display: inline-block;\">akrep</a>&nbsp;yanaşmış. Adam akrebi kurtarmak istemiş ve parmağını ona doğru uzatmış. Fakat akrep adamın bu hamlesinden sonra adamı sokmuş. Hintli adam bu duruma çok şaşırmış fakat yine de tekrardan parmağını akrebe doğru uzatmış. Akrep tekrar adamın parmağını sokmuş.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;Bu olayı gören başka bir adam kendisini sürekli sokan bu akrebi kurtarmaktan vazgeçmesi gerektiğini söylemiş. Hintli adam buna şu şekilde cevap vermiş:</p><div class=\"cf\" style=\"font-family: pt_sansregular, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; line-height: 1; margin: 0px 0px 15px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-pack: justify; justify-content: space-between; color: rgb(33, 33, 33); font-size: 19px;\"><div id=\"/9927946/hurriyet/diger/body_300x250_3\" class=\"adRenderer dfp   \" style=\"transition: none 0s ease 0s; border: 0px; line-height: 1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; text-align: center;\"></div><div id=\"/9927946/hurriyet/diger/body_300x250_3a\" class=\"adRenderer dfp   \" style=\"transition: none 0s ease 0s; border: 0px; line-height: 1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; text-align: center;\"></div><div id=\"/9927946/hurriyet_mobilsite/diger/haberici_300x250_3\" class=\"adRenderer dfp   \" style=\"transition: none 0s ease 0s; border: 0px; line-height: 1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; text-align: center;\"></div></div><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;-Akreplerin doğasında sokmak vardır. Fakat ben insanım. İnsanın doğasında ise sevmek vardır. Akrebin doğasında sokmak var diye kendi doğamda olan sevmekten mi vazgeçeyim?</p>', 3, 1, 'akrep-hikayesi', NULL, '2021-04-10 15:48:37', '2021-04-10 15:58:37'),
(10, 4, 13, 5, 'Çok Mutsuz Bir Kralın Hikayesi', 'uploads/cok-mutsuz-bir-kralin-hikayesi.webp', '<p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">Zamanın birinde oldukça zengin olan bir kral yaşarmış. Fakat bu kral çok mutsuzmuş. Çok uğraşsa da ne var ki asla mutlu olamıyormuş.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;Ülkede bulunan bilge bir kişiyi huzura çağırmış ve nasıl mutlu olabileceğini sormuş. Bilge şöyle cevap vermiş:</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;-Saygıdeğer kralım eğer mutsuzluktan tamamen kurtulmayı istiyorsanız mutlu bir adam bulmanız gerek. O adamın gömleğini giydiğiniz zaman mutlu olursunuz.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;Bunu duyan kral hemen adamlarına emir vermiş ve ülkede mutlu bir adam bulmalarını istemiş. Adamları aramış taramış fakat mutlu bir adam bulamamış. Hepsinin kendince dertleri ve mutsuzlukları varmış. Adamlar mutlu bir adam bulamadan saraya dönerlerken oldukça eski bir kulübeden şöyle dua edildiğini işitmişler:</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;-Allah\'ım şükürler olsun bugünde karnım doydu, sağlığımda pek yerinde, şimdiye kadar hep rızkımı verdin bu dünya da benden mutlusu yok.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;Bunu duyan kralın adamları mutlu birini buldukları için oldukça sevinmişler. Hemen adamın gömleğini almalıyız ve krala götürmeliyiz diye düşünmüşler. Ancak kulübeye girdikleri zaman adamın üzerinde bir gömlek bile olmadığının farkına varmışlar.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;Hayat devam ederken insanlar her zaman mutluluğu ararlar. Sahip olduklarıyla yetinmeyip her zaman daha fazlasını isteyen kişiler ise asla mutlu olamaz. Mutluluğu kendi içinde arayan kişiler her zaman mutlu olur.</p>', 1, 1, 'cok-mutsuz-bir-kralin-hikayesi', NULL, '2021-04-10 15:50:39', '2021-04-10 15:50:48'),
(11, 6, 12, 5, 'Tevazu Üzerine Hikaye', 'uploads/tevazu-uzerine-hikaye.jpg', '<p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">Adamın biri kötü yoldan para elde eder ve bir inek alır. Daha sonra bundan çok pişman olur ve bunu iyi bir şeye çevirmek için bu ineği Hacı Bektaşi Veli\'nin dergahına bağışlamayı düşünür. Dergahlar o zamanlar aş evi şeklinde de kullanılan yerlerdi.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;Adam Hacı Bektaşi Veli\'nin dergahına gider ve olanları anlatır. İneği dergaha bağışlamak istediğini söyler. Hacı Bektaşi Veli helal olmadığını söyleyerek kurbanı istemez.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;Bunu duyan adam ineğini alır ve Mevlevi dergahına gider. Aynı şeyleri Mevlana\'ya da anlatır. Mevlana ise büyük bir hoşgörü ile ineği kabul eder. Adam durumu Hacı Bektaşi Veli\'ye de anlattığını. Fakat onun ineği kabul etmediğini söyler. Bunun üzerine Mevlana şöyle yanıt verir.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;-Biz karga isek Hacı Bektaşi Veli şahindir. Bizim konduğumuz leşe o konmaz. Bu nedenle de biz bu hediyeyi kabul etsek de o kabul etmez.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;Adam bunun üzerine tekrar Hacı Bektaşi Veli\'nin dergahına gider. Durumu anlatır. Kendisinin kabul etmediği ineği Mevlana\'nın kabul ettiğini söyler. Hacı Bektaşi Veli ise şöyle yanıt verir:</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;-Bizim gönlümüz su birikintisi iken Mevlana\'nın ki bir okyanustur. Bu sebeple bir damla ile bizim gönlümüz kirlenir fakat onun gönlü kirlenmez. Bu sebeple Mevlana senin hediyeni kabul etti der.</p>', 0, 1, 'tevazu-uzerine-hikaye', NULL, '2021-04-10 15:53:55', '2021-04-10 16:10:16'),
(12, 5, 13, 2, 'Dünyanın En Büyük Depremi Nerede, Ne Zaman Ve Kaç Şiddetinde Oldu? Dünya\'da Yaşanan En Büyük Depremler Listesi', 'uploads/dunyanin-en-buyuk-depremi-nerede-ne-zaman-ve-kac-siddetinde-oldu-dunyada-yasanan-en-buyuk-depremler-listesi.jpg', '<p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\"><span style=\"font-family: &quot;Helvetica Neue Bold&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; line-height: 30px; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; font-weight: 700;\">Dünyanın En Büyük Depremi Nerede Oldu?</span></p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">Yer kabuğunda beklenmedik bir anda ortaya çıkan enerji ile beraber yaşanan deprem, çok ciddi sarsıntılara yol açmakta ve binalara hasar verirken üstelik yıkmaktadır. Özellikle aniden gelişen ve saniyeler içerisinde çok ciddi bir etkiler yaratan deprem, insanlarda en büyük korku ve paniği yaratan doğal felaketler içerisinde geliyor. Bu bağlamda dünyanın en büyük depremi yapılan araştırmalar ile beraber, Şili\'de meydana gelen deprem olarak belirlenmiş durumda.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\"><span style=\"font-family: &quot;Helvetica Neue Bold&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; line-height: 30px; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; font-weight: 700;\">Dünyanın En Büyük Depremi Ne Zaman Oldu?</span></p><div class=\"cf\" style=\"font-family: pt_sansregular, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; line-height: 1; margin: 0px 0px 15px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-pack: justify; justify-content: space-between; color: rgb(33, 33, 33); font-size: 19px;\"><div id=\"/9927946/hurriyet/diger/body_300x250_2-2000\" class=\"adRendererInfinite dfp   \" data-path=\"/9927946/hurriyet/diger/body_300x250_2\" data-divid=\"/9927946/hurriyet/diger/body_300x250_2-2000\" data-size=\"[[300, 250], [250, 250], [336, 280]]\" data-datasizemapping=\"[[[1200, 100], [[300, 250], [336, 280], [250, 250]]],[[992, 100], [[300, 250], [250, 250]]],[[0, 0], []]]\" data-device-type=\"desktop\" data-is-oop=\"False\" data-is-interactive=\"False\" data-slotname=\"\" style=\"transition: none 0s ease 0s; border: 0px; line-height: 1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; text-align: center;\"></div><div id=\"/9927946/hurriyet/diger/body_300x250_2a-2000\" class=\"adRendererInfinite dfp   \" data-path=\"/9927946/hurriyet/diger/body_300x250_2a\" data-divid=\"/9927946/hurriyet/diger/body_300x250_2a-2000\" data-size=\"[[300,250], [250,250],[336,280]]\" data-datasizemapping=\"[[[1500, 100],[[300, 250], [336,280],[250,250]]],[[0, 0], []]]\" data-device-type=\"desktop\" data-is-oop=\"False\" data-is-interactive=\"False\" data-slotname=\"\" style=\"transition: none 0s ease 0s; border: 0px; line-height: 1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; text-align: center;\"></div><div id=\"/9927946/hurriyet_mobilsite/diger/haberici_300x250_2-2000\" class=\"adRendererInfinite dfp   \" data-path=\"/9927946/hurriyet_mobilsite/diger/haberici_300x250_2\" data-divid=\"/9927946/hurriyet_mobilsite/diger/haberici_300x250_2-2000\" data-size=\"[[300, 250], [250, 250], [336, 280], [320, 480], [320, 50], [320, 100], &quot;fluid&quot;]\" data-datasizemapping=\"[]\" data-device-type=\"mobile\" data-is-oop=\"False\" data-is-interactive=\"False\" data-slotname=\"\" style=\"transition: none 0s ease 0s; border: 0px; line-height: 1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; text-align: center;\"></div></div><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">Ciddi hasar vermesi ile beraber büyük bir yıkıma neden olan dünyanın en büyük depremi 22 Mayıs 1960 yılında gerçekleşti. Bir anda ortaya çıkarak oluşturduğu şiddet ile beraber açığa çıkan yüksek enerji, Güney Şili’de yaşandı ve 1960 senesinde meydana geldi. Bu sebepten dolayı bu depreme, ‘1960 Valdivia depremi’ gelmektedir.</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">&nbsp;</p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\"><span style=\"font-family: &quot;Helvetica Neue Bold&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; line-height: 30px; margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; font-weight: 700;\">Dünyanın En Büyük Depremi Kaç Şiddetinde Oldu?</span></p><p style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 19px; line-height: 30px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; transition: none 0s ease 0s; border: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px 40px 0px 0px; -webkit-tap-highlight-color: transparent; vertical-align: baseline; color: rgb(33, 33, 33);\">Dünyanın en büyük depremi açısından en merak edilen konulardan biri kaç şiddetinde yaşanmış olduğudur. Çünkü depremler her 1 derece artması ile beraber gücü 2 katına çıkar. Depremleri birebir yaşayan insanlar ise yüksek şiddet üzerinden dünya çapında yaşanan depremleri merak ediyor. Bu bağlamda 22 Mayıs 1960 yılında Güney Şile\'de meydana gelen dünyanın en büyük depremi 9,5 şiddetindeydi.</p>', 3, 1, 'dunyanin-en-buyuk-depremi-nerede-ne-zaman-ve-kac-siddetinde-oldu-dunyada-yasanan-en-buyuk-depremler-listesi', NULL, '2021-04-10 15:54:47', '2021-04-10 16:28:02'),
(13, 5, 8, 2, 'TÜRKİYE’DE OKUL ÖNCESİNDE OYUN İLE İLGİLİ YAPILAN LİSANSÜSTÜ TEZLERİN İNCELENMESİ', 'uploads/turkiyede-okul-oncesinde-oyun-ile-ilgili-yapilan-lisansustu-tezlerin-incelenmesi.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 12.6px;\">Oyun çocuğun isteklerini, amaçlarını anlatan, onu isteklerine kavuşturan ve hayata hazırlayan en etkili araçlardan biridir. Çocuk, yaşam için gerekli davranışları, bilgi ve becerileri oyun içinde kendiliğinden öğrenmektedir. Bir çocuğun bedensel ve ruhsal yönden sağlıklı gelişimi ve eğitimi için oyun, beslenme ve uyku kadar önemli bir ihtiyaçtır. Bu nedenle okul öncesi dönem çocuklarının gelişimi açısından önemli olan oyun ile ilgili yapılan çalışmaların incelenmesi ve çocuklar üzerindeki etkilerinin araştırılması önemlidir. Yapılan literatür incelemelerinde, okul öncesinde oyun alanında yapılmış yüksek lisans ve doktora tezlerinde çalışılan konuların yönelimlerini belirleyen kapsamlı bir analiz çalışmasının bulunmadığı görülmektedir. Bu noktadan hareketle araştırmada, Türkiye’de okul öncesinde oyun ile ilgili yapılmış lisansüstü eğitim tezlerinin tematik dağılımlarının incelenmesi amaçlanmıştır. Döküman analizi yöntemi kullanılan araştırmanın evrenini, YÖK Yayın Dokümantasyon Daire Başkanlığı tarafından arşivlenen, konu bölümü oyun olarak dizginlenen 1392 lisansüstü eğitim tezi oluşturmaktadır. Araştırmanın örneklemine, okul öncesinde oyun alanında yapılmış toplam 32 yüksek lisans, 6 doktora tezi olmak üzere toplam 38 lisansüstü tez dâhil edilmiştir. Yapılan çalışmaların incelenmesi sonucunda çalışmalarda dil, bilişsel, sosyal-duygusal gelişim, öz bakım becerileri, kavram gelişimi, matematik eğitimi, iletişim, sosyal ve bakış açısı alma becerileri, özel eğitimde oyun gibi temalara yer verildiği, oyun uygulamaları konusunda öğretmen, yönetici ve ebeveyn görüşlerinin incelendiği ayrıca ölçek uyarlama çalışmalarına yer verildiği belirlenmiştir.</span><br></p>', 1, 1, 'turkiyede-okul-oncesinde-oyun-ile-ilgili-yapilan-lisansustu-tezlerin-incelenmesi', NULL, '2021-04-10 15:57:37', '2021-04-10 16:10:28'),
(14, 1, 57, 7, 'Valorant Gece Pazarı ne zaman gelecek?', 'uploads/valorant-gece-pazari-ne-zaman-gelecek.jpg', '<h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\"><span style=\"font-size: 20px;\">Valorant gece pazarı bir kez daha aktif oluyor! İlk kez 1.14 yaması ile duyurulan Valorant Gece Pazarı, oyuncu geri bildirimleriyle geliştirilmeye devam ederken pek çok yeniliği de getiriyor. Valorant silah skinlerine sahip olmak istayen oyuncular Valorant gece pazarı ne zaman gelecek? sorusunun yanıtını araştırıyor. Riot Games ve Valorant sosyal medyalarında tarih verildi! Valorant Gece Pazarı nedir?</span></font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\"><span style=\"font-size: 20px;\"><br></span></font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\">Valorant Gece Pazarı ne zaman gelecek? sorusu son dönemlerin en çok oynanan oyunlarından olan Valorant oyuncuları tarafından merak ediliyor. Pek çok silah kaplaması ve kozmetiğin yer aldığı Gece Pazarı, sosyal medya hesaplarında duyuruldu!</h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\"><span style=\"font-size: 20px;\"><br></span></font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\"><span style=\"font-size: 20px;\">VALORANT GECE PAZARI NEDİR?a</span></font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\"><span style=\"font-size: 20px;\"><br></span></font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\"><span style=\"font-size: 20px;\">Gece Pazarı, sana özel rastgele 6 silah kaplamasından oluşan bir koleksiyon. Kaplamaları tıpkı Mağaza\'dan alır gibi alabilirsin. Sana özel derken, gerçekten sadece sen alabiliyorsun! Kaplamaların hepsinin indirimde olması da bir diğer güzel haber.</span><br></font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\">Tek yapman gereken, Gece Pazarı fırsatlarının üzerine tıklayıp sana hangi kaplamaların sunulduğunu açığa çıkarmak.</font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\"><br></font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\">İSTEDİĞİM HERHANGİ BİR KAPLAMAYI ALABİLECEK MİYİM?</font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\"><br></font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\"><br></font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\">Tam değil. Gece Pazarı\'nda beliren silah kaplamaları, bir önceki kısımdan daha önce çıkmış bir kısma ait olabilir. Yani 3. Kısım\'da eriştiğin Gece.Pazarı\'nda 1. Kısım içerikleri bulunur.Özel, üstün ve ihtişamlı kaplamaların her biri Gece Pazarı\'nda çıkabilir. Üstüne üstlük, yakın dövüş silahları için seçkin kaplamalar bile bulabilirsin!Valorant silah görünümleri, beş farklı türe ayrılabilmektedir. Orijinal adları ile çeviri olmaksızın;Select EditionDeluxe EditionPremium EditionUltra EditionExclusive Editionolarak belirlenmiştir.<br></font></h2><h2 class=\"haber_ozet\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; list-style: none; word-break: break-word; line-height: 27.2px;\"><font color=\"#000000\" face=\"Poppins, sans-serif\"><br></font><br></h2>', 13, 1, 'valorant-gece-pazari-ne-zaman-gelecek', NULL, '2021-04-10 16:15:47', '2021-04-10 16:20:23'),
(15, 1, 7, 7, 'Boğa Erkeği Özellikleri: Boğa Burcu Erkeği Aşk, Olumlu ve Olumsuz Özellikleri', 'uploads/boga-erkegi-ozellikleri-boga-burcu-erkegi-ask-olumlu-ve-olumsuz-ozellikleri.jpg', '<p><font color=\"#000000\"><span style=\"background-color: rgb(255, 255, 0);\">Boğa burcu erkeği özellikleri sayfamızdan boğa erkeği ile boğa kadını ilişkilerini bulabilirsiniz. Boğa burcu erkeği aşk hayatı, olumlu ve olumsuz özellikleri nedir? Boğa burcu erkeği temel ve fiziksel özellikleri nelerdir? Boğa burcu erkeği nelerden hoşlanır, özellikleri neler, hangi rengi severler, nasıl aşık edilirler gibi merak edilen tüm konuların cevapları ile birlikte burcun erkeklerinin iş, aşk ve cinsel hayatı üzerine tüm bilgiler..\"</span></font></p><p>Bu sabırlı, kibar, sıcak kalpli ve sadık erkekler sakin ve cesaret yaydığı ve yaşamın tüm şehvetli zevklerinden keyif aldığı için, takdir edilmesi gereken birçok Boğa erkeği özelliği vardır. Karmaşık olmayan, sessiz, nazik bir doğaları ve toprakla özel bir bağları var. Boğa adamı şimdiki zamanda yaşıyor ve inatla ilerliyor, kendi işine bakıyor ve başarı ve statü kazanmak için çok çalışıyor. En büyük önceliği finansal güvenliktir ve hayattaki en büyük zevki, emeklerinin meyvelerini rahatça tatmaktır.</p><p>BOĞA BURCU ERKEĞİ ÖZELLİKLERİ</p><p>Boğa burcunun ikinci burcudur ve sabit bir toprak burcu olduğundan, tipik olarak diğer burçlara kıyasla daha içe dönük, inatçı ve gerçekçidir.Burcunun sabit doğası, hayatı yavaş ve istikrarlı bir şekilde yaşadığı anlamına gelir - Cidden seninle ilgilenmediği ve ona karşı da aynı şeyi hissettiğini bilmediği sürece Boğa ile uzağa gidemezsin.<br></p>', 13, 1, 'boga-erkegi-ozellikleri-boga-burcu-erkegi-ask-olumlu-ve-olumsuz-ozellikleri', NULL, '2021-04-10 16:22:19', '2021-04-10 16:28:18'),
(16, 2, 3, 7, 'Koşullu Rastgele Alanlar ile Türkçe Haber Metinlerinin Etiketlenmesi', 'uploads/asdsadsadsa.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 12.6px;\">Her geçen gün belge sayısı artan Web\'in tam potansiyeliyle kullanılması için anlamsal ağ alanındaki çalışmaların Web\'in geleceğini oluşturacağı düşünülmektedir. Belge sayısındaki bu artışa bağlı olarak istenilen metne erişebilmek için bu metni en iyi temsil eden söz öbeklerinin bulunması doğru bir yaklaşım olmaktadır. Tüm metni okumadan o metni en iyi ifade edecek söz öbeklerine erişmek hem kullanıcı açısından hem de tarayıcı açısından büyük önem taşımaktadır. Bu çalışmanın amacı haber metinlerinde, haber metninin öznesi, yüklemi, yer ve zamanını belirtecek söz öbeklerinin metinde bulunup, metnin etiketlenmesidir. Haber metnin öznesi, metindeki en baskın kişi, şey veya süjeyi ifade eder. Metnin yüklemi ise metindeki oluşu ifade eder. Metnin yeri ve zamanı ise metindeki olayın geçtiği zaman ve yeri ifade eder. Bu amaçla, metinde geçen cümleler içerisinden seçilen en baskın özne, yüklem, yer ve zaman bilgilerinin çıkarılması hedeflenmektedir. Kapsam olarak Türkçe haber metinleri seçilmiştir. Elle etiketleme işlemi yapılan metinler otomatik etiketleme işlemi esnasında bir kısmı eğitim ve diğer kısmı ise sınama verisi olarak kullanılmıştır.</span><br></p>', 4, 1, 'kosullu-rastgele-alanlar-ile-turkce-haber-metinlerinin-etiketlenmesi', NULL, '2021-04-10 16:28:34', '2021-04-10 16:30:07'),
(17, 2, 77, 7, 'Amácio Mazzaropi\'nin 109. Doğum Günü', 'uploads/amacio-mazzaropinin-109-dogum-gunu.png', '<p style=\"color: rgb(0, 0, 0); font-family: Roboto, arial, sans-serif; font-size: medium;\">oday’s Doodle, illustrated by Brazilian guest artist&nbsp;<a href=\"https://arthurvergani.com/\" style=\"border: 0px; color: rgb(0, 156, 220);\">Arthur Vergani</a>, celebrates Brazilian actor, screenwriter, producer, and director Amácio Mazzaropi on his 109th birthday. Through his signature role as the beloved character “Jeca Tatu,” Mazzaropi used humor to address serious topics and became a fixture of Brazilian cinema.</p><p style=\"color: rgb(0, 0, 0); font-family: Roboto, arial, sans-serif; font-size: medium;\">Born on this day in São Paulo in 1912, Mazzaropi spent time as a child visiting his grandfather’s country home, which influenced the on-screen persona he later developed. As a teenager, the future icon of Brazilian comedy left home to work for&nbsp;<em>Circo La Paz</em>, a traveling circus. There he came up with the idea to perform as a hillbilly, embodied in Marazzaropi’s future performance as Monteiro Lobato’s character Jeca Tatu.</p><p style=\"color: rgb(0, 0, 0); font-family: Roboto, arial, sans-serif; font-size: medium;\">Mazzaropi produced content for radio and television for many years before appearing in his first film, “<em>Sai da Frente</em>” (“Get Out of the Way,” 1952). With his film career off the ground, and after several other roles, Mazzaropi bought&nbsp;<em>Fazenda Santa</em>, a farm turned studio that&nbsp;also served as the location for many of his films. It was here that Mazzaropi opened his own production company in 1958. Mazzaropi wove social commentary into simple language and covered important subjects to great effect, which caused audiences to flock to his productions for over 20 years.&nbsp;</p><p style=\"color: rgb(0, 0, 0); font-family: Roboto, arial, sans-serif; font-size: medium;\">Interestingly, while Mazzaropi became one of Brazil’s most acclaimed comedic actors, he was also a major supplier of milk to Leites Paulista. Today, Fazenda Santa is&nbsp;<em>Hotel Fazenda Mazzaropi</em>, home to the Mazzaropi Museum, which has a collection of over 20,000 items.</p><p style=\"color: rgb(0, 0, 0); font-family: Roboto, arial, sans-serif; font-size: medium;\">Happy birthday, Amácio Mazzaropi!</p>', 1, 1, 'amacio-mazzaropinin-109-dogum-gunu', NULL, '2021-04-10 16:31:59', '2021-04-10 16:32:03'),
(18, 1, 4, 1, 'Rastgele nasıl yazılır? TDK güncel yazım kılavuzuna göre rastgele mi, rasgele mi?', 'uploads/rastgele-nasil-yazilir-tdk-guncel-yazim-kilavuzuna-gore-rastgele-mi-rasgele-mi.jpg', '<p style=\"-webkit-tap-highlight-color: transparent; font-size: 20px; line-height: 1.6; color: rgb(34, 34, 34); word-break: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-variant-ligatures: no-common-ligatures;\">Türk Dil Kurumu’nun online yazım kılavuzu, çevrimiçi ortamda kelime sorgulama imkanı vermektedir. Türkçe’de bazı kelimelerin anlamları ve yazılış biçimleri sık sık bu sözlük üzerinde sorgulanmaktadır. TDK’nın güncel yazım kılavuzunda sık sık aranan bu kelimelerden biri de ‘rastgele\'dir.</p><p style=\"-webkit-tap-highlight-color: transparent; margin-top: 30px; font-size: 20px; line-height: 1.6; color: rgb(34, 34, 34); word-break: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-variant-ligatures: no-common-ligatures;\"><span style=\"-webkit-tap-highlight-color: transparent; font-weight: 700;\">RASTGELE NE DEMEK:</span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-top: 30px; font-size: 20px; line-height: 1.6; color: rgb(34, 34, 34); word-break: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-variant-ligatures: no-common-ligatures;\">1- Gelişigüzel.</p><p style=\"-webkit-tap-highlight-color: transparent; margin-top: 30px; font-size: 20px; line-height: 1.6; color: rgb(34, 34, 34); word-break: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-variant-ligatures: no-common-ligatures;\">2- Seçmeden, iyisini kötüsünü ayırmadan, gelişigüzel, lalettayin.</p><p style=\"-webkit-tap-highlight-color: transparent; margin-top: 30px; font-size: 20px; line-height: 1.6; color: rgb(34, 34, 34); word-break: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-variant-ligatures: no-common-ligatures;\"><span style=\"-webkit-tap-highlight-color: transparent; font-weight: 700;\">RASTGELE NASIL YAZILIR?</span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-top: 30px; font-size: 20px; line-height: 1.6; color: rgb(34, 34, 34); word-break: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-variant-ligatures: no-common-ligatures;\">Bu kelimenin “rastgele mi, rasgele mi” olarak yazıldığı sorgulanır. Bu kelimenin doğru kullanımı rastgele şeklinde olmalıdır.</p><p style=\"-webkit-tap-highlight-color: transparent; margin-top: 30px; font-size: 20px; line-height: 1.6; color: rgb(34, 34, 34); word-break: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-variant-ligatures: no-common-ligatures;\"><span style=\"-webkit-tap-highlight-color: transparent; font-weight: 700;\">rasgele</span>&nbsp;(Yanlış kullanım)<br style=\"-webkit-tap-highlight-color: transparent;\"><span style=\"-webkit-tap-highlight-color: transparent; font-weight: 700;\">rastgele&nbsp;</span>(Doğru kullanım)</p><p style=\"-webkit-tap-highlight-color: transparent; margin-top: 30px; font-size: 20px; line-height: 1.6; color: rgb(34, 34, 34); word-break: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-variant-ligatures: no-common-ligatures;\"><span style=\"-webkit-tap-highlight-color: transparent; font-weight: 700;\">Cümle içinde kullanımı:</span></p><p style=\"-webkit-tap-highlight-color: transparent; margin-top: 30px; font-size: 20px; line-height: 1.6; color: rgb(34, 34, 34); word-break: break-word; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-variant-ligatures: no-common-ligatures;\">“Bu konu o kadar önemli ki; rastgele bilgilerle anlatılması imkansız.”</p>', 0, 1, 'rastgele-nasil-yazilir-tdk-guncel-yazim-kilavuzuna-gore-rastgele-mi-rasgele-mi', NULL, '2021-04-10 16:34:07', '2021-04-10 16:34:11');
INSERT INTO `articles` (`id`, `categoryID`, `cityPlateNo`, `userID`, `title`, `image`, `content`, `hit`, `status`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(19, 6, 3, 1, 'Kurt adam Efsanesi', 'uploads/kurt-adam-efsanesi.jpg', '<p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Kurt adam</b>, <a href=\"https://tr.wikipedia.org/wiki/Dolunay\" title=\"Dolunay\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">dolunay</a> sırasında <a href=\"https://tr.wikipedia.org/wiki/Kurt\" title=\"Kurt\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">kurt</a> gibi korkunç bir yaratığa dönüşen efsanevi insan. Bir insanın bir hayvan, özellikle de kurt biçimine girebilmeye yetenekli olması, kurt adam söylencesinin çıkış kaynağı hakkında yeterli bir açıklama değildir. Genellikle bir kurt tarafından ısırılma ya da belirli ayda doğma olayı diye bilinir. Çok eskiden beri çeşitli kaynaklarda ve toplumlarda kurt adam öykülerine rastlanmaktadır. Farklı coğrafyalarda yaşayan insan topluluklarında sadece kurt adamlık değil çeşitli insan hayvan karışımı yaratıklara da rastlanmaktadır. <a href=\"https://tr.wikipedia.org/wiki/%C4%B0skandinavlar\" class=\"mw-redirect\" title=\"İskandinavlar\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">İskandinavların</a> ayı adamları, <a href=\"https://tr.wikipedia.org/wiki/K%C4%B1z%C4%B1lderililer\" title=\"Kızılderililer\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Kızılderililerin</a> bizon adamları, <a href=\"https://tr.wikipedia.org/wiki/Afrika\" title=\"Afrika\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Afrikalıların</a> sırtlan adamları, Türklerin <a href=\"https://tr.wikipedia.org/wiki/%C4%B0tbarak\" title=\"İtbarak\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">itbarakları</a> ve <a href=\"https://tr.wikipedia.org/wiki/%C4%B0stanbul\" title=\"İstanbul\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">İstanbul</a>’un kedi kadınları bunlara örnektir.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Kurt adamlık Türkçe adındaki gibi Kurt kısmı doğrudur ancak kurt adamlar sadece erkek olmak zorunda değildir, kadın da olabilirler. Bir inanışa göre; Yıl 170\'te ilk defa <a href=\"https://tr.wikipedia.org/wiki/Orta_Asya\" title=\"Orta Asya\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Orta Asya</a>\'da gerçekliği kanıtlanmıştır. Bir mektupta Kurt adam lanetinden bahsedilir. Kurt adamlar doğuştan olanlar mart ayında olduğu söylenir. Mart ayında olması gerekenden 2 kere fazla <a href=\"https://tr.wikipedia.org/wiki/Dolunay\" title=\"Dolunay\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">dolunay</a> vardır. 3 ile 18 günleri arasında da olay belirtilmiştir ama yazı çok net olamadığı için anlaşılamamıştır. Yazıya göre bunun bir lanet değil güç olarak bildirilir. Kurt adamların; gözlerinde renk değişikliği, köpek dişlerinde büyüklük ve sivrilik, doğaüstü güçler olarak tanımlanır.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></p><h2 style=\"margin: 1em 0px 0.25em; line-height: 1.3; font-size: 1.5em; color: rgb(0, 0, 0); padding: 0px; overflow: hidden; border-bottom: 1px solid rgb(162, 169, 177); font-family: \"Linux Libertine\", Georgia, Times, serif;\"><span class=\"mw-headline\" id=\"İstanbul’un_kedi_kadınları,_kurt_adamları\">İstanbul’un kedi kadınları, kurt adamları</span><span class=\"mw-editsection\" style=\"font-family: sans-serif; user-select: none; font-size: small; margin-left: 1em; vertical-align: baseline; line-height: 1em; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: rgb(84, 89, 93);\">[</span><a href=\"https://tr.wikipedia.org/w/index.php?title=Kurt_adam&veaction=edit&section=1\" class=\"mw-editsection-visualeditor\" title=\"Değiştirilen bölüm: İstanbul’un kedi kadınları, kurt adamları\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">değiştir</a><span class=\"mw-editsection-divider\" style=\"color: rgb(84, 89, 93);\"> | </span><a href=\"https://tr.wikipedia.org/w/index.php?title=Kurt_adam&action=edit&section=1\" title=\"Değiştirilen bölüm: İstanbul’un kedi kadınları, kurt adamları\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">kaynağı değiştir</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: rgb(84, 89, 93);\">]</span></span></h2><div class=\"thumb tright\" style=\"clear: right; float: right; margin: 0.5em 0px 1.3em 1.4em; width: auto; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><div class=\"thumbinner\" style=\"min-width: 100px; border: 1px solid rgb(200, 204, 209); padding: 3px; background-color: rgb(248, 249, 250); font-size: 13.16px; text-align: center; overflow: hidden; width: 202px;\"><a href=\"https://tr.wikipedia.org/wiki/Dosya:GermanWoodcut1722.jpg\" class=\"image\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/GermanWoodcut1722.jpg/200px-GermanWoodcut1722.jpg\" decoding=\"async\" width=\"200\" height=\"95\" class=\"thumbimage\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/2/27/GermanWoodcut1722.jpg/300px-GermanWoodcut1722.jpg 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/2/27/GermanWoodcut1722.jpg/400px-GermanWoodcut1722.jpg 2x\" data-file-width=\"518\" data-file-height=\"245\" style=\"border: 1px solid rgb(200, 204, 209); background-color: rgb(255, 255, 255);\"></a><div class=\"thumbcaption\" style=\"border: 0px; line-height: 1.4em; padding: 3px; font-size: 12.3704px; text-align: left;\"><div class=\"magnify\" style=\"float: right; margin-left: 3px; margin-right: 0px;\"><a href=\"https://tr.wikipedia.org/wiki/Dosya:GermanWoodcut1722.jpg\" class=\"internal\" title=\"Büyüt\" style=\"color: rgb(6, 69, 173); background-image: linear-gradient(transparent, transparent), url(\"/w/resources/src/mediawiki.skinning/images/magnify-clip-ltr.svg?8330e\"); background-repeat: repeat, repeat; display: block; text-indent: 15px; white-space: nowrap; overflow: hidden; width: 15px; height: 11px; user-select: none;\"></a></div>Kurt adam illüstrasyonu</div></div></div><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><a href=\"https://tr.wikipedia.org/wiki/%C4%B0stanbul\" title=\"İstanbul\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">İstanbul</a>’un <a href=\"https://tr.wikipedia.org/wiki/Kedi\" title=\"Kedi\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">kedi</a> kadınlarından söz eden <a href=\"https://tr.wikipedia.org/wiki/Amerikal%C4%B1lar\" title=\"Amerikalılar\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Amerikalı</a> romancı ve senaryo yazarı <a href=\"https://tr.wikipedia.org/w/index.php?title=Guy_Endore&action=edit&redlink=1\" class=\"new\" title=\"Guy Endore (sayfa mevcut değil)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Guy Endore</a>’dir. Endore, Kedi kadınlardan bahsettiği ilk baskısını 1934 yılında yaptığı <a href=\"https://tr.wikipedia.org/w/index.php?title=Paris%E2%80%99in_Kurt_Adam%C4%B1&action=edit&redlink=1\" class=\"new\" title=\"Paris’in Kurt Adamı (sayfa mevcut değil)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Paris’in Kurt Adamı</a> adlı kitabında kurgusal bir öyküyü anlatmaktadır. 1870 yılının <a href=\"https://tr.wikipedia.org/wiki/Paris_Kom%C3%BCn%C3%BC\" title=\"Paris Komünü\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">komün ayaklanması</a>nda geçen öykü kurt adamlar konusunu ayrıntılı bir araştırma ile desteklemektedir.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">İstanbul’un kedi kadınları hakkında şunları söylemektedir Endore: <i>“Bir saç tokası kullanarak pirinç tanelerini yerler ve bilirler ki yaratıkların kurdukları sofrada karınlarını iyice dolduracaklardır.”</i></p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Amerikalı yazar Endore bir korku romanı yazıyor ve elindeki folklor malzemesini buna göre yorumluyor, kurguluyor ve abartıyor. Yazar büyük bir olasılıkla Kedi kadınlar diye folklorumuzda ve masallarımızda geniş bir yer tutan her kılığa giren <a href=\"https://tr.wikipedia.org/wiki/Cad%C4%B1l%C4%B1k\" title=\"Cadılık\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">cadılardan</a> ve cadı kadınlardan bahsetmektedir kendi savına uygun olarak.</p>', 4, 1, 'kurt-adam-efsanesi', NULL, '2021-04-10 16:36:34', '2021-05-01 12:38:24'),
(20, 6, 72, 1, 'Vampir Efsanesi', 'uploads/vampir-efsanesi.jpg', '<h2 style=\"color: rgb(0, 0, 0); margin: 1em 0px 0.25em; padding: 0px; overflow: hidden; border-bottom: 1px solid rgb(162, 169, 177); font-size: 1.5em; font-family: &quot;Linux Libertine&quot;, Georgia, Times, serif; line-height: 1.3;\"><span class=\"mw-headline\" id=\"Tarihçe\">Tarihçe</span><span class=\"mw-editsection\" style=\"font-family: sans-serif; user-select: none; font-size: small; margin-left: 1em; vertical-align: baseline; line-height: 1em; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: rgb(84, 89, 93);\">[</span><a href=\"https://tr.wikipedia.org/w/index.php?title=Vampir&amp;veaction=edit&amp;section=1\" class=\"mw-editsection-visualeditor\" title=\"Değiştirilen bölüm: Tarihçe\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">değiştir</a><span class=\"mw-editsection-divider\" style=\"color: rgb(84, 89, 93);\">&nbsp;|&nbsp;</span><a href=\"https://tr.wikipedia.org/w/index.php?title=Vampir&amp;action=edit&amp;section=1\" title=\"Değiştirilen bölüm: Tarihçe\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">kaynağı değiştir</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: rgb(84, 89, 93);\">]</span></span></h2><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Vampir kültürü&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Babil\" title=\"Babil\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Babil</a>\'den kalan örneklere dayanır ve yüzyıllar boyunca değişimini inceleyen kapsamlı folklorik tarihsel araştırmalara konu teşkil eder.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Kan_emme\" title=\"Kan emme\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Kan emme</a>&nbsp;ve öldükten sonra dirilme efsaneleri&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Orta_%C3%87a%C4%9F\" title=\"Orta Çağ\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Orta Çağ</a>\'da yayıldı.&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=1200%27ler&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"1200\'ler (sayfa mevcut değil)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1200\'lerde</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/%C4%B0ngiltere\" title=\"İngiltere\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">İngiltere</a>\'de Galli bir din adamı olan Walter Map bir vampirin bütün bir köy ahalisinin kanlarını emmek suretiyle öldürdüğünü iddia etti. Map\'ın iddiasına göre köyde sağ kalan son kişi kılıcını çekip kana susamış cehennem yaratığının kafasını ensesine kadar ikiye bölmüş ve tehlikeyi sona erdirmişti.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Vampir varlığına inanan bilim insanları vampirlerin kendilerince belirlenen özelliklerini şöyle özetlemişlerdir: Acıyı en az düzeyde hissederler, vücutlarında özellikle de yüzlerinde çürüğe dayalı hafif çukurluklar ve izler bulunur, göz renkleri sürekli değişim içindedir ve iki göz asla aynı renkte bulunmaz. Beklenmedik zamanda, fark edemeyeceğiniz kadar hızlı ve bir o kadar da güçlü tepkiler verebilirler. Ten ısıları sürekli değişiklik içindedir. Gün ışığından etkilenmezler (Vampirlerin güneş ışığında yok olduğu fikri&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=Friederich_Wilhelm_Murnau&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Friederich Wilhelm Murnau (sayfa mevcut değil)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Friederich Wilhelm Murnau</a>\'nun&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Nosferatu,_Bir_Deh%C5%9Fet_Senfonisi\" title=\"Nosferatu, Bir Dehşet Senfonisi\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Nosferatu, Bir Dehşet Senfonisi</a>&nbsp;filminde ortaya atılmış,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Pop%C3%BCler_k%C3%BClt%C3%BCr\" title=\"Popüler kültür\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Popüler kültür</a>\'e ait modern bir düşüncedir). Düşünce okuyabilirler, bu nedenle onlara karşı koymak imkânsız gibidir. Zekalarını ve güçlerini asla bir kitlenin anlayacağı bir şekilde dışarıya vurmazlar. Bahsedildiği gibi köpek dişleri ilgi çekici büyüklükte değildir.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Sadece&nbsp;<a href=\"https://tr.wikipedia.org/wiki/H%C4%B1ristiyan\" class=\"mw-redirect\" title=\"Hıristiyan\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hıristiyan</a>&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Avrupa\" title=\"Avrupa\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Avrupa</a>\'da değil, çeşitli toplumlarda vampir efsaneleri yaratıldı.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Hindistan\" title=\"Hindistan\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hindistan</a>\'da kimi kadınlar, uyurken kana susamış cinlerin saldırısına uğradıklarına inanırlar. M.Ö. 700 yılları civarında yazıldığı tahmin edilen, orijinali Sanskritçe\'den pek çok dile ve yerel lehçeye çevrilen bir öykü ve efsane koleksiyonu olan&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Vikram_ve_Vampir\" title=\"Vikram ve Vampir\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Vikram ve Vampir</a>&nbsp;bu inanışa örnektir.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Binbir_Gece_Masallar%C4%B1\" title=\"Binbir Gece Masalları\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1001 Gece Masalları</a>\'nda dişi vampirlerle ilgili öyküler yer almaktadır.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Yeni_Gine\" title=\"Yeni Gine\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Yeni Gine</a>\'nin Camma kabilesinde Ovengua cini ya da&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Borneo\" title=\"Borneo\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Borneo</a>&nbsp;adasındaki Dayak kabilesinde Buau adlı varlık da benzer inanışlara dayanan yaratıklardır.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Tarihçiler vampir kelimesinin&nbsp;<a href=\"https://tr.wikipedia.org/wiki/S%C4%B1rp%C3%A7a\" title=\"Sırpça\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Sırpça</a>,&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Leh%C3%A7e\" title=\"Lehçe\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Lehçe</a>&nbsp;ya da&nbsp;<a href=\"https://tr.wikipedia.org/wiki/T%C3%BCrk%C3%A7e\" title=\"Türkçe\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Türkçe</a>\'den türetildiğini öne sürer. Bu efsanenin ayyuka çıktığı ve vampir avlarının düzenlendiği&nbsp;<a href=\"https://tr.wikipedia.org/w/index.php?title=1730%27lar&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"1730\'lar (sayfa mevcut değil)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1730\'lu</a>&nbsp;yıllarda&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Ayd%C4%B1nlanma\" class=\"mw-redirect\" title=\"Aydınlanma\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Aydınlanmanın</a>&nbsp;ünlü filozofu&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Voltaire\" title=\"Voltaire\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Voltaire</a>&nbsp;konuya şöyle bir yorum getirir: “Gerçek kan emiciler mezarlarda değil, aramızda.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Borsa\" title=\"Borsa\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Borsa</a>&nbsp;spekülatörleri, tüccarlar ve işadamları halkın kanını her gün emmekteler. Bunlar kesinlikle ölmüyor ama yaşarken çürüyor.”&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Karl_Marx\" title=\"Karl Marx\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Karl Marx</a>\'ın konuya yaklaşımı ise şu şekildedir: “Sermaye ölü emektir. Ancak canlı emeğin emilmesi ile vampirlere özgü biçimde hayat bulur. Ne kadar emerse o kadar hayat bulur.”</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><a href=\"https://tr.wikipedia.org/w/index.php?title=1820%27ler&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"1820\'ler (sayfa mevcut değil)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1820\'lerde</a>&nbsp;bir eleştirmen “Vampiri olmayan&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Tiyatro\" title=\"Tiyatro\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">tiyatro</a>&nbsp;yok“ diye veryansın etmiştir. Yazar&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Sheridan_Lefanu\" class=\"mw-redirect\" title=\"Sheridan Lefanu\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Sheridan Lefanu</a>\'nun 1872\'de yazdığı “<a href=\"https://tr.wikipedia.org/w/index.php?title=Carmilla&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Carmilla (sayfa mevcut değil)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Carmilla</a>” adlı öyküyle vampirler, aralarına ilk kez bir kadını almışlar buradan da&nbsp;<i>vamp</i>&nbsp;sözcüğünü türetmişlerdir.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><a href=\"https://tr.wikipedia.org/wiki/%C4%B0rlanda\" title=\"İrlanda\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">İrlandalı</a>&nbsp;yazar&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Bram_Stoker\" title=\"Bram Stoker\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Bram Stoker</a>, 1897\'de yazdığı “<a href=\"https://tr.wikipedia.org/wiki/Drakula\" title=\"Drakula\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Drakula</a>” adlı eserinde türün bütün mitlerini toparladı ve bu konudaki en iyi klasiği meydana getirdi. Bu kitap vampir efsanesinin sinemaya da sıçramasına neden oldu. Alman&nbsp;<a href=\"https://tr.wikipedia.org/wiki/D%C4%B1%C5%9Favurumculuk\" title=\"Dışavurumculuk\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">dışavurumcu</a>&nbsp;yönetmen Murnau, 1922\'deki ünlü klasiği “<a href=\"https://tr.wikipedia.org/wiki/Nosferatu\" class=\"mw-disambig\" title=\"Nosferatu\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Nosferatu</a>” ile sinema tarihindeki ilk vampir filmini çevirdi.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/1930%27lar\" title=\"1930\'lar\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1930\'lu</a>&nbsp;yıllarda&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Hollywood\" title=\"Hollywood\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hollywood</a>\'un en gözde konularından biri vampirlerdi. Sinemanın en tanınmış vampir oyuncusu ise&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Christopher_Lee\" title=\"Christopher Lee\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Christopher Lee</a>\'ydi. Zaman içinde vampirler pusuya yatmış canavar görünümünden kurtulup şık, baştan çıkartıcı, güzel yaratıklar haline geldi.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Francis_Ford_Coppola\" title=\"Francis Ford Coppola\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Francis Ford Coppola</a>&nbsp;ise Bram Stoker\'ın romanından yaptığı özgün uyarlama ile vampirlerin hayatını bir trajedi olarak yorumladı.&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Stephenie_Meyer\" title=\"Stephenie Meyer\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Stephenie Meyer</a>\'ın 2005 yılında yazmaya başladığı&nbsp;<a href=\"https://tr.wikipedia.org/wiki/Alacakaranl%C4%B1k_(seri)\" title=\"Alacakaranlık (seri)\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Alacakaranlık</a>&nbsp;roman serisi (ve 2008\'de başlayan film uyarlamalarıyla) vampirler canavarlıktan kahramanlığa terfi ettiler.</p>', 7, 1, 'vampir-efsanesi', NULL, '2021-04-10 16:38:35', '2021-05-01 12:41:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Genel', 'genel', '2021-01-02 10:33:50', '2021-01-02 10:33:50'),
(2, 'Haber', 'haber', '2021-01-02 10:33:50', '2021-04-10 16:11:50'),
(3, 'Hayvanların Dünyası', 'hayvanlarin-dunyasi', '2021-01-02 10:33:50', '2021-01-02 10:33:50'),
(4, 'Sokak Hayvanları', 'sokak-hayvanlari', '2021-01-02 10:33:50', '2021-01-02 10:33:50'),
(5, 'Film', 'film', '2021-01-02 10:33:50', '2021-04-10 16:12:38'),
(6, 'Hikaye', 'hikaye', '2021-01-02 10:33:50', '2021-04-10 16:11:17'),
(7, 'Ekoloji/İklim', 'ekolojiiklim', '2021-01-02 10:33:50', '2021-01-02 10:33:50');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cities`
--

CREATE TABLE `cities` (
  `plateNo` bigint(20) UNSIGNED NOT NULL,
  `cityName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `cities`
--

INSERT INTO `cities` (`plateNo`, `cityName`, `slug`) VALUES
(1, 'Adana', 'adana'),
(2, 'Adıyaman', 'adiyaman'),
(3, 'Afyonkarahisar', 'afyonkarahisar'),
(4, 'Ağrı', 'agri'),
(5, 'Amasya', 'amasya'),
(6, 'Ankara', 'ankara'),
(7, 'Antalya', 'antalya'),
(8, 'Artvin', 'artvin'),
(9, 'Aydın', 'aydin'),
(10, 'Balıkesir', 'balikesir'),
(11, 'Bilecik', 'bilecik'),
(12, 'Bingöl', 'bingol'),
(13, 'Bitlis', 'bitlis'),
(14, 'Bolu', 'bolu'),
(15, 'Burdur', 'burdur'),
(16, 'Bursa', 'bursa'),
(17, 'Çanakkale', 'canakkale'),
(18, 'Çankırı', 'cankiri'),
(19, 'Çorum', 'corum'),
(20, 'Denizli', 'denizli'),
(21, 'Diyarbakır', 'diyarbakir'),
(22, 'Edirne', 'edirne'),
(23, 'Elazığ', 'elazig'),
(24, 'Erzincan', 'erzincan'),
(25, 'Erzurum', 'erzurum'),
(26, 'Eskişehir', 'eskisehir'),
(27, 'Gaziantep', 'gaziantep'),
(28, 'Giresun', 'giresun'),
(29, 'Gümüşhane', 'gumushane'),
(30, 'Hakkari', 'hakkari'),
(31, 'Hatay', 'hatay'),
(32, 'Isparta', 'isparta'),
(33, 'Mersin', 'mersin'),
(34, 'İstanbul', 'istanbul'),
(35, 'İzmir', 'izmir'),
(36, 'Kars', 'kars'),
(37, 'Kastamonu', 'kastamonu'),
(38, 'Kayseri', 'kayseri'),
(39, 'Kırklareli', 'kirklareli'),
(40, 'Kırşehir', 'kirsehir'),
(41, 'Kocaeli', 'kocaeli'),
(42, 'Konya', 'konya'),
(43, 'Kütahya', 'kutahya'),
(44, 'Malatya', 'malatya'),
(45, 'Manisa', 'manisa'),
(46, 'Kahramanmaraş', 'kahramanmaras'),
(47, 'Mardin', 'mardin'),
(48, 'Muğla', 'mugla'),
(49, 'Muş', 'mus'),
(50, 'Nevşehir', 'nevsehir'),
(51, 'Niğde', 'nigde'),
(52, 'Ordu', 'ordu'),
(53, 'Rize', 'rize'),
(54, 'Sakarya', 'sakarya'),
(55, 'Samsun', 'samsun'),
(56, 'Siirt', 'siirt'),
(57, 'Sinop', 'sinop'),
(58, 'Sivas', 'sivas'),
(59, 'Tekirdağ', 'tekirdag'),
(60, 'Tokat', 'tokat'),
(61, 'Trabzon', 'trabzon'),
(62, 'Tunceli', 'tunceli'),
(63, 'Şanlıurfa', 'sanliurfa'),
(64, 'Uşak', 'usak'),
(65, 'Van', 'van'),
(66, 'Yozgat', 'yozgat'),
(67, 'Zonguldak', 'zonguldak'),
(68, 'Aksaray', 'aksaray'),
(69, 'Bayburt', 'bayburt'),
(70, 'Karaman', 'karaman'),
(71, 'Kırıkkale', 'kirikkale'),
(72, 'Batman', 'batman'),
(73, 'Şırnak', 'sirnak'),
(74, 'Bartın', 'bartin'),
(75, 'Ardahan', 'ardahan'),
(76, 'Iğdır', 'igdir'),
(77, 'Yalova', 'yalova'),
(78, 'Karabük', 'karabuk'),
(79, 'Kilis', 'kilis'),
(80, 'Osmaniye', 'osmaniye'),
(81, 'Düzce', 'duzce');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commenter_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commenter_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 1,
  `child_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`id`, `commenter_id`, `commenter_type`, `guest_name`, `guest_email`, `commentable_type`, `commentable_id`, `comment`, `approved`, `child_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(13, '1', 'App\\Models\\User', NULL, NULL, 'App\\Models\\Article', '3', 'de', 1, NULL, NULL, '2021-04-05 11:49:17', '2021-04-05 11:50:25'),
(14, '5', 'App\\Models\\User', NULL, NULL, 'App\\Models\\Article', '4', 'deneme', 1, NULL, '2021-05-01 12:33:31', '2021-04-10 15:08:18', '2021-05-01 12:33:31'),
(15, '1', 'App\\Models\\User', NULL, NULL, 'App\\Models\\Article', '4', 'teşekkürler', 1, 14, '2021-05-01 12:33:31', '2021-04-10 15:08:32', '2021-05-01 12:33:31'),
(16, '2', 'App\\Models\\User', NULL, NULL, 'App\\Models\\Article', '20', 'deneme', 1, NULL, NULL, '2021-05-01 12:40:31', '2021-05-01 12:40:31'),
(17, '1', 'App\\Models\\User', NULL, NULL, 'App\\Models\\Article', '20', 'muhamet nasılsın', 1, 16, NULL, '2021-05-01 12:41:34', '2021-05-01 12:41:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `configs`
--

INSERT INTO `configs` (`id`, `title`, `logo`, `favicon`, `active`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'Laravel Proje', 'uploads/laravel-projeLogo.png', 'uploads/laravel-projeFavicon.png', 1, 'https://www.facebook.com/myscherzo/', 'https://twitter.com/Myscherzo', 'https://www.instagram.com/bekogluaydin/', 'https://www.linkedin.com/in/ayd%C4%B1n-beko%C4%9Flu-b85336118/', 'yt1', '2021-01-02 10:33:50', '2021-04-10 16:09:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_06_30_113500_create_comments_table', 1),
(2, '2019_08_16_170011_cities_', 1),
(3, '2020_11_03_192320_categories', 1),
(4, '2020_11_04_153725_user', 1),
(5, '2020_11_05_083453_articles', 1),
(6, '2020_11_12_184105_pages', 1),
(7, '2020_11_13_191223_contact', 1),
(8, '2020_12_06_203804_create_cache_table', 1),
(9, '2020_12_23_132900_config', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0: Pasif | 1: Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `title`, `image`, `content`, `slug`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hakkımızda', 'https://www.thebalancesmb.com/thmb/mGudbjLJV7ZHJHjf9yXHUn0IbNE=/1333x1000/smart/filters:no_upscale()/improve-your-small-business-2951413-556a7d287050409bbd876af010f74be6.png', 'lorem asdasdkajsldas jk asjdk a sjakdhaskjld asdhjashdlkjas  \n                            sadhaskd  asdaskjld as dhjkasdhlkjas hjsdhaskjld ash dsaldkjas al \n                            asdkjlas vnmbvl  jksldh askldyhasldh  jaskıdhyaslıuynary ahd nassdha', 'hakkimizda', 0, 1, '2021-01-02 10:33:50', '2021-04-05 10:33:10'),
(2, 'Misyon', 'https://www.thebalancesmb.com/thmb/mGudbjLJV7ZHJHjf9yXHUn0IbNE=/1333x1000/smart/filters:no_upscale()/improve-your-small-business-2951413-556a7d287050409bbd876af010f74be6.png', 'lorem asdasdkajsldas jk asjdk a sjakdhaskjld asdhjashdlkjas  \n                            sadhaskd  asdaskjld as dhjkasdhlkjas hjsdhaskjld ash dsaldkjas al \n                            asdkjlas vnmbvl  jksldh askldyhasldh  jaskıdhyaslıuynary ahd nassdha', 'misyon', 2, 1, '2021-01-02 10:33:50', '2021-04-10 16:13:26'),
(3, 'Vizyon', 'https://www.thebalancesmb.com/thmb/mGudbjLJV7ZHJHjf9yXHUn0IbNE=/1333x1000/smart/filters:no_upscale()/improve-your-small-business-2951413-556a7d287050409bbd876af010f74be6.png', 'lorem asdasdkajsldas jk asjdk a sjakdhaskjld asdhjashdlkjas  \n                            sadhaskd  asdaskjld as dhjkasdhlkjas hjsdhaskjld ash dsaldkjas al \n                            asdkjlas vnmbvl  jksldh askldyhasldh  jaskıdhyaslıuynary ahd nassdha', 'vizyon', 1, 1, '2021-01-02 10:33:50', '2021-04-05 10:33:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `email`, `name`, `created_at`, `updated_at`, `auth`) VALUES
(1, 'myscherzo', '$2y$10$rk96I7IUK7bVlp6LaFc5Kubv96q1jio4FNWA0tFofNjf8H/RUuqVK', 'aydinbek97@gmail.com', 'Aydın BEKOĞLU', '2021-01-02 10:33:50', '2021-01-02 10:33:50', 1),
(2, 'muhammed', '$2y$10$zEEaWAlLYqNO/CSaNCCQ8e3oXAdrC9Glg2UTQyz.ruPUTC8Da0AYy', 'muahmmet@gmail.com', 'Muhammet', '2021-01-02 11:16:34', '2021-01-02 11:16:34', 0),
(3, 'asdsada@gmail.com', '$2y$10$iCPWlkOORnO1wopqssceP.yAIdGzbJ1XalHrhLA0t6KLUwD6JnsgC', 'asdsada@gmail.com', 'sadsadasdas', '2021-01-03 16:46:22', '2021-01-03 16:46:22', 0),
(4, 'serkan1', '$2y$10$rWFpuAGMZVJDqqIg86frGuYOY36AgU71uMJA5LBz1mVfB.ZoScuIm', 'serkanOzkan@gmail.com', 'Serkan Özkan', '2021-04-10 15:06:47', '2021-04-10 15:06:47', 0),
(5, 'Bystrong', '$2y$10$ZBZTzDVXSme/0SuvysaMeuEZlkxWKNd49GUnOLCqZZQNXAQsJgYK6', 'bystrong@technovadi.com', 'Cemal YILDIRIM', '2021-04-10 15:07:20', '2021-04-10 15:07:20', 0),
(6, 'neaTR1', '$2y$10$ChlHktiqhVksIqOzj4weCOJ2UiogflHIIEr9WHAjwNfYke2DGwTJC', 'nurullahEkram1905@outlook.com', 'Nurullah Ekrem Anar', '2021-04-10 15:11:42', '2021-04-10 15:11:42', 0),
(7, 'Admin', '$2y$10$XpEF6VVHTZKY32I14wXRAuuDm8hojt5xICeS3yWoEUivv8dAe6CeO', 'admin@admin.com', 'Admin', '2021-04-10 15:12:54', '2021-04-10 15:12:54', 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_categoryid_foreign` (`categoryID`),
  ADD KEY `articles_cityplateno_foreign` (`cityPlateNo`);

--
-- Tablo için indeksler `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`plateNo`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commenter_id_commenter_type_index` (`commenter_id`,`commenter_type`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `comments_child_id_foreign` (`child_id`);

--
-- Tablo için indeksler `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `cities`
--
ALTER TABLE `cities`
  MODIFY `plateNo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_categoryid_foreign` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_cityplateno_foreign` FOREIGN KEY (`cityPlateNo`) REFERENCES `cities` (`plateNo`);

--
-- Tablo kısıtlamaları `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
