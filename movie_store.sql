-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Cze 2020, 15:19
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
(4, 3),
(5, 3),
(4, 4),
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
(5, 18),
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
(10, 39),
(1, 39),
(5, 40),
(12, 40),
(1, 41),
(5, 41),
(2, 42),
(7, 42),
(13, 42),
(11, 43),
(4, 44),
(8, 44);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_08_131739_create_movies_table', 1),
(4, '2020_06_08_131842_create_categories_table', 1),
(5, '2020_06_08_142500_create_category_movie_table', 2);

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
(4, 'Balon', '2018-09-18', 'Dwie żyjące w NRD rodziny wspólnymi siłami postanawiają zbudować balon, którym polecą na Zachód.', '28.99', 'https://fwcdn.pl/fpo/02/94/810294/7919284.3.jpg'),
(5, 'Zawód: Kobieciarz', '2019-04-17', 'Alex od dzieciństwa marzył, aby być szczęśliwym i bogatym, ale nie przemęczając się zanadto. I zrealizował swe marzenia, zostając facetem do towarzystwa. Jednak po 25 latach wygodnego życia z milionerką Denise, Alex zostaje porzucony i traci wszystko. Szukając dachu nad głową, musi odnowić kontakty z siostrą… i jak najszybciej uwieść jakąś inną bogatą kobietę. W międzyczasie próbuje nauczyć fachu swego 10-letniego siostrzeńca.', '28.49', 'https://fwcdn.pl/fpo/39/49/823949/7879623.3.jpg'),
(6, 'Nasz Czas', '2018-09-05', 'Carlos Reygadas opowiada o małżeństwie, które decyduje się żyć w otwartym związku i stopniowo prowadzi swoją relację na skraj przepaści. W główne role – szalejącego z zazdrości Juana i jego zaangażowanej w romans z Amerykaninem partnerki Esther – wcielili się sam reżyser i jego żona Natalia López. Na ekranie towarzyszą im ich własne dzieci, Rut i Eleazar Reygadas. \"Nasz czas\" nie ma jednak nic wspólnego z ekshibicjonizmem. Intymne są w nim przede wszystkim pytania o relacje i pasja, z jaką twórca dzieli się nimi z widzami. Akcja filmu rozgrywa się na meksykańskiej prowincji, w rodzinie zamożnych farmerów, którzy łączą ciężką pracę na ranczu z zamiłowaniem do sztuki. Obserwując walczące zwierzęta i zmagających się ze sobą ludzi, Reygadas pokazuje, jak kultura tworzy tamę dla instynktów, jak przekuwa pożądanie, agresję i namiętność w muzykę czy film. Ale wskazuje też na zagrożenie, jakim dla związków jest dziś technologia. Łatwość podróżowania i dostęp do różnych form komunikacji kuszą obietnicami innych miłości, innego życia. Tytułowy \"nasz czas\" ma więc u Reygadasa wymiar i prywatny, i szerszy wymiar społeczny.', '31.99', 'https://fwcdn.pl/fpo/08/72/810872/7915630.3.jpg'),
(7, '30 Gramów', '2019-03-17', 'Policja ściga Nasera Khakzada - bossa narkotykowego. Po złapaniu go,  mężczyzna robi wszystko, żeby uciec i uratować swoją rodzinę.', '23.49', 'https://fwcdn.pl/fpo/72/72/837272/7922949.3.jpg'),
(8, 'Jestem Ren', '2019-10-11', 'Renata z mężem Janem i synem Kamilem prowadzą pozornie spokojne życie z dala od miasta. Rodzinną sielankę zakłócają jednak epizody, w trakcie których kobieta zachowuje się w dziwny, niepokojący sposób. W relacje pomiędzy wszystkimi wkrada się coraz silniejsza nieufność oraz strach.', '22.99', 'https://fwcdn.pl/fpo/02/98/840298/7916557.3.jpg'),
(9, 'Powitanie Słońca', '2019-04-24', 'Reżyser odwiedza różne miejsca na ziemi, pokazując, jak dużą rolę może odgrywać joga w życiu osób różnych kultur.', '13.99', 'https://fwcdn.pl/fpo/24/46/832446/7923221.3.jpg'),
(10, 'Zdrajca', '2020-07-03', 'W najdroższym ze swoich filmów mistrz Bellocchio bez wahania zdradza romantyczną, gangsterską narrację spod znaku \"Ojca chrzestnego\" na rzecz surowej rekonstrukcji brutalnych wydarzeń. W jej centrum znajduje się Tommaso Buscetta, boss, który złamał omertę, mafijną zmowę milczenia. Dzięki jego zeznaniom doszło do najgłośniejszego procesu przeciwko Cosa Nostrze, tzw. maxiproces doprowadził do skazania 362 mafiosów. Fascynujące ekranowe dochodzenie skupia się na przemianie Buscetty, dla którego La Cosa Nostra, \"nasza sprawa\", zaczęła znaczyć coś zupełnie innego, niż chcieliby szefowie klanów. Co ważne, reżyser nie psychologizuje, nie zgaduje intencji przestępcy, za to z pasją kreśli sytuację człowieka najpierw ściganego przez policję, a później przez mafię, który większość życia spędził w ukryciu.', '49.99', 'https://fwcdn.pl/fpo/75/34/807534/7912757.3.jpg'),
(11, 'Nieobliczalny', '2020-07-01', 'Tego ranka Rachel jest już spóźniona do pracy, a przedzieranie się przez zakorkowane miasto to prawdziwa walka z czasem. Wszyscy kierowcy wokół są sfrustrowani i wzburzeni, ale jeden z nich jest tykającą bombą. Przepełniony gniewem i nienawiścią do świata, kipiący rządzą wymierzenia sprawiedliwości za wszystkie swoje nieszczęścia, tylko czeka na znak od losu. Gdy Rachel zatrąbi na niego na światłach, nieznajomy ruszy za nią w pogoń, gotowy dać jej bolesną lekcję. To co zaczęło się jak uliczna sprzeczka, wkrótce zmieni życie Rachel i jej bliskich w krwawą walkę o przetrwanie z człowiekiem, który nie ma już żadnych hamulców.', '49.99', 'https://fwcdn.pl/fpo/53/53/845353/7922945.3.jpg'),
(12, 'Przesłuchanie', '2019-09-08', 'Anna Bronsky jest nauczycielką gry na skrzypcach w liceum muzycznym. Jest żoną muzyka i matką 10-letniego Jonasa. Podczas corocznych egzaminów rekrutacyjnych nauczycielka fascynuje się talentem Alexandra, który kandyduje do szkoły. Pomimo sprzeciwu innych nauczycieli, Anna postanawia przygotować go do egzaminów pośrednich. Odkrywa w nim wielki talent i każdą chwilę poświęca wspólnym ćwiczeniom. Tym samym zaniedbuje swoją rodzinę, która nie może na nią liczyć. Presję Anny wzmaga jej przyjaciel i jednocześnie kochanek, który zaprasza ją do wspólnego występu w kwintecie. Podczas koncertu kobieta wypada fatalnie. Po tym katastrofalnym wydarzeniu Anna skupia się tylko na swoim uczniu. W dniu egzaminu dochodzi do tragedii... ', '23.39', 'https://fwcdn.pl/fpo/99/20/839920/7901704.3.jpg'),
(13, 'Zaginiona Dziewczyna', '2020-07-03', 'Pielęgniarka od lat pracuje dla jednej rodziny i pozostaje z nimi w dobrych stosunkach. Relacja staje pod znakiem zapytania, gdy jej bratanek zostaje oskarżony o porwanie ich córki.', '38.99', 'https://fwcdn.pl/fpo/66/44/836644/7917351.3.jpg'),
(14, 'Niezwykłe Lato z Tess', '2019-02-09', '10-letni Sam spędza z rodziną wakacje nad morzem. Wkrótce poznaje nieco ekscentryczną Tess. Spotkanie to okaże się źródłem nie tylko letnich przygód, ale i refleksji o tym, co w życiu najważniejsze.', '29.99', 'https://fwcdn.pl/fpo/50/79/825079/7899510.3.jpg'),
(15, 'Niewidzialny Człowiek', '2020-02-26', 'Po zerwaniu toksycznej relacji mąż Cecilii, naukowiec-wynalazca popełnia samobójstwo. Od tej pory zaczynają ją prześladować dziwne zdarzenia.', '35.99', 'https://fwcdn.pl/fpo/04/08/770408/7916148.3.jpg'),
(16, 'Naprzód', '2020-02-21', 'Dwóch braci próbuje sprowadzić na ziemię drugą połowę ciała swojego ojca, gdyż nieudane czary powodują, że pojawia się tylko od pasa w dół.', '23.99', 'https://fwcdn.pl/fpo/21/78/832178/7890671.3.jpg'),
(17, 'Cóż Za Piękny Dzień', '2019-09-07', 'Apatyczny reporter nawiązuje kontakt z najbardziej lubianym sąsiadem w kraju.', '32.99', 'https://fwcdn.pl/fpo/81/06/808106/7916147.3.jpg'),
(18, 'Biały, Biały Dzień', '2019-05-16', 'Owdowiały policjant próbuje zacząć wszystko od nowa: opiekuje się wnuczką, wykańcza dom dla córki, chodzi na terapię. Pewnego dnia odkrywa tajemnicę swojej zmarłej żony.', '24.99', 'https://fwcdn.pl/fpo/54/70/835470/7913005.3.jpg'),
(19, 'Prawda', '2019-08-28', 'Lumir wraca z mężem do matki - legendarnej aktorki, która zaniedbywała ją w dzieciństwie. Spotkanie po latach zamieni się w konfrontację, w trakcie której miłość zderzy się z tajonymi urazami, a prawda wreszcie ujrzy światło dzienne.', '24.99', 'https://fwcdn.pl/fpo/61/62/826162/7912300.3.jpg'),
(20, 'Jakub, Mimmi i Gadające Psy', '2019-02-01', 'Jakub i Mimmi to para kuzynów, którzy niezbyt się lubią. Wkrótce jednak pojawia się szansa, by to zmienić. Dzieci zaprzyjaźniają się z gangiem gadających psów.', '19.99', 'https://ssl-gfx.filmweb.pl/po/51/04/835104/7914444.3.jpg'),
(21, 'Jak Zostałem Gangsterem. Historia Prawdziwa', '2019-12-12', 'Historia najniebezpieczniejszego gangstera w Polsce, dla którego władza, bycie ponad stan i pieniądze stanowią priorytet.', '44.99', 'https://fwcdn.pl/fpo/50/83/835083/7907992.3.jpg'),
(22, 'Judy', '2019-08-30', 'Zima 1968 roku. Ciesząca się ogromną popularnością Judy Garland przybywa do Londynu na serię koncertów.', '29.99', 'https://fwcdn.pl/fpo/31/41/823141/7913420.3.jpg'),
(23, 'Sokół z Masłem Orzechowym', '2019-05-09', 'Zak jest wyjątkowym chłopakiem i zrobi wszystko, by spełnić swoje niezwykłe marzenie – chce podbić świat amerykańskiego wrestlingu. Na swojej drodze przypadkiem spotyka Tylera, drobnego złodziejaszka o wielkim sercu, który decyduje się mu pomóc.', '24.99', 'https://fwcdn.pl/fpo/37/64/803764/7906532.3.jpg'),
(24, 'Deerskin', '2019-05-15', 'Właściciel kurtki z jeleniej skóry postanawia dla niej unicestwić wszystkie inne kurtki świata.', '23.99', 'https://fwcdn.pl/fpo/29/69/832969/7906270.3.jpg'),
(25, 'Koty', '2019-12-18', 'Porzucona przez swoich właścicieli, Victoria musi odnaleźć się w tanecznym świecie kotów.', '32.99', 'https://fwcdn.pl/fpo/44/22/824422/7900000.3.jpg'),
(26, 'The Grudge: Klątwa', '2020-01-01', 'Każdy, kto wejdzie do przeklętego domu, zginie okrutną śmiercią.', '23.99', 'https://fwcdn.pl/fpo/06/49/720649/7903263.3.jpg'),
(27, 'Wszystko Dla Mojej Matki', '2019-09-16', 'Olka ma siedemnaście lat. Za ciągłe ucieczki z domu dziecka, sąd umieszcza ją w zakładzie poprawczym.', '23.99', 'https://fwcdn.pl/fpo/57/01/835701/7907303.3.jpg'),
(28, 'Urwis', '2019-08-08', 'Po śmierci bogatej właścicielki Urwis musi nauczyć radzić sobie w życiu.', '29.99', 'https://fwcdn.pl/fpo/09/89/840989/7922011.3.jpg'),
(29, 'Mayday', '2020-01-07', 'Janek, posiadający dwie żony, umiejętnie lawiruje pomiędzy nimi. Do czasu, gdy pojawią się kłopoty i powstanie zagrożenie, że cała sprawa się wyda.', '29.99', 'https://fwcdn.pl/fpo/71/01/837101/7922233.3.jpg'),
(30, 'Tajni i Fajni', '2019-12-25', 'Na barkach dwóch całkowicie różnych od siebie agentów spoczywa bezpieczeństwo całego świata.', '29.99', 'https://fwcdn.pl/fpo/48/68/794868/7909338.3.jpg'),
(31, 'Tam Gdzieś Musi Być Niebo', '2019-05-24', 'Palestyński autor znów kieruje kamerę na siebie. Tym razem, żeby dziwić się codziennym życiem, ludzkim twarzom i zwyczajom: na Bliskim Wschodzie, w Paryżu i Nowym Jorku. Przypomina, że gdy uważnie przyjrzeć się znajomym miejscom, można w nich odkryć wiele drobnych cudów i śmiesznostek.', '29.99', 'https://ssl-gfx.filmweb.pl/po/94/58/829458/7909417.3.jpg'),
(32, 'Psy 3. W Imię Zasad', '2020-01-14', 'Po 25 latach odsiadki Franz Maurer wkracza w nową Polskę, gdzie nic nie jest takie, jak zapamiętał. Wkrótce ponownie spotyka Nowego.', '39.99', 'https://fwcdn.pl/fpo/58/16/835816/7922230.3.jpg'),
(33, 'Gorący Temat', '2019-12-13', 'Historia kobiet, które przeciwstawiły się toksycznej atmosferze w słynnej sieci informacyjnej.', '29.99', 'https://fwcdn.pl/fpo/67/63/826763/7913421.3.jpg'),
(34, 'Doktor Dolittle', '2020-01-01', 'Dr Dolittle wyrusza na mityczną wyspę, by z pomocą zwierząt,  zdobyć lekarstwo na chorobę królowej Anglii.\r\n', '35.99', 'https://fwcdn.pl/fpo/58/27/785827/7905189.3.jpg'),
(35, 'Demony Prerii', '2018-09-10', 'Elizabeth podróżuje wraz ze swoim mężem na kraniec Stanów Zjednoczonych. Niewytłumaczalne wydarzenia, których staje się świadkiem, zaczynają doprowadzać ją do szaleństwa.', '29.99', 'https://fwcdn.pl/fpo/12/94/811294/7911410.3.jpg'),
(36, 'Kawki Na Drodze', '2018-07-01', 'Mára i Heduš wsiadają w skradziony samochód, by odwiedzić dziadka jednego z chłopców. Jadąc popisują się sami przed sobą, a potem chcą zaimponować dziewczynie, którą spotkali przy szosie.', '23.99', 'https://fwcdn.pl/fpo/90/28/809028/7850938.3.jpg'),
(37, 'Jojo Rabbit', '2019-09-08', 'Młody Niemiec Jojo, członek nazistowskiej organizacji dla młodzieży Jungvolk, pomaga Żydówce. Jednocześnie próbuje pozostać nazistą.', '39.99', 'https://fwcdn.pl/fpo/74/17/817417/7911352.3.jpg'),
(38, '1917', '2019-12-25', 'Dwóch młodych żołnierzy - Schofield i Blake dostają rozkaz przedostania się za linie wroga, aby dostarczyć tajną wiadomość, która pozwoli brytyjskim żołnierzy uniknąć wpadnięcia w śmiertelną pułapkę.', '32.99', 'https://fwcdn.pl/fpo/69/80/816980/7913530.3.jpg'),
(39, 'Bad Boys For Life', '2020-01-01', 'Gdy z więzienia ucieka pałająca żądzą zemsty baronowa narkotykowego kartelu, bohaterowie stają przed największym wyzwaniem w swojej dotychczasowej karierze.', '32.99', 'https://fwcdn.pl/fpo/91/61/539161/7911789.3.jpg'),
(40, 'Richard Jewell', '2019-11-20', 'Amerykański ochroniarz ratuje życie tysięcy ludzi, zapobiegając wybuchowi bomby w trakcie igrzysk olimpijskich. Tymczasem media podają fałszywą informację, jakoby to on był terrorystą.', '32.99', 'https://fwcdn.pl/fpo/85/11/708511/7922288.3.jpg'),
(41, 'Proxima', '2019-09-07', 'Sara jest astronautką. Jako jedyna kobieta bierze udział w wyczerpującym szkoleniu Europejskiej Agencji Kosmicznej.', '32.99', 'https://fwcdn.pl/fpo/90/02/809002/7922270.3.jpg'),
(42, 'Śnieżka i Fantastyczna Siódemka', '2019-07-25', 'O pocałunek od Śnieżki w czerwonych pantofelkach zabiega siedmiu, zaczarowanych w krasnoludki, królewiczów.', '29.99', 'https://fwcdn.pl/fpo/40/04/844004/7907990.3.jpg'),
(43, 'Nasze Miejsce Na Ziemi', '2019-09-01', 'Znany reżyser z żoną realizują marzenie o własnej farmie funkcjonującej w zgodzie z prawami natury. Realizują wyjątkowy projekt: 10 tysięcy drzew, ponad 200 rodzajów upraw i dziesiątki gatunków zwierząt żyjących w zgodzie ze sobą i swoją naturą.', '24.99', 'https://fwcdn.pl/fpo/20/01/832001/7922008.3.jpg'),
(44, 'Głębia Strachu', '2020-01-08', 'Grupa naukowców usiłuje wydostać się ze zniszczonej przez trzęsienie ziemi podwodnej stacji badawczej.', '29.99', 'https://fwcdn.pl/fpo/48/49/794849/7909339.3.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
