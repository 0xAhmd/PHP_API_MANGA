-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2025 at 12:58 AM
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
-- Database: `manga_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `manga`
--

CREATE TABLE `manga` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `rate` float DEFAULT NULL CHECK (`rate` >= 0 and `rate` <= 5),
  `description` text DEFAULT NULL,
  `main_char` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manga`
--

INSERT INTO `manga` (`id`, `name`, `image`, `author`, `price`, `rate`, `description`, `main_char`, `release_date`) VALUES
(2, 'Attack on Titan', 'https://static.wikia.nocookie.net/shingekinokyojin/images/d/d8/Attack_on_Titan_Season_1.jpg/revision/latest/scale-to-width-down/1000?cb=20211005182832', 'Hajime Isayama', 10.99, 5, 'A story about humanity\'s fight against Titans.', 'Eren Yeager', '2009-09-09'),
(3, 'Jujutsu Kaisen', 'https://static.wikia.nocookie.net/jujutsu-kaisen/images/5/54/Gojo%27s_Past_Compilation_Movie_Key_Visual.png/revision/latest/scale-to-width-down/1000?cb=20241221070831', 'Gege Akutami', 9.99, 5, 'A world where cursed spirits and jujutsu sorcerers exist.', 'Yuji Itadori', '2018-03-05'),
(4, 'Death Note', 'https://static.wikia.nocookie.net/deathnote/images/7/76/DEATH_NOTE_anime.jpg/revision/latest?cb=20170720215429', 'Tsugumi Ohba', 8.99, 5, 'A high school student finds a notebook that allows him to kill anyone.', 'Light Yagami', '2003-12-01'),
(5, 'Monster', 'https://static.wikia.nocookie.net/obluda/images/0/06/Another_Monster_cover.jpg/revision/latest/scale-to-width-down/249?cb=20240821061446', 'Naoki Urasawa', 10.50, 4.9, 'A doctor\'s decision to save a child leads to a series of mysterious murders.', 'Dr. Kenzo Tenma', '1994-12-05'),
(6, 'Fullmetal Alchemist', 'https://static.wikia.nocookie.net/fma/images/e/e9/Fmab-poster.png/revision/latest/scale-to-width-down/1000?cb=20131124145205', 'Hiromu Arakawa', 9.50, 5, 'Two brothers seek the Philosopher\'s Stone after a failed alchemy experiment.', 'Edward Elric', '2001-07-12'),
(7, 'Demon Slayer', 'https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/e/e7/Infinity_Castle_Trilogy_Key_Visual_3.png/revision/latest/scale-to-width-down/1000?cb=20250301102505', 'Koyoharu Gotouge', 9.99, 4.7, 'A young boy becomes a demon slayer to avenge his family.', 'Tanjiro Kamado', '2016-02-15'),
(8, 'Solo Leveling', 'https://static.wikia.nocookie.net/solo-leveling/images/b/bf/Solo_Leveling_Returns.png/revision/latest/scale-to-width-down/285?cb=20200715031557', 'Chugong', 10.99, 4.6, 'A weak hunter gains a mysterious system that allows him to level up.', 'Sung Jin-Woo', '2016-03-25'),
(9, 'Naruto', 'https://upload.wikimedia.org/wikipedia/en/9/94/NarutoCoverTankobon1.jpg', 'Masashi Kishimoto', 8.99, 4.7, 'The journey of a ninja aiming to be Hokage.', 'Naruto Uzumaki', '1999-09-21'),
(10, 'Hunter x Hunter', 'https://upload.wikimedia.org/wikipedia/en/e/e8/Hunter_%C3%97_Hunter_vol._1.png', 'Yoshihiro Togashi', 9.50, 4.8, 'A boy\'s adventure to find his father in a world of Hunters.', 'Gon Freecss', '1998-03-03'),
(11, 'Tokyo Ghoul', 'https://static.wikia.nocookie.net/dubbing9585/images/3/38/Tokyo_Ghoul_Poster.jpg/revision/latest?cb=20201002130230', 'Sui Ishida', 9.99, 4.6, 'A college student becomes half-ghoul after a tragic encounter.', 'Ken Kaneki', '2011-09-08'),
(12, 'Bleach', 'https://upload.wikimedia.org/wikipedia/en/7/72/Bleachanime.png', 'Tite Kubo', 8.99, 4.5, 'A teenager becomes a Soul Reaper to protect the living and the dead.', 'Ichigo Kurosaki', '2001-08-07'),
(13, 'Vinland Saga', 'https://upload.wikimedia.org/wikipedia/en/d/d4/VinlandSagaewararccharacters.jpg', 'Makoto Yukimura', 10.99, 4.8, 'A Viking revenge story.', 'Thorfinn', '2005-04-13'),
(14, 'Code Geass', 'https://upload.wikimedia.org/wikipedia/en/7/74/Code_Geass_R1_box_set_cover.jpg', 'Ichiro Okouchi', 9.99, 4.7, 'A rebellion led by a genius strategist with a mysterious power.', 'Lelouch vi Britannia', '2006-10-05'),
(15, 'Berserk', 'https://upload.wikimedia.org/wikipedia/en/a/a1/Berserk_characters.png', 'Kentaro Miura', 12.99, 4.9, 'A dark fantasy tale of revenge and survival.', 'Guts', '1989-08-25'),
(16, 'Black Clover', 'https://upload.wikimedia.org/wikipedia/en/c/c8/Black_Clover_Volume_1_Blu-Ray.jpg', 'Yuki Tabata', 9.50, 4.4, 'A magicless boy aims to become the Wizard King.', 'Asta', '2015-02-16'),
(17, 'One Piece', 'https://static.wikia.nocookie.net/onepiece/images/f/fb/Volume_111.png/revision/latest/scale-to-width-down/1000?cb=20250217030811', 'Eiichiro Oda', 9.80, 4.9, 'A rubber-powered boy sails to become King of the Pirates.', 'Monkey D. Luffy', '1999-10-20'),
(18, 'Mob Psycho 100', 'https://upload.wikimedia.org/wikipedia/en/4/4b/Mob_Psycho_100_manga_vol_1.jpg', 'ONE', 9.10, 4.3, 'A psychic boy suppresses his powers while navigating teenage life.', 'Shigeo Kageyama (Mob)', '2016-07-11'),
(19, 'Code Geass', 'https://upload.wikimedia.org/wikipedia/en/7/74/Code_Geass_R1_box_set_cover.jpg', 'Ichiro Okouchi', 9.30, 4.6, 'An exiled prince gains a mysterious power and leads a rebellion.', 'Lelouch Lamperouge', '2006-10-05'),
(20, 'Erased', 'https://upload.wikimedia.org/wikipedia/en/6/60/Boku_Dake_ga_Inai_Machi_vol1.jpg', 'Kei Sanbe', 8.90, 4.2, 'A man travels back in time to prevent a tragedy.', 'Satoru Fujinuma', '2016-01-08'),
(21, 'Parasyte', 'https://upload.wikimedia.org/wikipedia/en/8/87/Parasyte_4.png', 'Hitoshi Iwaaki', 8.80, 4.2, 'A teenager is partially infected by a parasite and must coexist with it.', 'Shinichi Izumi', '2014-10-09'),
(22, 'Claymore', 'https://upload.wikimedia.org/wikipedia/en/4/45/ClaymoreCoverTankobon1.jpg', 'Norihiro Yagi', 8.20, 3.9, 'Women warriors with demon blood fight monsters.', 'Clare', '2007-04-03'),
(23, 'Dororo', 'https://cdn.myanimelist.net/images/anime/1725/97893l.jpg?_gl=1*1jyp5lq*_gcl_au*MTI4NDkzMDM4Ni4xNzQ1MDE0MjI0*_ga*NDU5OTU3MzM1LjE3NDUwMTQyMTU.*_ga_26FEP9527K*MTc0NTAxNDIyNC4xLjAuMTc0NTAxNDIyNC42MC4wLjA.', 'Osamu Tezuka', 8.60, 4, 'A boy seeks to reclaim his body parts stolen by demons.', 'Hyakkimaru', '2019-01-07'),
(24, 'No Game No Life', 'https://upload.wikimedia.org/wikipedia/en/c/cd/No_Game_No_Life_light_novel_vol_1.jpg', 'Yuu Kamiya', 8.50, 4.1, 'Siblings who are unbeatable at games get transported to a fantasy world.', 'Sora and Shiro', '2014-04-09'),
(25, 'The Promised Neverland', 'https://upload.wikimedia.org/wikipedia/en/4/44/The_Promised_Neverland%2C_Volume_1.jpg', 'Kaiu Shirai', 9.00, 4.4, 'Children plan a daring escape from a dark orphanage.', 'Emma', '2019-01-11'),
(26, 'Noragami', 'https://static.wikia.nocookie.net/noragami/images/b/b2/Noragami_First_Key_Visual.png/revision/latest?cb=20210130183438', 'Adachitoka', 8.30, 4, 'A minor god takes odd jobs to gain followers.', 'Yato', '2014-01-05'),
(27, 'Steins;Gate', 'https://upload.wikimedia.org/wikipedia/en/c/ca/Steins%3BGate_anime_cover.png', '5pb. and Nitroplus', 9.20, 4.8, 'A group of friends discovers time travel and its consequences.', 'Rintarou Okabe', '2011-04-06'),
(28, 'Re:Zero - Starting Life in Another World', 'https://static.wikia.nocookie.net/rezero/images/e/e0/Re_Zero_Daiyonshou_Manga_Volume_1_Cover.png/revision/latest/scale-to-width-down/253?cb=20211227151910', 'Tappei Nagatsuki', 8.90, 4.5, 'A man is transported to another world and discovers he has the power to return from death.', 'Subaru Natsuki', '2016-04-04'),
(29, 'Dr. Stone', 'https://upload.wikimedia.org/wikipedia/en/2/29/Doctor_stone.jpg', 'Riichiro Inagaki', 8.30, 4.2, 'After a mysterious phenomenon turns humanity to stone, a genius boy aims to rebuild civilization.', 'Senku Ishigami', '2019-07-05'),
(30, 'Chainsaw Man', 'https://upload.wikimedia.org/wikipedia/en/2/24/Chainsawman.jpg', 'Tatsuki Fujimoto', 9.00, 4.6, 'A young man merges with his pet devil to become Chainsaw Man and fight other devils.', 'Denji', '2022-10-12'),
(31, 'Oshi no Ko', 'https://upload.wikimedia.org/wikipedia/en/1/1c/Oshi_no_Ko_Volume_1.jpg', 'Aka Akasaka', 8.80, 4.4, 'A doctor and his patient are reincarnated into the world of showbiz, uncovering dark secrets.', 'Ai Hoshino', '2023-04-12'),
(32, 'Ranking of Kings', 'https://static.wikia.nocookie.net/ousamaranking/images/2/2f/FZJ7OFZaUAENPW5.jpg/revision/latest/scale-to-width-down/1000?cb=20220811041819', 'Sosuke Toka', 8.70, 4.3, 'A deaf prince sets out to prove his worth and become the greatest king.', 'Bojji', '2021-10-15'),
(33, 'Spy x Family', 'https://upload.wikimedia.org/wikipedia/en/5/51/Spy_Family_vol_1.jpg', 'Tatsuya Endo', 9.10, 4.7, 'A spy creates a fake family for a mission, unaware his wife is an assassin and his daughter is a telepath.', 'Loid Forger', '2022-04-09'),
(34, 'The Rising of the Shield Hero', 'https://upload.wikimedia.org/wikipedia/en/6/65/The_Rising_of_the_Shield_Hero_light_novel_vol_1.jpg', 'Aneko Yusagi', 8.40, 4.2, 'A man is summoned to another world as the Shield Hero and must fight to protect the kingdom.', 'Naofumi Iwatani', '2019-01-09'),
(35, 'That Time I Got Reincarnated as a Slime', 'https://upload.wikimedia.org/wikipedia/en/8/8c/That_Time_I_Got_Reincarnated_as_a_Slime_light_novel_volume_1_cover.jpg', 'Fuse', 8.50, 4.3, 'A man is reincarnated as a slime in a fantasy world and gains unique powers.', 'Rimuru Tempest', '2018-10-02'),
(36, 'Kaguya-sama: Love Is War', 'https://upload.wikimedia.org/wikipedia/en/8/86/Kaguya-sama_-_Love_is_War%2C_volume_1.jpg', 'Aka Akasaka', 8.90, 4.5, 'Two elite students engage in a battle of wits to make the other confess love first.', 'Kaguya Shinomiya', '2019-01-12'),
(37, 'Made in Abyss', 'https://cdn.myanimelist.net/images/anime/1785/103489l.jpg', 'Akihito Tsukushi', 8.80, 4.4, 'A girl descends into a mysterious abyss to find her mother, facing perilous challenges.', 'Riko', '2017-07-07'),
(38, 'Cyberpunk: Edgerunners', 'https://upload.wikimedia.org/wikipedia/en/a/a1/Cyberpunk_Edgerunners_poster.jpg', 'CD Projekt Red', 9.00, 4.6, 'In a dystopian future, a street kid becomes an edgerunner to survive.', 'David Martinez', '2022-09-13'),
(39, 'Classroom of the Elite', 'https://upload.wikimedia.org/wikipedia/en/5/52/Y%C5%8Dkoso_Jitsuryoku_Shij%C5%8D_Shugi_no_Ky%C5%8Dshitsu_e%2C_Volume_1.jpg', 'Shogo Kinugasa', 8.80, 4.4, 'A high school that gives students unprecedented freedom and secretly ranks them.', 'Kiyotaka Ayanokoji', '2015-05-27'),
(40, 'Reverend Insanity', 'https://static.wikia.nocookie.net/reverend-insanity/images/7/7b/300.jpg/revision/latest?cb=20181213091411', 'Gu Zhen Ren', 9.30, 4.7, 'A ruthless man reincarnates in a fantasy world to dominate with demonic cultivation.', 'Fang Yuan', '2012-06-20'),
(41, 'Hellsing', 'https://upload.wikimedia.org/wikipedia/en/0/02/Hellsing_1.png', 'Kouta Hirano', 8.50, 4.3, 'A secret organization battles supernatural threats with the help of a powerful vampire.', 'Alucard', '1997-05-01'),
(42, 'Dandadan', 'https://upload.wikimedia.org/wikipedia/en/f/f2/Dandadan_vol._1_cover.jpg', 'Yukinobu Tatsu', 8.90, 4.5, 'A chaotic mix of ghosts, aliens, and high schoolers in a supernatural battle.', 'Ken Takakura (Okarun)', '2021-04-06'),
(43, 'I Want to Eat Your Pancreas', 'https://upload.wikimedia.org/wikipedia/en/5/5d/Kimi_no_Suiz%C5%8D_o_Tabetai_cover.jpg', 'Yoru Sumino', 9.00, 4.6, 'A quiet boy discovers a classmate\'s secret illness and their bond grows.', 'Sakura Yamauchi', '2015-06-19'),
(44, 'Your Name', 'https://upload.wikimedia.org/wikipedia/en/0/0b/Your_Name_poster.png', 'Makoto Shinkai', 9.40, 4.8, 'Two teenagers mysteriously switch bodies and try to meet across time.', 'Taki Tachibana', '2016-08-26'),
(45, 'Sakamoto Days', 'https://jumpg-assets.tokyo-cdn.com/secure/title/100127/title_thumbnail_portrait_list/313621.jpg?hash=0HpK9-UWS7urxNciRiGxQQ&expires=2145884400', 'Yuto Suzuki', 8.60, 4.4, 'A retired hitman returns to action to protect his family and store.', 'Taro Sakamoto', '2020-11-21'),
(46, 'Gintama', 'https://upload.wikimedia.org/wikipedia/en/a/a9/Gintama_vol._01.png', 'Hideaki Sorachi', 9.20, 4.7, 'In an alternate Edo period, a samurai and his friends take odd jobs to survive.', 'Gintoki Sakata', '2003-12-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manga`
--
ALTER TABLE `manga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
