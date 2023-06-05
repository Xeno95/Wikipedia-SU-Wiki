-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 04, 2023 at 03:40 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `su-wiki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admini`
--

CREATE TABLE `admini` (
  `ID` int(20) NOT NULL,
  `IMIE` varchar(35) NOT NULL,
  `NAZWISKO` varchar(35) NOT NULL,
  `LOGIN` date NOT NULL,
  `HASLO` date DEFAULT NULL,
  `NR_TELEFONU` varchar(20) DEFAULT NULL,
  `E_MAIL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admini`
--

INSERT INTO `admini` (`ID`, `IMIE`, `NAZWISKO`, `LOGIN`, `HASLO`, `NR_TELEFONU`, `E_MAIL`) VALUES
(1, 'Adrian', 'Cosiowski', '0000-00-00', '0000-00-00', '+48 190 223 311', 'cosiowki@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ciekawostki`
--

CREATE TABLE `ciekawostki` (
  `ID` int(20) NOT NULL,
  `ID_CIEKAWOSTKI` int(25) NOT NULL,
  `OPIS` varchar(1000) NOT NULL,
  `ID_GRAFIKI` int(20) DEFAULT NULL,
  `ID_POD_CIEKAWOSTKI` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ciekawostki_zdjecia`
--

CREATE TABLE `ciekawostki_zdjecia` (
  `ID` int(20) NOT NULL,
  `ID_GRAFIKI` int(20) NOT NULL,
  `ID_ZDJECIA` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `naglowek`
--

CREATE TABLE `naglowek` (
  `ID_NAGLOWEK` int(20) NOT NULL,
  `ID_OPISY` int(20) DEFAULT NULL,
  `ID_INFO` int(20) DEFAULT NULL,
  `ID_GRAFIKI` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `naglowek`
--

INSERT INTO `naglowek` (`ID_NAGLOWEK`, `ID_OPISY`, `ID_INFO`, `ID_GRAFIKI`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `naglowek_info`
--

CREATE TABLE `naglowek_info` (
  `ID` int(20) NOT NULL,
  `ID_INFO` int(20) NOT NULL,
  `NAZWA_INFO` varchar(50) NOT NULL,
  `ID_POD_INFO` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `naglowek_info`
--

INSERT INTO `naglowek_info` (`ID`, `ID_INFO`, `NAZWA_INFO`, `ID_POD_INFO`) VALUES
(1, 1, 'Rasa', 1),
(2, 1, 'Klejnot', 2),
(3, 1, 'Wiek', 3),
(4, 1, 'Aktor Głosowy', 4),
(5, 1, 'Debiut', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `naglowek_opisy`
--

CREATE TABLE `naglowek_opisy` (
  `ID` int(11) NOT NULL,
  `ID_OPISY` int(20) DEFAULT NULL,
  `OPIS` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `naglowek_opisy`
--

INSERT INTO `naglowek_opisy` (`ID`, `ID_OPISY`, `OPIS`) VALUES
(1, 1, 'Steven Quartz Universe to tytułowy główny bohater Steven Universe serii . Jest synem Grega Universe i Rose Quartz , jedynej znanej hybrydy człowieka i Klejnotu oraz pierwszego Kryształowego Klejnotu ludzkiego pochodzenia. W wyniku swojego pochodzenia Steven jest niezwykle wyjątkową istotą z wrodzonymi mocami wykraczającymi poza zdolności zwykłych ludzi i Klejnotów. Kiedy był jeszcze dzieckiem, Steven stopniowo dorastał od towarzysza do Kryształowych Klejnotów, stając się sercem zespołu dzięki swojej życzliwej naturze i zaradności. '),
(2, 1, 'Steven jest oddany ochronie ludzkości i pomaganiu potrzebującym, tak jak zrobił to Rose Quartz, i chociaż jej monumentalna spuścizna kiedyś zmusiła Stevena do życia w jej cieniu, od tego czasu przewyższył ją, kładąc kres autorytarnym praktykom Wielkiej Diamentowej Władzy i ustanawiając pokój na całym świecie. Galaktyka. Jednak konsekwencje błędów jego matki nadal prześladują Stevena i tych, na których mu zależy, ku jego rosnącej frustracji. Dodatkowo, gdy jego przyjaciele i rodzina wciąż się powiększają i zaczynają wychodzić w świat i poza niego, Steven zaczął zmagać się z własną tożsamością i tym, co chce zrobić z resztą swojego życia. Zaczął także godzić się z tłumioną traumą, którą nabudował przez lata swoich przygód i doświadczeń bliskich śmierci z Klejnotami. '),
(3, 1, 'Jednak pod koniec serii, po tak długim utrzymywaniu swoich uczuć, kulminacją jest przemiana w gigantycznego potwora z klejnotów po dojściu do wniosku, że jest nim, przyjaciołom i rodzinie Stevena udaje się dotrzeć do niego z mocą Miłość. W kolejnych miesiącach postanawia opuścić Beach City , aby wyruszyć w samotną podróż, aby zobaczyć świat i odnaleźć siebie. ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `naglowek_zdjecia`
--

CREATE TABLE `naglowek_zdjecia` (
  `ID` int(20) NOT NULL,
  `ID_GRAFIKI` int(20) NOT NULL,
  `ID_ZDJECIA` int(20) NOT NULL,
  `NAZWA` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `naglowek_zdjecia`
--

INSERT INTO `naglowek_zdjecia` (`ID`, `ID_GRAFIKI`, `ID_ZDJECIA`, `NAZWA`) VALUES
(1, 1, 3, '16 Lat'),
(2, 1, 2, '15-16 Lat'),
(3, 1, 1, '13-14 Lat');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opis`
--

CREATE TABLE `opis` (
  `ID` int(20) NOT NULL,
  `ID_OPIS` int(20) NOT NULL,
  `OPIS` varchar(4000) NOT NULL DEFAULT 'Brak Opisu.',
  `KOMENTARZ` varchar(300) DEFAULT NULL,
  `ID_GRAFIKI` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opis_zdjecie`
--

CREATE TABLE `opis_zdjecie` (
  `ID` int(20) NOT NULL,
  `ID_GRAFIKI` int(20) NOT NULL,
  `ID_ZDJECIA` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pod_ciekawostki`
--

CREATE TABLE `pod_ciekawostki` (
  `ID` int(20) NOT NULL,
  `ID_POD_CIEKAWOSTKI` int(20) NOT NULL,
  `OPIS` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pod_info`
--

CREATE TABLE `pod_info` (
  `ID` int(20) NOT NULL,
  `ID_POD_INFO` int(20) NOT NULL,
  `INFO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pod_info`
--

INSERT INTO `pod_info` (`ID`, `ID_POD_INFO`, `INFO`) VALUES
(1, 1, 'Półczłowiek'),
(2, 1, 'Półklejnot'),
(3, 2, 'Różowy Diament'),
(4, 3, '16 Lat<p>[Seria Epilogów]</p>'),
(5, 3, '14-15 Lat<p>[Film]</p>'),
(6, 3, '13 Lat<p>[S.1-5]</p>'),
(7, 4, 'Maciej Falana<p>[Odc.1-13]</p>'),
(8, 4, 'Jan Rotowski<p>[Odc.14+]</p>'),
(9, 5, 'Odcinek Pilotażowy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot`
--

CREATE TABLE `przedmiot` (
  `ID` int(20) NOT NULL,
  `ID_PRZEDMIOT` int(25) NOT NULL,
  `ID_GRAFIKI` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot_zdjecia`
--

CREATE TABLE `przedmiot_zdjecia` (
  `ID` int(20) NOT NULL,
  `ID_GRAFIKI` int(20) NOT NULL,
  `NAZWA` varchar(50) NOT NULL,
  `OPIS` varchar(500) NOT NULL,
  `KOMENTARZ` varchar(200) DEFAULT NULL,
  `ID_ZDJECIA` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strony`
--

CREATE TABLE `strony` (
  `ID_STRONY` int(20) NOT NULL,
  `ID_TYP` varchar(25) DEFAULT NULL,
  `NAZWA_STRONY` varchar(50) DEFAULT NULL,
  `ID_NAGLOWEK` int(20) DEFAULT NULL,
  `ID_PRZEDMIOT` int(20) DEFAULT NULL,
  `ID_OPIS` int(20) DEFAULT NULL,
  `ID_CIEKAWOSTKI` int(20) DEFAULT NULL,
  `DATA_UTWORZENIA` date DEFAULT current_timestamp(),
  `DATA_MODYFIKACJI` date NOT NULL DEFAULT current_timestamp(),
  `SPECIALNA_KOLEJNOSC` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strony`
--

INSERT INTO `strony` (`ID_STRONY`, `ID_TYP`, `NAZWA_STRONY`, `ID_NAGLOWEK`, `ID_PRZEDMIOT`, `ID_OPIS`, `ID_CIEKAWOSTKI`, `DATA_UTWORZENIA`, `DATA_MODYFIKACJI`, `SPECIALNA_KOLEJNOSC`) VALUES
(1, 'strona_postac', 'Steven Universe', 1, 1, 1, 1, '2023-05-31', '2023-05-31', NULL),
(2, 'strona_postac', 'Granat', 2, 2, 2, 2, '2023-06-01', '2023-06-01', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typ_strony`
--

CREATE TABLE `typ_strony` (
  `ID_TYP` varchar(25) NOT NULL,
  `NAZWA_TYPU` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typ_strony`
--

INSERT INTO `typ_strony` (`ID_TYP`, `NAZWA_TYPU`) VALUES
('strona_epilogi', 'Epilogi'),
('strona_film', 'Film'),
('strona_lokacje', 'Lokacje'),
('strona_obiekty', 'Obiekty'),
('strona_postac', 'Postacie'),
('strona_sezon1', 'Sezon 1'),
('strona_sezon2', 'Sezon 2'),
('strona_sezon3', 'Sezon 3'),
('strona_sezon4', 'Sezon 4'),
('strona_sezon5', 'Sezon 5'),
('strona_wydarzenia', 'Wydarzenia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

CREATE TABLE `zdjecia` (
  `ID_ZDJECIA` int(20) NOT NULL,
  `LINK` varchar(2000) NOT NULL,
  `NAZWA_ORIENTACYJNA` varchar(50) DEFAULT NULL,
  `SEZON` int(2) NOT NULL,
  `ODCINEK` int(4) NOT NULL,
  `DATA_WYDANIA` date NOT NULL DEFAULT current_timestamp(),
  `DATA_DODANIA` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zdjecia`
--

INSERT INTO `zdjecia` (`ID_ZDJECIA`, `LINK`, `NAZWA_ORIENTACYJNA`, `SEZON`, `ODCINEK`, `DATA_WYDANIA`, `DATA_DODANIA`) VALUES
(1, 'Postacie/Steven_Universe/Steven_Universe_1.webp', NULL, 0, 0, '2023-06-03', '2023-06-03'),
(2, 'Postacie/Steven_Universe/Steven_Universe_2.webp', NULL, 0, 0, '2023-06-03', '2023-06-03'),
(3, 'Postacie/Steven_Universe/Steven_Universe_3.webp', NULL, 0, 0, '2023-06-03', '2023-06-03');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `admini`
--
ALTER TABLE `admini`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `ciekawostki`
--
ALTER TABLE `ciekawostki`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_GRAFIKI` (`ID_GRAFIKI`),
  ADD UNIQUE KEY `ID_POD_CIEKAWOSTKI` (`ID_POD_CIEKAWOSTKI`),
  ADD KEY `STR_CIE_IDC` (`ID_CIEKAWOSTKI`);

--
-- Indeksy dla tabeli `ciekawostki_zdjecia`
--
ALTER TABLE `ciekawostki_zdjecia`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CIEKAWOSTKI_ZDJECIA_ID_GRAFIKI_FK` (`ID_GRAFIKI`),
  ADD KEY `CIEKAWOSTKI_ZDJECIA_ID_ZDJECIA_FK` (`ID_ZDJECIA`);

--
-- Indeksy dla tabeli `naglowek`
--
ALTER TABLE `naglowek`
  ADD PRIMARY KEY (`ID_NAGLOWEK`),
  ADD UNIQUE KEY `ID_OPISY` (`ID_OPISY`),
  ADD UNIQUE KEY `ID_INFO` (`ID_INFO`),
  ADD UNIQUE KEY `ID_GRAFIKI` (`ID_GRAFIKI`);

--
-- Indeksy dla tabeli `naglowek_info`
--
ALTER TABLE `naglowek_info`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_POD_INFO` (`ID_POD_INFO`),
  ADD KEY `NAGLOWEK_INFO_ID_INFO_FK` (`ID_INFO`);

--
-- Indeksy dla tabeli `naglowek_opisy`
--
ALTER TABLE `naglowek_opisy`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_OPISY` (`ID_OPISY`);

--
-- Indeksy dla tabeli `naglowek_zdjecia`
--
ALTER TABLE `naglowek_zdjecia`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NAGLOWEK_ZDJECIA_ID_GRAFIKI_FK` (`ID_GRAFIKI`),
  ADD KEY `NAGLOWEK_ZDJECIA_ID_ZDJECIA_FK` (`ID_ZDJECIA`);

--
-- Indeksy dla tabeli `opis`
--
ALTER TABLE `opis`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_GRAFIKI` (`ID_GRAFIKI`),
  ADD KEY `STRONY_OPIS_ID_OPIS` (`ID_OPIS`);

--
-- Indeksy dla tabeli `opis_zdjecie`
--
ALTER TABLE `opis_zdjecie`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `OPIS_ZDJECIE_ID_GRAFIKI_FK` (`ID_GRAFIKI`),
  ADD KEY `OPIS_ZDJECIE_ID_ZDJECIA_FK` (`ID_ZDJECIA`);

--
-- Indeksy dla tabeli `pod_ciekawostki`
--
ALTER TABLE `pod_ciekawostki`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `POD_CIEK_ID_PODCIEK_FK` (`ID_POD_CIEKAWOSTKI`);

--
-- Indeksy dla tabeli `pod_info`
--
ALTER TABLE `pod_info`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `POD_INFO_ID_POD_INFO_FK` (`ID_POD_INFO`);

--
-- Indeksy dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_GRAFIKI` (`ID_GRAFIKI`),
  ADD KEY `STR_PRZ_IDP` (`ID_PRZEDMIOT`);

--
-- Indeksy dla tabeli `przedmiot_zdjecia`
--
ALTER TABLE `przedmiot_zdjecia`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PRZEDMIOT_ZDJECIA_ID_GRAFIKI_FK` (`ID_GRAFIKI`),
  ADD KEY `PRZEDMIOT_ZDJECIA_ID_ZDJECIA_FK` (`ID_ZDJECIA`);

--
-- Indeksy dla tabeli `strony`
--
ALTER TABLE `strony`
  ADD PRIMARY KEY (`ID_STRONY`),
  ADD UNIQUE KEY `NAZWA_STRONY` (`NAZWA_STRONY`),
  ADD UNIQUE KEY `ID_NAGLOWEK` (`ID_NAGLOWEK`),
  ADD UNIQUE KEY `ID_PRZEDMIOT` (`ID_PRZEDMIOT`),
  ADD UNIQUE KEY `ID_OPIS` (`ID_OPIS`),
  ADD UNIQUE KEY `ID_CIEKAWOSTKI` (`ID_CIEKAWOSTKI`),
  ADD KEY `ID_TYP` (`ID_TYP`);

--
-- Indeksy dla tabeli `typ_strony`
--
ALTER TABLE `typ_strony`
  ADD PRIMARY KEY (`ID_TYP`);

--
-- Indeksy dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`ID_ZDJECIA`),
  ADD UNIQUE KEY `LINK` (`LINK`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admini`
--
ALTER TABLE `admini`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ciekawostki`
--
ALTER TABLE `ciekawostki`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ciekawostki_zdjecia`
--
ALTER TABLE `ciekawostki_zdjecia`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `naglowek_info`
--
ALTER TABLE `naglowek_info`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `naglowek_opisy`
--
ALTER TABLE `naglowek_opisy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `naglowek_zdjecia`
--
ALTER TABLE `naglowek_zdjecia`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `opis`
--
ALTER TABLE `opis`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opis_zdjecie`
--
ALTER TABLE `opis_zdjecie`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pod_ciekawostki`
--
ALTER TABLE `pod_ciekawostki`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pod_info`
--
ALTER TABLE `pod_info`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `przedmiot_zdjecia`
--
ALTER TABLE `przedmiot_zdjecia`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strony`
--
ALTER TABLE `strony`
  MODIFY `ID_STRONY` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `ID_ZDJECIA` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ciekawostki`
--
ALTER TABLE `ciekawostki`
  ADD CONSTRAINT `STR_CIE_IDC` FOREIGN KEY (`ID_CIEKAWOSTKI`) REFERENCES `strony` (`ID_CIEKAWOSTKI`);

--
-- Constraints for table `ciekawostki_zdjecia`
--
ALTER TABLE `ciekawostki_zdjecia`
  ADD CONSTRAINT `CIEKAWOSTKI_ZDJECIA_ID_GRAFIKI_FK` FOREIGN KEY (`ID_GRAFIKI`) REFERENCES `ciekawostki` (`ID_GRAFIKI`),
  ADD CONSTRAINT `CIEKAWOSTKI_ZDJECIA_ID_ZDJECIA_FK` FOREIGN KEY (`ID_ZDJECIA`) REFERENCES `zdjecia` (`ID_ZDJECIA`);

--
-- Constraints for table `naglowek`
--
ALTER TABLE `naglowek`
  ADD CONSTRAINT `STRONY_NAGID_NAGLOWEK` FOREIGN KEY (`ID_NAGLOWEK`) REFERENCES `strony` (`ID_NAGLOWEK`);

--
-- Constraints for table `naglowek_info`
--
ALTER TABLE `naglowek_info`
  ADD CONSTRAINT `NAGLOWEK_INFO_ID_INFO_FK` FOREIGN KEY (`ID_INFO`) REFERENCES `naglowek` (`ID_INFO`);

--
-- Constraints for table `naglowek_opisy`
--
ALTER TABLE `naglowek_opisy`
  ADD CONSTRAINT `naglowek_opisy_ibfk_1` FOREIGN KEY (`ID_OPISY`) REFERENCES `naglowek` (`ID_OPISY`);

--
-- Constraints for table `naglowek_zdjecia`
--
ALTER TABLE `naglowek_zdjecia`
  ADD CONSTRAINT `NAGLOWEK_ZDJECIA_ID_GRAFIKI_FK` FOREIGN KEY (`ID_GRAFIKI`) REFERENCES `naglowek` (`ID_GRAFIKI`),
  ADD CONSTRAINT `NAGLOWEK_ZDJECIA_ID_ZDJECIA_FK` FOREIGN KEY (`ID_ZDJECIA`) REFERENCES `zdjecia` (`ID_ZDJECIA`);

--
-- Constraints for table `opis`
--
ALTER TABLE `opis`
  ADD CONSTRAINT `STRONY_OPIS_ID_OPIS` FOREIGN KEY (`ID_OPIS`) REFERENCES `strony` (`ID_OPIS`);

--
-- Constraints for table `opis_zdjecie`
--
ALTER TABLE `opis_zdjecie`
  ADD CONSTRAINT `OPIS_ZDJECIE_ID_GRAFIKI_FK` FOREIGN KEY (`ID_GRAFIKI`) REFERENCES `opis` (`ID_GRAFIKI`),
  ADD CONSTRAINT `OPIS_ZDJECIE_ID_ZDJECIA_FK` FOREIGN KEY (`ID_ZDJECIA`) REFERENCES `zdjecia` (`ID_ZDJECIA`);

--
-- Constraints for table `pod_ciekawostki`
--
ALTER TABLE `pod_ciekawostki`
  ADD CONSTRAINT `POD_CIEK_ID_PODCIEK_FK` FOREIGN KEY (`ID_POD_CIEKAWOSTKI`) REFERENCES `ciekawostki` (`ID_POD_CIEKAWOSTKI`);

--
-- Constraints for table `pod_info`
--
ALTER TABLE `pod_info`
  ADD CONSTRAINT `POD_INFO_ID_POD_INFO_FK` FOREIGN KEY (`ID_POD_INFO`) REFERENCES `naglowek_info` (`ID_POD_INFO`);

--
-- Constraints for table `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD CONSTRAINT `STR_PRZ_IDP` FOREIGN KEY (`ID_PRZEDMIOT`) REFERENCES `strony` (`ID_PRZEDMIOT`);

--
-- Constraints for table `przedmiot_zdjecia`
--
ALTER TABLE `przedmiot_zdjecia`
  ADD CONSTRAINT `PRZEDMIOT_ZDJECIA_ID_GRAFIKI_FK` FOREIGN KEY (`ID_GRAFIKI`) REFERENCES `przedmiot` (`ID_GRAFIKI`),
  ADD CONSTRAINT `PRZEDMIOT_ZDJECIA_ID_ZDJECIA_FK` FOREIGN KEY (`ID_ZDJECIA`) REFERENCES `zdjecia` (`ID_ZDJECIA`);

--
-- Constraints for table `strony`
--
ALTER TABLE `strony`
  ADD CONSTRAINT `strony_ibfk_1` FOREIGN KEY (`ID_TYP`) REFERENCES `typ_strony` (`ID_TYP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
