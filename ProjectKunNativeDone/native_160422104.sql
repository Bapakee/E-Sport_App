-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 09 Jan 2025 pada 19.06
-- Versi server: 8.0.40-0ubuntu0.22.04.1
-- Versi PHP: 8.1.2-1ubuntu2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `native_160422104`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `achievement`
--

CREATE TABLE `achievement` (
  `id` int NOT NULL,
  `game_id` int NOT NULL,
  `achievement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tahun` int NOT NULL,
  `team_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `achievement`
--

INSERT INTO `achievement` (`id`, `game_id`, `achievement`, `tahun`, `team_id`) VALUES
(1, 1, 'G-Loot VALORANT Clash - Grand Finals', 2011, 1),
(2, 1, 'Valorant Champions Tour: Masters Tokyo: Second place', 2011, 2),
(3, 1, 'Valorant Champions Tour: LOCK//IN São Paulo: Third place', 2012, 3),
(4, 1, 'Valorant Champions Tour: EMEA League: Fourth place', 2012, 4),
(5, 1, 'VALORANT Champions (9th-12th place): Performed', 2012, 5),
(6, 2, 'LCK (League of Legends Champions Korea)', 2015, 6),
(7, 2, 'LEC (League of Legends European Championship)', 2015, 7),
(8, 2, 'LPL (League of Legends Pro League)', 2016, 8),
(9, 2, 'Mid-Season Invitational (MSI)', 2017, 9),
(10, 3, 'League of Legends World Championship (Worlds)', 2014, 10),
(11, 3, 'Call of Duty League (CDL)', 2014, 2),
(12, 3, 'Call of Duty Mobile World Championship', 2015, 12),
(13, 3, 'ESWC Call of Duty', 2015, 4),
(14, 3, 'MLG Call of Duty Events', 2016, 8),
(15, 3, 'Call of Duty League Championship (CDL Champs)', 2014, 1),
(16, 4, 'OGA Dota PIT', 2010, 5),
(17, 4, 'The Summit', 2020, 8),
(18, 4, 'ONE Esports Dota 2 World Pro Invitational', 2021, 5),
(19, 4, 'DreamLeague Major', 2016, 10),
(20, 4, 'Dota 2 Asia Championships (DAC)', 2018, 9),
(21, 5, 'Fortnite Champion Series (FNCS)', 2019, 9),
(22, 5, 'DreamHack Open featuring Fortnite', 2021, 1),
(23, 5, 'Twitch Rivals Fortnite Showdown', 2023, 1),
(24, 5, 'Fortnite World Cup', 2013, 7),
(25, 5, 'Fortnite Summer Skirmish Series', 2019, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time` varchar(32) NOT NULL,
  `date` int NOT NULL,
  `month` varchar(32) NOT NULL,
  `location` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id`, `title`, `foto`, `time`, `date`, `month`, `location`, `description`) VALUES
(1, 'Regional Qualifier - Valorant', 'https://cdnr.escharts.com/uploads/public/623/c6b/449/623c6b449185c801479246.jpg?width=1200&height=630&extension=png', '10.00 AM', 5, 'SEP', 'Los Angeles,CA', 'The Valorant Champions Tour (VCT) is a global competitive esports tournament series for the video game Valorant organised by Riot Games, the game\'s developers. The series runs multiple events throughout each season, culminating in Valorant Champions, the top-level event of the tour. The VCT was announced in 2020, with its inaugural season taking place in 2021.'),
(2, 'League of Legends Workshop', 'https://i.ytimg.com/vi/5nzeQ-vHF34/sddefault.jpg', '5.00 PM', 10, 'SEP', 'New York', 'A group of animated short videos released in 2017 that explore the lore of League of Legends. The videos explore different characters, locations, animation styles, and techniques.'),
(3, 'Call of Duty Championship', 'https://cdn.mos.cms.futurecdn.net/s8n6KyJfaoA9hWgKc5XuAL.jpg', '09.00 AM', 7, 'OCT', 'Discord (Online)', 'The Call of Duty Championship is an annual Call of Duty tournament held at the end of each competitive season to determine the year\'s World Champion. To determine qualification, teams must qualify through events before the World Championship.'),
(4, 'Dota 2 DreamLeague Season 25', 'https://i.ytimg.com/vi/F-bdCDQuxeQ/maxresdefault.jpg', '11.25 PM', 11, 'NOV', 'Los Angeles,CA', 'ASDASD'),
(5, 'Fortnite Invitational', 'https://www.sportstravelmagazine.com/wp-content/uploads/2022/05/Fortnite-1024x490.jpeg', '10.30 AM', 4, 'DEC', 'New York', 'asdasd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_team`
--

CREATE TABLE `event_team` (
  `idevent` int NOT NULL,
  `idteam` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `event_team`
--

INSERT INTO `event_team` (`idevent`, `idteam`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 6),
(2, 1),
(2, 2),
(2, 6),
(3, 1),
(3, 4),
(3, 9),
(4, 1),
(4, 4),
(5, 3),
(5, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gameData`
--

CREATE TABLE `gameData` (
  `id` int NOT NULL,
  `nama` varchar(32) NOT NULL,
  `gambar` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `gameData`
--

INSERT INTO `gameData` (`id`, `nama`, `gambar`, `description`) VALUES
(1, 'Valorant', 'https://img.redbull.com/images/c_limit,w_1500,h_1000/f_auto,q_auto/redbullcom/2020/6/5/ctsejxmdtw9inp8zqqqd/red-bull-campus-clutch-valorant-agents', 'Valorant is an online multiplayer computer game, produced by Riot Games. It is a first-person shooter game, consisting of two teams of five, where one team attacks and the other defends. Players control characters known as \'agents\', who all have different abilities to use during gameplay.'),
(2, 'League of Legends', 'https://cdn1.epicgames.com/offer/24b9b5e323bc40eea252a10cdd3b2f10/EGS_LeagueofLegends_RiotGames_S1_2560x1440-80471666c140f790f28dff68d72c384b', 'League of Legends is a multiplayer online battle arena (MOBA) game in which the player controls a character (\"champion\") with a set of unique abilities from an isometric perspective. As of 2023, there are over 160 champions available to play.'),
(3, 'Call of Duty', 'https://cdn.sanity.io/images/bl383u0v/production/62098294527831f2a07aeb94a1be0adfa5785dde-1500x1000.jpg?rect=0,106,1500,788&w=1200&h=630&q=70&fit=crop&auto=format', 'Call of Duty is the world-renowned first-person shooter (FPS) franchise that has entertained players for decades. Whether you\'re a newcomer to the world of Call of Duty, or a long-serving veteran, there\'s a diversity of experiences available that cater to a variety of tastes and abilities.'),
(4, 'Dota 2', 'https://i.pcmag.com/imagery/reviews/00XEmE7YBg1AOLEzZFQxhJV-3.fit_lim.size_1050x591.v1569475078.jpg', 'Dota 2 is a multiplayer online battle arena (MOBA) game produced by Valve . It is a standalone game and follow up to Defense of the Ancients which is a modification for the Warcraft III game. Dota 2 is a fantasy-style game consisting of two teams of five players.'),
(5, 'Fortnite', 'https://cdn2.unrealengine.com/social-image-chapter4-s3-3840x2160-d35912cc25ad.jpg', 'Fortnite is a third-person shooter game where up to 100 players compete to be the last person or team standing. You can compete alone or join a team of up to four. You progress through the game by exploring the island, collecting weapons, building fortifications and engaging in combat with other players.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `join_proposal`
--

CREATE TABLE `join_proposal` (
  `id` int NOT NULL,
  `idmember` int NOT NULL,
  `idteam` int NOT NULL,
  `description` text NOT NULL,
  `status` enum('Declined','Waiting','Accepted') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `join_proposal`
--

INSERT INTO `join_proposal` (`id`, `idmember`, `idteam`, `description`, `status`) VALUES
(1, 1, 1, 'Trying to Fit In', 'Waiting'),
(2, 6, 7, 'I want to be a Pro Player', 'Accepted'),
(3, 9, 10, 'I want to Join please', 'Declined'),
(4, 24, 4, 'hello bang saya ingin masuk', 'Waiting'),
(5, 24, 5, 'karna mau', 'Waiting'),
(6, 24, 5, 'asdf', 'Waiting'),
(7, 28, 12, 'testing saja ', 'Waiting'),
(8, 28, 8, 'saya kan jago bang jadi to long rekrut saya bang', 'Waiting'),
(9, 0, 1, '0out it\nYes\n', 'Waiting'),
(10, 28, 3, 'hello bang saya ingein masuk', 'Waiting');

-- --------------------------------------------------------

--
-- Struktur dari tabel `memberData`
--

CREATE TABLE `memberData` (
  `id` int NOT NULL,
  `photo` text NOT NULL,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(32) NOT NULL,
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `memberData`
--

INSERT INTO `memberData` (`id`, `photo`, `username`, `role`, `password`, `fname`, `lname`) VALUES
(1, 'https://admin.esports.gg/wp-content/uploads/2022/08/Asuna-Valorant.jpg', 'Asuna', 'Gold lane', '0', '', ''),
(2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAngQk0_jjOhOgsc0puL5fKAQzoHnhcM57Aw&s', 'Boostio', 'Mid lane', '0', '', ''),
(3, 'https://liquipedia.net/commons/images/thumb/b/bf/Cryocells_at_the_VCT_Stage_2_Masters_Copenhagen.jpg/428px-Cryocells_at_the_VCT_Stage_2_Masters_Copenhagen.jpg', 'Cryocells', 'Exp lane', '0', '', ''),
(4, 'https://admin.esports.gg/wp-content/uploads/2024/04/eeiu-VALORANT-SETTINGS-968x544.jpg', 'eeiu', 'Jungle', '0', '', ''),
(5, 'https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2024/09/pencapaian-tenz-pemain-pro-valorant-cover.png', 'Tenz', 'Roamer', '0', '', ''),
(6, 'https://staticg.sportskeeda.com/editor/2024/04/6d61f-17124980454311-1920.jpg', 'moose', 'Jungler', '0', '', ''),
(7, 'https://liquipedia.net/commons/images/5/55/OXY_at_Red_Bull_Home_Ground_4.jpg', 'OXY', 'Roamer', '0', '', ''),
(8, 'https://oneesports.blob.core.windows.net/cdn-data/sites/2/2021/04/Wild-Rift_Kaigu_RRQ-PH_2.jpg', 'ro2ssy', 'Gold Lane', '0', '', ''),
(9, 'https://dotesports.com/wp-content/uploads/2023/07/lol-vicla-flyquest-header.jpg?w=1200', 'v1c', 'Exp Lane', '0', '', ''),
(10, 'https://staticg.sportskeeda.com/editor/2023/02/60565-16765705780165-1920.jpg', 'Xeppaa', 'Mid Lane', '0', '', ''),
(11, 'https://blix.gg/wp-content/uploads/2024/10/467ea1cd232f0f4e.jpeg', 'Apotheon', 'Duelist', '0', '', ''),
(12, 'https://liquipedia.net/commons/images/e/e5/Derrek_at_the_VCT_2023_LOCKIN_S%C3%A3o_Paulo.jpg', 'Derrek', 'Sentinel', '0', '', ''),
(13, 'https://staticg.sportskeeda.com/editor/2024/04/735d6-17138879045197-1920.jpg?w=640', 'NaturE', 'Controller', '0', '', ''),
(14, 'https://admin.esports.gg/wp-content/uploads/2024/03/supamen-peace-sign.jpg', 'supamen', 'Duelist', '0', '', ''),
(15, 'https://cdn.thespike.gg/player%2520images%25203%2FSoaR_epathy_1651934170492.png', 'epathy', 'Controller', '0', '', ''),
(16, 'https://ggscore.com/media/logo/p6.png', 'Bai', 'Initiator', '0', '', ''),
(17, 'https://liquipedia.net/commons/images/e/e1/Topson_Riyadh_Masters_2024.jpg', 'Nightmare', 'Duelist', '0', '', ''),
(18, 'https://dotesports.com/wp-content/uploads/2022/12/07114657/Quinn-Dota-2.png?resize=768,432', 'Seigen', 'Sentinel', '0', '', ''),
(19, 'https://liquipedia.net/commons/images/thumb/7/7e/RRQ_Nerpehko.png/600px-RRQ_Nerpehko.png', 'Nerpheko', 'Rusher', '0', '', ''),
(20, 'https://liquipedia.net/commons/images/e/ed/AURA_Esports_NoMrcy_2021.jpg', 'Nomercy', 'In Game Leader', '0', '', ''),
(21, 'https://liquipedia.net/commons/images/8/83/RRQ_RYU_Snape_2024.png', 'Snape', 'Rusher', '0', '', ''),
(22, 'https://liquipedia.net/commons/images/1/11/Zai_The_International_2022.jpg', 'Dutz', 'Rusher', '0', '', ''),
(23, 'https://liquipedia.net/commons/images/e/e2/Abay_Sep22.png', 'Abay', 'Support', '0', '', ''),
(24, 'https://liquipedia.net/commons/images/thumb/6/67/CRIT_VIP_Razor_2023.jpg/600px-CRIT_VIP_Razor_2023.jpg', 'Razor', 'In Game Leader', '0', '', ''),
(25, 'https://cdn.oneesports.gg/cdn-data/2022/08/Valorant_Sentinels_Shroud_VCTNALCQ.jpg', 'Shroud', 'InGame Leader', '0', '', ''),
(26, 'https://liquipedia.net/commons/images/thumb/f/f4/The_Dojo_iiTzTimmy_at_the_ALGS_Birmingham_Championship.jpg/450px-The_Dojo_iiTzTimmy_at_the_ALGS_Birmingham_Championship.jpg', 'Timmy', 'Support', '0', '', ''),
(27, 'https://liquipedia.net/commons/images/thumb/c/c3/S1mple_at_StarSeries_S7.jpg/450px-S1mple_at_StarSeries_S7.jpg', 'Simple', 'Duelist', '0', '', ''),
(28, '', 'rey', 'In Game Leader', '123', 'Reynald', 'David'),
(29, 'https://dotesports.com/wp-content/uploads/2021/11/28174832/FFUDl8_XMA0jh-D-scaled.jpg?w=1200', 'Bapake', 'Jungle', '123', 'rey', 'nald');

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedule`
--

CREATE TABLE `schedule` (
  `id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `foto` text NOT NULL,
  `game_id` int NOT NULL,
  `team_id` int NOT NULL,
  `time` varchar(16) NOT NULL,
  `date` int NOT NULL,
  `month` varchar(16) NOT NULL,
  `location` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `schedule`
--

INSERT INTO `schedule` (`id`, `title`, `foto`, `game_id`, `team_id`, `time`, `date`, `month`, `location`, `description`) VALUES
(1, 'Regional Qualifier - Valorant', 'https://cdnr.escharts.com/uploads/public/623/c6b/449/623c6b449185c801479246.jpg?width=1200&height=630&extension=png', 1, 1, '10.00 AM', 5, 'SEP', 'Los Angeles,CA', 'asdasd'),
(2, 'League of Legends Workshop', 'https://i.ytimg.com/vi/5nzeQ-vHF34/sddefault.jpg', 2, 2, '5.00 PM', 10, 'SEP', 'Los Angeles,CA', 'asdasd'),
(3, 'Call of Duty Championship', 'https://cdn.mos.cms.futurecdn.net/s8n6KyJfaoA9hWgKc5XuAL.jpg', 3, 3, '09.00 AM', 7, 'OCT', 'Los Angeles,CA', 'asdasd'),
(4, 'Dota 2 Livestream', 'https://i.ytimg.com/vi/F-bdCDQuxeQ/maxresdefault.jpg', 4, 4, '11.25 PM', 11, 'NOV', 'Los Angeles,CA', 'asdasd'),
(5, 'Fortnite Invitational', 'https://www.sportstravelmagazine.com/wp-content/uploads/2022/05/Fortnite-1024x490.jpeg', 5, 5, '10.30 AM', 4, 'DEC', 'Los Angeles,CA', 'asdasd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `team`
--

CREATE TABLE `team` (
  `id` int NOT NULL,
  `nama` varchar(32) NOT NULL,
  `game_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `team`
--

INSERT INTO `team` (`id`, `nama`, `game_id`) VALUES
(1, '100 Thieves', 1),
(2, 'Evil Geniuses', 1),
(3, 'FLUFFY AIMERS', 1),
(4, 'G2 Esports', 2),
(5, 'YFP Gaming', 2),
(6, 'TSM', 2),
(7, 'G2 Esports', 3),
(8, 'YFP Gaming', 3),
(9, 'Evil Geniuses', 4),
(10, 'G2 Esports', 4),
(11, 'Team Liquid', 5),
(12, 'Cloud 9', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `team_member`
--

CREATE TABLE `team_member` (
  `idteam` int NOT NULL,
  `idmember` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `team_member`
--

INSERT INTO `team_member` (`idteam`, `idmember`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 11),
(3, 12),
(3, 13),
(4, 14),
(4, 15),
(4, 16),
(5, 17),
(5, 18),
(5, 19),
(6, 20),
(6, 21),
(7, 22),
(7, 23),
(7, 24),
(8, 25),
(8, 26),
(8, 27);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `event_team`
--
ALTER TABLE `event_team`
  ADD PRIMARY KEY (`idevent`,`idteam`);

--
-- Indeks untuk tabel `gameData`
--
ALTER TABLE `gameData`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `join_proposal`
--
ALTER TABLE `join_proposal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idmember` (`idmember`),
  ADD KEY `idteam` (`idteam`);

--
-- Indeks untuk tabel `memberData`
--
ALTER TABLE `memberData`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`) USING BTREE;

--
-- Indeks untuk tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`idteam`,`idmember`),
  ADD KEY `idteam` (`idteam`,`idmember`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `achievement`
--
ALTER TABLE `achievement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `gameData`
--
ALTER TABLE `gameData`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `join_proposal`
--
ALTER TABLE `join_proposal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `memberData`
--
ALTER TABLE `memberData`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `team`
--
ALTER TABLE `team`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Ketidakleluasaan untuk tabel `team_member`
--
ALTER TABLE `team_member`
  ADD CONSTRAINT `team_member_ibfk_1` FOREIGN KEY (`idteam`) REFERENCES `team` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
