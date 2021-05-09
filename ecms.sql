-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 May 2021, 10:16:30
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ecms`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_must` int(11) DEFAULT NULL,
  `blog_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blogs`
--

INSERT INTO `blogs` (`id`, `created_at`, `updated_at`, `blog_title`, `blog_slug`, `blog_file`, `blog_must`, `blog_content`, `blog_status`) VALUES
(1, '2021-05-08 17:44:04', '2021-05-08 17:44:04', 'Blog title 01', 'blog-title-01', '6096f8143573c.png', 0, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '0'),
(3, '2021-05-24 21:38:59', '2021-05-08 17:44:13', 'Blog title 02', 'blog-title-02', '6096f81d89d7d.png', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '1'),
(4, '2021-05-17 21:39:03', '2021-05-08 17:44:21', 'Blog title 03', 'blog-title-03', '6096f8257636a.png', 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '1'),
(5, '2021-05-16 21:39:06', '2021-05-08 17:44:32', 'Blog title 04', 'blog-title-04', '6096f83036c24.png', 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '1'),
(6, '2021-05-18 21:39:09', '2021-05-08 17:44:40', 'Blog title 05', 'blog-title-05', '6096f838c6d6e.png', 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '0'),
(7, '2021-05-15 21:39:12', '2021-05-08 17:44:49', 'Blog title 06', 'blog-title-06', '6096f841230b9.png', 5, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '1'),
(12, '2021-05-18 21:39:20', '2021-05-08 17:44:58', 'Ut nisi nostrum elit', 'ut-nisi-nostrum-elit', '6096f84a6b442.png', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.', '1'),
(13, '2021-05-12 21:39:23', '2021-05-08 17:45:05', 'ahmet vuruskan deneme slug', 'ahmet-vuruskan-deneme-slug', '6096f85119643.png', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.', '0'),
(14, '2021-05-19 21:39:25', '2021-05-08 17:45:12', 'ahmetV', 'emrah-yuksel-kimdir', '6096f8582a533.png', 8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2021_05_04_022814_create_settings_table', 1),
(13, '2021_05_05_220500_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_must` int(11) DEFAULT NULL,
  `page_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `page_title`, `page_slug`, `page_file`, `page_must`, `page_content`, `page_status`) VALUES
(1, '2021-05-06 16:40:26', '2021-05-08 19:52:34', 'page title 01', 'page-title-01', '609712761e5ac.png', 0, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '0'),
(3, '2021-05-06 16:40:26', '2021-05-08 19:52:34', 'page title 02', 'page-title-02', '6097127edf254.png', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '1'),
(4, '2021-05-06 16:40:26', '2021-05-08 19:52:34', 'page title 03', 'page-title-03', '609712867db9e.png', 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '1'),
(5, '2021-05-06 16:40:26', '2021-05-08 19:52:34', 'page title 04', 'page-title-04', '6097128e8c596.png', 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '1'),
(6, '2021-05-06 16:40:26', '2021-05-08 19:52:34', 'page title 05', 'page-title-05', '609712962898d.png', 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '0'),
(8, '2021-05-06 16:40:26', '2021-05-08 19:52:34', 'page title 06', 'page-title-06', '609712b337aa1.png', 5, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `settings_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_must` int(11) NOT NULL,
  `settings_delete` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `settings_description`, `settings_key`, `settings_value`, `settings_type`, `settings_must`, `settings_delete`, `settings_status`) VALUES
(1, NULL, '2021-05-05 12:51:01', 'Başlık', 'title', 'Laravel  ECMS', 'text', 0, '0', '1'),
(2, NULL, '2021-05-04 18:00:22', 'Açıklama', 'description', 'Laravel  ECMS', 'textarea', 1, '0', '1'),
(3, NULL, '2021-05-05 19:37:23', 'Logo', 'logo', '6091b0d454bce.png', 'file', 1, '0', '1'),
(4, NULL, '2021-05-05 19:37:23', 'Icon', 'icon', '60917825bdeb7.png', 'file', 2, '0', '1'),
(5, NULL, '2021-05-05 19:37:23', 'Anahtar Kelimeler', 'keywords', 'Laravel,ECMS,ahmet', 'text', 3, '0', '1'),
(6, NULL, '2021-05-05 19:37:23', 'Sabit Telefon', 'phone_sabit', '0850 XXX XX XX', 'text', 4, '0', '1'),
(7, NULL, '2021-05-05 19:37:23', 'GSM', 'phone_gsm', '0850 XXX XX XX', 'text', 5, '0', '1'),
(8, NULL, '2021-05-04 18:00:22', 'Mail', 'mail', 'ahmetfatih0702@gmail.com', 'text', 7, '0', '1'),
(9, NULL, '2021-05-04 18:00:22', 'İlçe', 'ilce', 'Alanya', 'text', 8, '0', '1'),
(10, NULL, NULL, 'il', 'il', 'Antalya', 'text', 9, '0', '1'),
(11, NULL, NULL, 'Adres', 'adres', 'fidanlık caddesi', 'ckeditor', 10, '0', '1'),
(17, NULL, NULL, 'Footer Bilgi', 'footer', 'Afv ECMS Laravel', 'text', 10, '0', '1'),
(19, NULL, NULL, 'Home title', 'home_title', 'Moderns Business Features', 'text', 11, '0', '1'),
(20, NULL, '2021-05-08 20:12:39', 'Home detail', 'home_detail', '<p>The Modern Business template by Start Bootstrap includes:</p>\r\n\r\n<ul>\r\n	<li><strong>Bootstrap v4</strong></li>\r\n	<li>jQuery</li>\r\n	<li>Font Awesome</li>\r\n	<li>Working contact form with validation</li>\r\n	<li>Unstyled page elements for easy customization</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>', 'ckeditor', 12, '0', '1'),
(21, NULL, '2021-05-08 20:14:01', 'Home detail file', 'home_detail_file', '60971b39a4a44.png', 'file', 13, '0', '1'),
(22, NULL, '2021-05-08 20:14:01', 'Slogan', 'slogan', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.', 'textarea', 14, '0', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slider_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `slider_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_must` int(11) DEFAULT NULL,
  `slider_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`id`, `created_at`, `updated_at`, `slider_title`, `slider_slug`, `slider_url`, `slider_file`, `slider_must`, `slider_content`, `slider_status`) VALUES
(1, NULL, '2021-05-07 20:15:24', 'slider title 01', 'slider-title-01', 'http://www.udemy.com', '6095ca032c6d2.png', 0, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '0'),
(3, NULL, '2021-05-07 19:52:04', 'slider title 02', 'slider-title-02', NULL, '6095c3d307889.png', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '1'),
(4, NULL, '2021-05-07 19:52:05', 'slider title 03', 'slider-title-03', NULL, '6095c3dde63b1.png', 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis finibus leo id laoreet. Nulla quis dictum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu sapien imperdiet, pulvinar urna eget, porttitor libero. Quisque quis lacinia ante, ac semper neque. Ut quam lacus, maximus non malesuada id, accumsan vel velit. Aliquam suscipit ante diam. Vestibulum consequat efficitur arcu. Nunc hendrerit urna in rhoncus sodales. Fusce libero urna, tincidunt vitae nisl sed, interdum semper mi. Fusce sed nibh sem. Praesent non sollicitudin justo. Aliquam elementum tellus mattis, dignissim nibh sit amet, hendrerit dui. Fusce ut mi in ex laoreet semper. Morbi metus odio, tincidunt ut pulvinar at, gravida eget metus. Proin quam lectus, fermentum sit amet condimentum vestibulum, ornare eu purus. Sed at turpis tortor. Ut pellentesque vestibulum lacus a accumsan. Donec massa mi, tristique ut urna in, efficitur hendrerit elit. Nam ac tristique nisi. Sed vel magna iaculis sapien molestie lobortis. Ut non risus ut tortor porttitor ultrices vel at libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis nec efficitur ligula. Nunc quis semper sem. Praesent faucibus elementum luctus. Donec viverra risus dolor, ac interdum ante aliquet molestie. Etiam quam dolor, suscipit id turpis vitae, convallis tempus arcu. Sed elementum condimentum suscipit. Praesent euismod, nisi ut aliquet semper, urna sapien congue erat, non consequat nibh orci id lectus. Praesent quis massa auctor, viverra neque in, tincidunt ipsum. Sed eleifend risus nibh, pulvinar sollicitudin eros finibus sit amet. Mauris aliquet lacinia consequat. Praesent tortor lectus, tristique nec egestas in, pharetra vitae nunc. Nunc malesuada pharetra urna, eget scelerisque felis ultricies ultrices. Nulla sit amet maximus turpis. Donec fringilla mollis turpis elementum feugiat. Nullam est justo, suscipit quis tempus id, eleifend sit amet lacus. Aliquam tellus felis, ornare quis dignissim iaculis, ultricies et turpis. Phasellus molestie, quam a hendrerit sollicitudin, metus mi maximus eros, nec egestas nisi ante id enim. Phasellus euismod augue at nisi euismod pellentesque. Nam dignissim sagittis diam, id consectetur nisi congue at. In ullamcorper egestas velit ac vulputate. Aliquam erat volutpat.</p>', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `user_file`, `user_role`, `name`, `email`, `email_verified_at`, `password`, `user_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, '609601cfd4602.jpg', 'admin', 'Ahmet Vuruskan', 'ahmetfatih0702@gmail.com', NULL, '$2y$10$NDDkB/p3oPZzI7T7q3mhoOiqSOWGh/dfvyLxjbqICdeSHEroqn0IG', '1', NULL, '2021-05-08 00:11:48', '2021-05-08 00:13:19');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
