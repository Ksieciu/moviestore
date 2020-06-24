-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Cze 2020, 22:27
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `movie_store`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Akcja'),
(2, 'Komedia'),
(3, 'Familijny'),
(4, 'Thriller'),
(5, 'Dramat'),
(6, 'Western'),
(7, 'Fantasy'),
(8, 'Sci-fi'),
(9, 'Horror'),
(10, 'Sensacyjny'),
(11, 'Dokumentalny'),
(12, 'Biograficzny'),
(13, 'Animacja');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories_movies`
--

CREATE TABLE `categories_movies` (
  `categories_id` int(10) UNSIGNED NOT NULL,
  `movies_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `categories_movies`
--

INSERT INTO `categories_movies` (`categories_id`, `movies_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 5),
(5, 6),
(6, 6),
(5, 7),
(4, 8),
(8, 8),
(9, 11),
(12, 10),
(5, 10),
(10, 11),
(5, 12),
(4, 13),
(3, 14),
(9, 15),
(13, 16),
(5, 17),
(12, 17),
(5, 19),
(10, 21),
(5, 22),
(12, 22),
(1, 23),
(2, 23),
(5, 23),
(3, 24),
(5, 25),
(7, 25),
(9, 26),
(5, 27),
(2, 28),
(3, 28),
(13, 28),
(2, 29),
(2, 30),
(13, 30),
(2, 31),
(10, 32),
(5, 33),
(12, 33),
(2, 34),
(3, 34),
(7, 34),
(9, 35),
(2, 36),
(5, 36),
(1, 37),
(2, 37),
(5, 37),
(1, 38),
(5, 38),
(5, 40),
(12, 40),
(1, 41),
(5, 41),
(2, 42),
(7, 42),
(13, 42),
(11, 43),
(4, 44),
(8, 44),
(1, 39),
(2, 14),
(1, 47),
(1, 48),
(11, 4),
(1, 4),
(5, 49),
(5, 51),
(5, 50),
(10, 39);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_08_131739_create_movies_table', 1),
(4, '2020_06_08_131842_create_categories_table', 1),
(5, '2020_06_08_142500_create_category_movie_table', 2),
(7, '2014_10_12_100000_create_password_resets_table', 4),
(14, '2014_10_12_000000_create_users_table', 5),
(15, '2020_06_23_111125_create_shipping_infos_table', 5),
(16, '2020_06_23_111134_create_orders_table', 5),
(17, '2020_06_23_122352_create_order_movie_table', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `picture` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `movies`
--

INSERT INTO `movies` (`id`, `title`, `release_date`, `description`, `price`, `picture`) VALUES
(3, 'Obrazy Bez Autora', '2020-06-12', 'Historia oparta na biografii malarza Kurta Barnerta. Mały Kurt jest bardzo przywiązany do swojej młodej i niezwykłej ciotki Elisabeth. Jej choroba i jej los wywrą duży wpływ na jego późniejsze, powojenne życie. Jako młody malarz Kurt zakochuje się w pięknej Ellie. Okazuje się, że jej rodzina skrywa pewną mroczną tajemnicę, związaną z losami głównego bohatera. Dodatkowo artystę wciąż dręczą wspomnienia z dzieciństwa, które przypadło na czasy rządów nazistów, a uwielbiany początkowo socrealizm przynosi gorzkie rozczarowanie. Czy ucieczka na Zachód przyniesie mu ukojenie?', '49.99', 'https://fwcdn.pl/fpo/83/34/788334/7912759.3.jpg'),
(4, 'Balon', '2018-09-18', 'Dwie żyjące w NRD rodziny wspólnymi siłami postanawiają zbudować balon, którym polecą na Zachód.', '29.12', 'https://fwcdn.pl/fpo/02/94/810294/7919284.3.jpg'),
(5, 'Zawód: Kobieciarz', '2019-04-17', 'Alex od dzieciństwa marzył, aby być szczęśliwym i bogatym, ale nie przemęczając się zanadto. I zrealizował swe marzenia, zostając facetem do towarzystwa. Jednak po 25 latach wygodnego życia z milionerką Denise, Alex zostaje porzucony i traci wszystko. Szukając dachu nad głową, musi odnowić kontakty z siostrą… i jak najszybciej uwieść jakąś inną bogatą kobietę. W międzyczasie próbuje nauczyć fachu swego 10-letniego siostrzeńca.', '28.49', 'https://fwcdn.pl/fpo/39/49/823949/7879623.3.jpg'),
(7, '30 Gramów', '2019-03-17', 'Policja ściga Nasera Khakzada - bossa narkotykowego. Po złapaniu go,  mężczyzna robi wszystko, żeby uciec i uratować swoją rodzinę.', '23.49', 'https://fwcdn.pl/fpo/72/72/837272/7922949.3.jpg'),
(10, 'Zdrajca', '2020-07-03', 'W najdroższym ze swoich filmów mistrz Bellocchio bez wahania zdradza romantyczną, gangsterską narrację spod znaku \"Ojca chrzestnego\" na rzecz surowej rekonstrukcji brutalnych wydarzeń. W jej centrum znajduje się Tommaso Buscetta, boss, który złamał omertę, mafijną zmowę milczenia. Dzięki jego zeznaniom doszło do najgłośniejszego procesu przeciwko Cosa Nostrze, tzw. maxiproces doprowadził do skazania 362 mafiosów. Fascynujące ekranowe dochodzenie skupia się na przemianie Buscetty, dla którego La Cosa Nostra, \"nasza sprawa\", zaczęła znaczyć coś zupełnie innego, niż chcieliby szefowie klanów. Co ważne, reżyser nie psychologizuje, nie zgaduje intencji przestępcy, za to z pasją kreśli sytuację człowieka najpierw ściganego przez policję, a później przez mafię, który większość życia spędził w ukryciu.', '49.99', 'https://fwcdn.pl/fpo/75/34/807534/7912757.3.jpg'),
(12, 'Przesłuchanie', '2019-09-08', 'Anna Bronsky jest nauczycielką gry na skrzypcach w liceum muzycznym. Jest żoną muzyka i matką 10-letniego Jonasa. Podczas corocznych egzaminów rekrutacyjnych nauczycielka fascynuje się talentem Alexandra, który kandyduje do szkoły. Pomimo sprzeciwu innych nauczycieli, Anna postanawia przygotować go do egzaminów pośrednich. Odkrywa w nim wielki talent i każdą chwilę poświęca wspólnym ćwiczeniom. Tym samym zaniedbuje swoją rodzinę, która nie może na nią liczyć. Presję Anny wzmaga jej przyjaciel i jednocześnie kochanek, który zaprasza ją do wspólnego występu w kwintecie. Podczas koncertu kobieta wypada fatalnie. Po tym katastrofalnym wydarzeniu Anna skupia się tylko na swoim uczniu. W dniu egzaminu dochodzi do tragedii... ', '23.39', 'https://fwcdn.pl/fpo/99/20/839920/7901704.3.jpg'),
(13, 'Zaginiona Dziewczyna', '2020-07-03', 'Pielęgniarka od lat pracuje dla jednej rodziny i pozostaje z nimi w dobrych stosunkach. Relacja staje pod znakiem zapytania, gdy jej bratanek zostaje oskarżony o porwanie ich córki.', '38.99', 'https://fwcdn.pl/fpo/66/44/836644/7917351.3.jpg'),
(14, 'Niezwykłe Lato z Tess', '2019-02-09', '10-letni Sam spędza z rodziną wakacje nad morzem. Wkrótce poznaje nieco ekscentryczną Tess. Spotkanie to okaże się źródłem nie tylko letnich przygód, ale i refleksji o tym, co w życiu najważniejsze.', '29.99', 'https://fwcdn.pl/fpo/50/79/825079/7899510.3.jpg'),
(15, 'Niewidzialny Człowiek', '2020-02-26', 'Po zerwaniu toksycznej relacji mąż Cecilii, naukowiec-wynalazca popełnia samobójstwo. Od tej pory zaczynają ją prześladować dziwne zdarzenia.', '35.99', 'https://fwcdn.pl/fpo/04/08/770408/7916148.3.jpg'),
(17, 'Cóż Za Piękny Dzień', '2019-09-07', 'Apatyczny reporter nawiązuje kontakt z najbardziej lubianym sąsiadem w kraju.', '32.99', 'https://fwcdn.pl/fpo/81/06/808106/7916147.3.jpg'),
(19, 'Prawda', '2019-08-28', 'Lumir wraca z mężem do matki - legendarnej aktorki, która zaniedbywała ją w dzieciństwie. Spotkanie po latach zamieni się w konfrontację, w trakcie której miłość zderzy się z tajonymi urazami, a prawda wreszcie ujrzy światło dzienne.', '24.99', 'https://fwcdn.pl/fpo/61/62/826162/7912300.3.jpg'),
(22, 'Judy', '2019-08-30', 'Zima 1968 roku. Ciesząca się ogromną popularnością Judy Garland przybywa do Londynu na serię koncertów.', '29.99', 'https://fwcdn.pl/fpo/31/41/823141/7913420.3.jpg'),
(23, 'Sokół z Masłem Orzechowym', '2019-05-09', 'Zak jest wyjątkowym chłopakiem i zrobi wszystko, by spełnić swoje niezwykłe marzenie – chce podbić świat amerykańskiego wrestlingu. Na swojej drodze przypadkiem spotyka Tylera, drobnego złodziejaszka o wielkim sercu, który decyduje się mu pomóc.', '24.99', 'https://fwcdn.pl/fpo/37/64/803764/7906532.3.jpg'),
(25, 'Koty', '2019-12-18', 'Porzucona przez swoich właścicieli, Victoria musi odnaleźć się w tanecznym świecie kotów.', '32.99', 'https://fwcdn.pl/fpo/44/22/824422/7900000.3.jpg'),
(26, 'The Grudge: Klątwa', '2020-01-01', 'Każdy, kto wejdzie do przeklętego domu, zginie okrutną śmiercią.', '23.99', 'https://fwcdn.pl/fpo/06/49/720649/7903263.3.jpg'),
(27, 'Wszystko Dla Mojej Matki', '2019-09-16', 'Olka ma siedemnaście lat. Za ciągłe ucieczki z domu dziecka, sąd umieszcza ją w zakładzie poprawczym.', '23.99', 'https://fwcdn.pl/fpo/57/01/835701/7907303.3.jpg'),
(28, 'Urwis', '2019-08-08', 'Po śmierci bogatej właścicielki Urwis musi nauczyć radzić sobie w życiu.', '29.99', 'https://fwcdn.pl/fpo/09/89/840989/7922011.3.jpg'),
(30, 'Tajni i Fajni', '2019-12-25', 'Na barkach dwóch całkowicie różnych od siebie agentów spoczywa bezpieczeństwo całego świata.', '29.99', 'https://fwcdn.pl/fpo/48/68/794868/7909338.3.jpg'),
(31, 'Tam Gdzieś Musi Być Niebo', '2019-05-24', 'Palestyński autor znów kieruje kamerę na siebie. Tym razem, żeby dziwić się codziennym życiem, ludzkim twarzom i zwyczajom: na Bliskim Wschodzie, w Paryżu i Nowym Jorku. Przypomina, że gdy uważnie przyjrzeć się znajomym miejscom, można w nich odkryć wiele drobnych cudów i śmiesznostek.', '29.99', 'https://ssl-gfx.filmweb.pl/po/94/58/829458/7909417.3.jpg'),
(32, 'Psy 3. W Imię Zasad', '2020-01-14', 'Po 25 latach odsiadki Franz Maurer wkracza w nową Polskę, gdzie nic nie jest takie, jak zapamiętał. Wkrótce ponownie spotyka Nowego.', '39.99', 'https://fwcdn.pl/fpo/58/16/835816/7922230.3.jpg'),
(34, 'Doktor Dolittle', '2020-01-01', 'Dr Dolittle wyrusza na mityczną wyspę, by z pomocą zwierząt,  zdobyć lekarstwo na chorobę królowej Anglii.\r\n', '35.99', 'https://fwcdn.pl/fpo/58/27/785827/7905189.3.jpg'),
(36, 'Kawki Na Drodze', '2018-07-01', 'Mára i Heduš wsiadają w skradziony samochód, by odwiedzić dziadka jednego z chłopców. Jadąc popisują się sami przed sobą, a potem chcą zaimponować dziewczynie, którą spotkali przy szosie.', '23.99', 'https://fwcdn.pl/fpo/90/28/809028/7850938.3.jpg'),
(37, 'Jojo Rabbit', '2019-09-08', 'Młody Niemiec Jojo, członek nazistowskiej organizacji dla młodzieży Jungvolk, pomaga Żydówce. Jednocześnie próbuje pozostać nazistą.', '39.99', 'https://fwcdn.pl/fpo/74/17/817417/7911352.3.jpg'),
(38, '1917', '2019-12-25', 'Dwóch młodych żołnierzy - Schofield i Blake dostają rozkaz przedostania się za linie wroga, aby dostarczyć tajną wiadomość, która pozwoli brytyjskim żołnierzy uniknąć wpadnięcia w śmiertelną pułapkę.', '32.99', 'https://fwcdn.pl/fpo/69/80/816980/7913530.3.jpg'),
(39, 'Bad Boys For Life', '2020-01-01', 'Gdy z więzienia ucieka pałająca żądzą zemsty baronowa narkotykowego kartelu, bohaterowie stają przed największym wyzwaniem w swojej dotychczasowej karierze.', '33.06', 'https://fwcdn.pl/fpo/91/61/539161/7911789.3.jpg'),
(40, 'Richard Jewell', '2019-11-20', 'Amerykański ochroniarz ratuje życie tysięcy ludzi, zapobiegając wybuchowi bomby w trakcie igrzysk olimpijskich. Tymczasem media podają fałszywą informację, jakoby to on był terrorystą.', '32.99', 'https://fwcdn.pl/fpo/85/11/708511/7922288.3.jpg'),
(41, 'Proxima', '2019-09-07', 'Sara jest astronautką. Jako jedyna kobieta bierze udział w wyczerpującym szkoleniu Europejskiej Agencji Kosmicznej.', '32.99', 'https://fwcdn.pl/fpo/90/02/809002/7922270.3.jpg'),
(42, 'Śnieżka i Fantastyczna Siódemka', '2019-07-25', 'O pocałunek od Śnieżki w czerwonych pantofelkach zabiega siedmiu, zaczarowanych w krasnoludki, królewiczów.', '29.99', 'https://fwcdn.pl/fpo/40/04/844004/7907990.3.jpg'),
(48, 'test', '2020-06-05', 'tsdfsdf', '12.12', 'https://fwcdn.pl/fpo/91/61/539161/7911789.3.jpg'),
(49, 'Tylko Sprawiedliwość', '2020-06-26', 'Światowej sławy adwokat Bryan Stevenson wspomina sprawę skazanego na karę śmierci mordercy osiemnastolatki Waltera McMilliana, którego udało mu się wybronić.', '49.99', 'https://fwcdn.pl/fpo/41/90/824190/7915632.3.jpg'),
(50, 'Eastern', '2020-06-26', 'W świecie regulowanym bezwzględnym, patriarchalnym kodeksem dwie młode dziewczyny, w imię honoru swych rodzin, muszą dokończyć krwawą wendetę', '49.99', 'https://fwcdn.pl/fpo/23/26/832326/7898769.3.jpg'),
(51, 'Żegnaj, Mój Synu', '2020-06-26', 'Grupa dzieciaków kąpie się nad zalewem - za chwilę dojdzie tu do tragedii. Towarzyszymy im jednak tylko przez moment,...', '49.99', 'https://fwcdn.pl/fpo/99/09/819909/7923222.3.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `total_cost` decimal(8,2) UNSIGNED NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `shipping_id`, `total_cost`, `paid`, `payment_type`, `created_at`, `updated_at`) VALUES
(14, 3, 15, '12.12', 0, 'cash', '2020-06-24 13:32:27', '2020-06-24 13:32:27'),
(15, 3, 16, '35.99', 0, 'cash', '2020-06-24 13:32:45', '2020-06-24 13:32:45'),
(16, 3, 16, '12.12', 0, 'cash', '2020-06-24 13:37:13', '2020-06-24 13:37:13'),
(17, 3, 16, '12.12', 0, 'cash', '2020-06-24 13:41:08', '2020-06-24 13:41:08');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order_movie`
--

CREATE TABLE `order_movie` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shipping_infos`
--

CREATE TABLE `shipping_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `shipping_infos`
--

INSERT INTO `shipping_infos` (`id`, `user_id`, `name`, `surname`, `country`, `city`, `street`, `created_at`, `updated_at`) VALUES
(14, 1, 'Sebastian Winiarski', 'ggggg', 'Polska', 'Poznań', 'Glinianki', '2020-06-24 13:16:17', '2020-06-24 13:20:25'),
(16, 3, 'Sebastian', 'Winiarski', 'Polska', 'Poznań', 'Glinianki', '2020-06-24 13:32:45', '2020-06-24 13:41:08');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'test@test.com', '$2y$10$nR8Zu5KeE4LhGkIKWVjJqeVNBDaGZUu1nkyehseJVRfYhuecRqZ4C', 'customer', NULL, '2020-06-23 12:33:29', '2020-06-23 12:33:29'),
(3, 'test2@test.com', '$2y$10$fiuQ50BxhjrHl1GP3cwUPeMa89jFsrcmFo6khg8LXaHPeou64x10C', 'customer', NULL, '2020-06-24 13:20:59', '2020-06-24 13:20:59'),
(5, 'test11@test.com', '$2y$10$y1sPKQYFJifOgB.6rd.M0u3cIQbFFkIyGnEbhvW5bQjTFe8mQFd0u', 'customer', NULL, '2020-06-24 16:31:52', '2020-06-24 16:31:52'),
(6, 'admin@admin.com', '$2y$10$WvCC.7V6cR3/EC.lBqjuy.2pBC2jfCcAAWrDjDoy7R5416zyKGhOy', 'admin', NULL, '2020-06-24 18:16:57', '2020-06-24 18:16:57');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `shipping_infos`
--
ALTER TABLE `shipping_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `shipping_infos`
--
ALTER TABLE `shipping_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
