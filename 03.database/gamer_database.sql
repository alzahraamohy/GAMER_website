-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 09:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamer_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `G_ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` float NOT NULL DEFAULT 0,
  `Description` text NOT NULL,
  `Stock` varchar(25) NOT NULL DEFAULT 'OUT OF STOCK'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`G_ID`, `Name`, `Price`, `Description`, `Stock`) VALUES
(1, 'The Witcher 3', 29.9, 'An action role-playing game with a third-person perspective. Players control Geralt of Rivia, a monster slayer known as a Witcher. Geralt walks, runs, rolls and dodges, and (for the first time in the series) jumps, climbs and swims.', 'IN STOCK'),
(2, 'Assassin\'s Creed Valhalla', 47.99, 'An action role-playing video game structured around several main story arcs and numerous optional side-missions, called \"World Events\".', 'IN STOCK'),
(3, 'FarCry 6', 47.99, 'The game is set on the fictional Caribbean island of Yara, ruled as a dictatorship by \"El Presidente\" Antón Castillo (portrayed by Giancarlo Esposito) who is raising his son Diego (Anthony Gonzalez) to follow in his rule.', 'IN STOCK'),
(4, 'Minecraft', 29.99, 'Minecraft is a game made up of blocks, creatures, and community. Blocks can be used to reshape the world or build fantastical creations. Creatures can be battled or befriended, depending on your playstyle. Experience epic adventures solo or with friends, there\'s no wrong way to play.\r\n', 'IN STOCK'),
(5, 'Resident Evil 4', 29.99, 'A survival horror game by Capcom, originally released for the GameCube in 2005. Players control the special agent Leon S. Kennedy on a mission to rescue the US president\'s daughter, Ashley Graham, who has been kidnapped by a religious cult in rural Spain.', 'IN STOCK'),
(6, 'Red Dead Redemption 2', 59.99, 'After a robbery goes badly wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive.', 'IN STOCK'),
(7, 'Dead by Daylight', 19.99, 'A multiplayer (4vs1) horror game where one player takes on the role of the savage Killer, and the other four players play as Survivors, trying to escape the Killer and avoid being caught, tortured and killed. Survivors play in third-person and have the advantage of better situational awareness.', 'OUT OF STOCK'),
(8, 'EA Sports FC 24', 69.99, 'an association football-themed simulation video game developed by EA Vancouver and EA Romania and published by EA Sports. It is the inaugural installment in the EA Sports FC series, succeeding the FIFA video game series after Electronic Arts\'s partnership with FIFA concluded with FIFA 23.', 'OUT OF STOCK'),
(9, 'Hitman 3', 29.99, 'Concluding the story arc started in 2016\'s Hitman, the game follows genetically engineered assassin Agent 47 and his allies as they hunt down the leaders of the secretive organization Providence, which controls global affairs and was partially responsible for 47\'s creation and upbringing.', 'OUT OF STOCK'),
(10, 'Call of Duty Warzone', 39.9, 'A first-person shooter, set in the Call of Duty universe, in which players engage in multiplayer battle royale- and plunder-style skirmishes. Players assume the roles of soldiers/freedom fighters battling to be the last man standing or to earn the most money via scavenging and performing objectives.', 'OUT OF STOCK');

-- --------------------------------------------------------

--
-- Table structure for table `game_sr_minimum`
--

CREATE TABLE `game_sr_minimum` (
  `M_ID` int(11) NOT NULL,
  `OS` varchar(100) NOT NULL,
  `Processor` varchar(150) NOT NULL,
  `Memory` varchar(50) NOT NULL,
  `GPU` varchar(150) NOT NULL,
  `DirectX` varchar(25) NOT NULL,
  `Storage` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `game_sr_minimum`
--

INSERT INTO `game_sr_minimum` (`M_ID`, `OS`, `Processor`, `Memory`, `GPU`, `DirectX`, `Storage`) VALUES
(1, '64-bit Windows 7 or higher', 'Intel CPU Core i5-2500K 3.3GHz / AMD A10-5800K APU (3.8GHz)', '6 GB RAM', 'Nvidia GPU GeForce GTX 660 / AMD GPU Radeon HD 7870', 'Version 11', '50 GB available space'),
(2, '64-bit Windows 10, 64-bit Windows 11', 'AMD Ryzen 3 1200 3.1 GHz / Intel Core i5-4460 3.2 GHz', '8 GB RAM', 'AMD R9 380 /NVIDIA GeForce GTX 960', 'Version 12', '160 GB available space'),
(3, 'Windows 10 (20H1 version or newer, 64-bit versions)', 'AMD Ryzen 3 1200 @ 3. GHz or Intel Core i5-4460 @ 3.1 GHz (AVX, AVX2 and SSE 4.2 support required)', '8 GB RAM', 'AMD RX 460 (4 GB) or NVIDIA GeForce GTX 960 (4 GB)', 'Version 12', '170 GB available space'),
(4, '64-bit Windows 7 or higher', 'Intel Core i3 3210 / AMD A8 7600 APU or equivalent', '4 GB RAM', 'Intel HD Graphics 4000 / AMD Radeon R5 series or NVIDIA GeForce 400 Series or AMD Radeon HD 7000 series', 'Version 11', '1 GB available space'),
(5, 'Windows 10 (64 bit)', 'AMD Ryzen 3 1200 / Intel Core i5-7500', '8 GB RAM', 'AMD Radeon RX 560 with 4GB VRAM / NVIDIA GeForce GTX 1050 Ti with 4GB VRAM', 'Version 12', '80 GB available space'),
(6, 'Windows 10 - April 2018 Update (v1803)', 'Intel® Core™ i7-4770K / AMD Ryzen 5 1500X', '12 GB RAM', 'Nvidia GeForce GTX 1060 6GB / AMD Radeon RX 480 4GB', 'Version 11', '150 GB available space');

-- --------------------------------------------------------

--
-- Table structure for table `game_sr_recommended`
--

CREATE TABLE `game_sr_recommended` (
  `R_ID` int(11) NOT NULL,
  `OS` varchar(100) NOT NULL,
  `Processor` varchar(150) NOT NULL,
  `Memory` varchar(50) NOT NULL,
  `GPU` varchar(150) NOT NULL,
  `DirectX` varchar(25) NOT NULL,
  `Storage` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `game_sr_recommended`
--

INSERT INTO `game_sr_recommended` (`R_ID`, `OS`, `Processor`, `Memory`, `GPU`, `DirectX`, `Storage`) VALUES
(1, '64-bit Windows 10/11', 'Intel Core i5-7400 / Ryzen 5 1600', '8 GB RAM', 'Nvidia GTX 1070 / Radeon RX 480', 'Version 12', '50 GB available space'),
(2, 'Windows 10 (versions 64 bits uniquement)', 'AMD Ryzen 5 1600 3.2 GHz / Intel Core i7-4790 3.6 GHz', '8 GB RAM', 'AMD R9 380 /NVIDIA GeForce GTX 960', 'Version 12', '160 GB available space'),
(3, 'Windows 10 (20H1 version or newer, 64-bit versions)', 'AMD Ryzen 5 3600X @ 3.8 GHz or Intel Core i7-7700 @ 3.6 GHz (AVX, AVX2 and SSE 4.2 support required)', '16 GB RAM', 'AMD RX Vega 64 (8 GB) or NVIDIA GeForce GTX 1080 (8 GB)', 'Version 12', '170 GB available space'),
(4, '64-bit Windows 10, 11', 'Intel Core i5 4690 / AMD A10 7800 or equivalent', '8 GB RAM', 'NVIDIA GeForce 700 Series / AMD Radeon Rx 200 Series', 'Version 12', '4 GB SSD available space'),
(5, 'Windows 10 (64 bit)/Windows 11 (64 bit)', 'AMD Ryzen 5 3600 / Intel Core i7 8700', '16 GB RAM', 'AMD Radeon RX 5700 / NVIDIA GeForce GTX 1070', 'Version 12', '100 GB available space'),
(6, 'Windows 10 - April 2018 Update (v1803)', 'Intel® Core™ i7-4770K / AMD Ryzen 5 1500X', '16 GB RAM', 'Nvidia GeForce GTX 1060 6GB / AMD Radeon RX 480 4GB', 'Version 12', '150 GB available space');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `PurchasesID` int(4) NOT NULL,
  `UserName` varchar(10) NOT NULL,
  `PurchaseDate` datetime NOT NULL DEFAULT current_timestamp(),
  `TotalPrice` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`PurchasesID`, `UserName`, `PurchaseDate`, `TotalPrice`) VALUES
(1024, 'zahra', '2024-05-03 23:29:58', 49.00),
(1025, 'dayDreamer', '2024-05-03 23:30:18', 20.00),
(1026, 'strategySa', '2024-05-03 23:30:33', 40.00),
(1027, 'virtualVoy', '2024-05-03 23:31:10', 30.00),
(1028, 'virtualVoy', '2024-05-03 23:34:16', 30.00),
(1029, 'playerOne', '2024-05-03 23:34:16', 40.00),
(1030, 'questSeeke', '2024-05-03 23:34:16', 50.00),
(1031, 'nightRider', '2024-05-03 23:34:16', 30.00),
(1032, 'dayDreamer', '2024-05-03 23:34:16', 20.00),
(1033, 'pixelPirat', '2024-05-03 23:34:16', 60.00),
(1034, 'retroGamer', '2024-05-03 23:34:16', 40.00),
(1035, 'consoleKin', '2024-05-03 23:34:16', 50.00),
(1036, 'fantasyFan', '2024-05-04 14:04:38', 69.99),
(1037, 'zahra', '2024-05-04 14:08:51', 29.90),
(1038, 'mysteryMag', '2024-05-04 14:24:10', 29.99);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `UserName` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` int(9) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Last_login` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`UserName`, `Email`, `Password`, `Created_at`, `Last_login`) VALUES
('arcadeAce', 'arcadeace@example.co', 12345, '2024-05-05 08:00:00', '2024-05-05 08:30:00'),
('chaosCraft', 'chaoscrafter@example', 44444, '2024-05-01 09:00:00', '2024-05-01 09:30:00'),
('consoleKin', 'consoleking@example.', 77777, '2024-04-30 19:00:00', '2024-04-30 19:30:00'),
('dayDreamer', 'daydreamer@example.c', 34542, '2024-05-02 13:00:00', '2024-05-02 13:20:00'),
('dungeonDel', 'dungeondelver@exampl', 89898, '2024-05-04 12:00:00', '2024-05-04 12:30:00'),
('fantasyFan', 'fantasyfanatic@examp', 99999, '2024-04-29 07:00:00', '2024-04-29 07:30:00'),
('gamer2024', 'gamer2024@example.co', 12354, '2024-05-03 09:00:00', '2024-05-03 09:30:00'),
('mysteryMag', 'mysterymage@example.', 45455, '2024-04-27 03:00:00', '2024-04-27 03:30:00'),
('mythMaster', 'mythmaster@example.c', 65435, '2024-05-04 10:00:00', '2024-05-04 10:30:00'),
('nightRider', 'nightrider@example.c', 87645, '2024-05-01 11:00:00', '2024-05-01 11:30:00'),
('pixelPirat', 'pixelpirate@example.', 45231, '2024-05-04 15:00:00', '2024-05-04 15:30:00'),
('playerOne', 'playerone@example.co', 43276, '2024-05-03 07:00:00', '2024-05-03 08:15:00'),
('questSeeke', 'questseeker@example.', 55123, '2024-05-02 06:45:00', '2024-05-02 07:00:00'),
('retroGamer', 'retrogamer@example.c', 65423, '2024-04-29 17:00:00', '2024-04-29 17:30:00'),
('silentSnip', 'silentsniper@example', 56566, '2024-05-03 11:00:00', '2024-05-03 11:30:00'),
('spaceSailo', 'spacesailor@example.', 76423, '2024-05-03 16:00:00', '2024-05-03 16:30:00'),
('strategySa', 'strategysage@example', 32148, '2024-04-28 05:00:00', '2024-04-28 05:30:00'),
('timeTravel', 'timetraveler@example', 32451, '2024-05-01 05:00:00', '2024-05-01 05:30:00'),
('virtualVoy', 'virtualvoyager@examp', 66778, '2024-05-02 14:00:00', '2024-05-02 14:30:00'),
('zahra', 'zz@gmail.com', 111111, '2024-05-03 19:33:11', '2024-05-03 19:33:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`G_ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `game_sr_minimum`
--
ALTER TABLE `game_sr_minimum`
  ADD PRIMARY KEY (`M_ID`),
  ADD UNIQUE KEY `M_ID` (`M_ID`);

--
-- Indexes for table `game_sr_recommended`
--
ALTER TABLE `game_sr_recommended`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `R_ID` (`R_ID`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`PurchasesID`),
  ADD UNIQUE KEY `purchases_id` (`PurchasesID`),
  ADD KEY `username` (`UserName`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`UserName`),
  ADD UNIQUE KEY `user_email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `G_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `PurchasesID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1039;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game_sr_minimum`
--
ALTER TABLE `game_sr_minimum`
  ADD CONSTRAINT `game_sr_minimum_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `games` (`G_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `game_sr_recommended`
--
ALTER TABLE `game_sr_recommended`
  ADD CONSTRAINT `game_sr_recommended_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `games` (`G_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`UserName`) REFERENCES `user_data` (`UserName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
