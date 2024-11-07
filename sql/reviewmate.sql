-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 12:17 PM
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
-- Database: `reviewmate`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `actor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actor_id`, `name`, `bio_text`) VALUES
(1, 'Tim Robbins', 'American actor known for \"The Shawshank Redemption\".'),
(2, 'Morgan Freeman', 'American actor known for his deep voice and roles in \"The Shawshank Redemption\".'),
(3, 'Marlon Brando', 'American actor and film director known for \"The Godfather\".'),
(4, 'Al Pacino', 'American actor known for his role as Michael Corleone in \"The Godfather\".'),
(5, 'Christian Bale', 'British actor known for portraying Batman in \"The Dark Knight\".'),
(6, 'Heath Ledger', 'Australian actor known for his role as the Joker in \"The Dark Knight\".'),
(7, 'John Travolta', 'American actor known for \"Pulp Fiction\".'),
(8, 'Uma Thurman', 'American actress known for her role in \"Pulp Fiction\".'),
(9, 'Tom Hanks', 'American actor known for \"Forrest Gump\".'),
(10, 'Robin Wright', 'American actress known for \"Forrest Gump\".'),
(11, 'Leonardo DiCaprio', 'American actor known for \"Inception\".'),
(12, 'Joseph Gordon-Levitt', 'American actor known for \"Inception\".'),
(13, 'Brad Pitt', 'American actor known for \"Fight Club\".'),
(14, 'Edward Norton', 'American actor known for \"Fight Club\".'),
(15, 'Keanu Reeves', 'Canadian actor known for \"The Matrix\".'),
(16, 'Laurence Fishburne', 'American actor known for \"The Matrix\".'),
(17, 'Elijah Wood', 'American actor known for \"The Lord of the Rings\".'),
(18, 'Viggo Mortensen', 'American actor known for \"The Lord of the Rings\".'),
(19, 'Matthew McConaughey', 'American actor known for \"Interstellar\".'),
(20, 'Anne Hathaway', 'American actress known for \"Interstellar\".');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `director_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`director_id`, `name`, `bio_text`) VALUES
(1, 'Frank Darabont', 'American director known for \"The Shawshank Redemption\".'),
(2, 'Francis Ford Coppola', 'American director known for \"The Godfather\".'),
(3, 'Christopher Nolan', 'British-American director known for \"Inception\" and \"The Dark Knight\".'),
(4, 'Quentin Tarantino', 'American director known for \"Pulp Fiction\".'),
(5, 'Robert Zemeckis', 'American director known for \"Forrest Gump\".'),
(6, 'David Fincher', 'American director known for \"Fight Club\".'),
(7, 'Lana Wachowski', 'American director known for \"The Matrix\".'),
(8, 'Lilly Wachowski', 'American director known for \"The Matrix\".'),
(9, 'Peter Jackson', 'New Zealand director known for \"The Lord of the Rings\".');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `release_date` date DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `imdb_rating` float DEFAULT NULL,
  `user_rating` float DEFAULT NULL,
  `description` text DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `cast` text DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `poster_url` varchar(255) DEFAULT NULL,
  `trailer_url` varchar(255) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `age_rating` varchar(10) DEFAULT NULL,
  `budget` bigint(20) DEFAULT NULL,
  `box_office` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `title`, `release_date`, `genre`, `runtime`, `imdb_rating`, `user_rating`, `description`, `director`, `cast`, `language`, `country`, `poster_url`, `trailer_url`, `updated_date`, `age_rating`, `budget`, `box_office`) VALUES
(1, 'The Shawshank Redemption', '1994-09-23', 'Drama', 142, 9.3, 9.5, 'Two imprisoned men bond over a number of years.', 'Frank Darabont', 'Tim Robbins, Morgan Freeman', 'English', 'USA', NULL, NULL, '2024-11-07 06:12:13', 'R', 25000000, 28341469),
(2, 'The Godfather', '1972-03-24', 'Crime, Drama', 175, 9.2, 9.4, 'An organized crime dynasty\'s aging patriarch transfers control of his clandestine empire to his reluctant son.', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino', 'English', 'USA', NULL, NULL, '2024-11-07 06:12:13', 'R', 6000000, 134966411),
(3, 'The Dark Knight', '2008-07-18', 'Action, Crime, Drama', 152, 9, 9.1, 'Batman battles the Joker in Gotham City.', 'Christopher Nolan', 'Christian Bale, Heath Ledger', 'English', 'USA', NULL, NULL, '2024-11-07 06:12:13', 'PG-13', 185000000, 1004558444),
(4, 'Pulp Fiction', '1994-10-14', 'Crime, Drama', 154, 8.9, 9, 'The lives of two mob hitmen, a boxer, and others intertwine.', 'Quentin Tarantino', 'John Travolta, Uma Thurman', 'English', 'USA', NULL, NULL, '2024-11-07 06:12:13', 'R', 8000000, 213928762),
(5, 'Forrest Gump', '1994-07-06', 'Drama, Romance', 142, 8.8, 9, 'The story of Forrest Gump, a man with a low IQ who achieves great things.', 'Robert Zemeckis', 'Tom Hanks, Robin Wright', 'English', 'USA', NULL, NULL, '2024-11-07 06:12:13', 'PG-13', 55000000, 678226133),
(6, 'Inception', '2010-07-16', 'Action, Adventure, Sci-Fi', 148, 8.8, 9.1, 'A thief steals corporate secrets through dream-sharing technology.', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt', 'English', 'USA', NULL, NULL, '2024-11-07 06:12:13', 'PG-13', 160000000, 829895144),
(7, 'Fight Club', '1999-10-15', 'Drama', 139, 8.8, 8.9, 'An insomniac office worker and a soap maker form an underground fight club.', 'David Fincher', 'Brad Pitt, Edward Norton', 'English', 'USA', NULL, NULL, '2024-11-07 06:12:13', 'R', 63000000, 101209702),
(8, 'The Matrix', '1999-03-31', 'Action, Sci-Fi', 136, 8.7, 8.8, 'A hacker discovers the reality he knows is a simulation.', 'Lana Wachowski, Lilly Wachowski', 'Keanu Reeves, Laurence Fishburne', 'English', 'USA', NULL, NULL, '2024-11-07 06:12:13', 'R', 63000000, 466364845),
(9, 'The Lord of the Rings: The Return of the King', '2003-12-17', 'Action, Adventure, Drama', 201, 8.9, 9, 'Gandalf and Aragorn lead the World of Men against Sauron\'s army.', 'Peter Jackson', 'Elijah Wood, Viggo Mortensen', 'English', 'New Zealand, USA', NULL, NULL, '2024-11-07 06:12:13', 'PG-13', 94000000, 1119929521),
(10, 'Interstellar', '2014-11-07', 'Adventure, Drama, Sci-Fi', 169, 8.6, 8.7, 'Explorers travel through a wormhole in space.', 'Christopher Nolan', 'Matthew McConaughey, Anne Hathaway', 'English', 'USA', NULL, NULL, '2024-11-07 06:12:13', 'PG-13', 165000000, 701729206);

-- --------------------------------------------------------

--
-- Table structure for table `movies_watched`
--

CREATE TABLE `movies_watched` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `watch_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies_watched`
--

INSERT INTO `movies_watched` (`id`, `user_id`, `movie_id`, `watch_date`) VALUES
(1, 1, 1, '2023-01-10'),
(2, 1, 3, '2023-01-15'),
(3, 1, 5, '2023-01-20'),
(4, 2, 2, '2023-02-05'),
(5, 2, 4, '2023-02-10'),
(6, 3, 6, '2023-03-15'),
(7, 3, 7, '2023-03-20'),
(8, 4, 8, '2023-04-01'),
(9, 4, 9, '2023-04-05'),
(10, 4, 10, '2023-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `movie_actors`
--

CREATE TABLE `movie_actors` (
  `movie_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_actors`
--

INSERT INTO `movie_actors` (`movie_id`, `actor_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(10, 19),
(10, 20);

-- --------------------------------------------------------

--
-- Table structure for table `movie_directors`
--

CREATE TABLE `movie_directors` (
  `movie_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_directors`
--

INSERT INTO `movie_directors` (`movie_id`, `director_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 3),
(7, 6),
(8, 7),
(8, 8),
(9, 9),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `review_text` text DEFAULT NULL,
  `review_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `movie_id`, `rating`, `review_text`, `review_date`) VALUES
(1, 1, 1, 9.5, 'An inspiring tale of hope and friendship.', '2024-11-07 07:58:48'),
(2, 1, 3, 9, 'A brilliant portrayal of heroism and chaos.', '2024-11-07 07:58:48'),
(3, 2, 2, 9.2, 'A masterpiece of cinematic art.', '2024-11-07 07:58:48'),
(4, 2, 4, 8.8, 'Quentin Tarantino\'s storytelling at its finest.', '2024-11-07 07:58:48'),
(5, 3, 6, 9.1, 'A mind-bending journey through dreams.', '2024-11-07 07:58:48'),
(6, 3, 7, 8.9, 'A dark and thought-provoking film about identity.', '2024-11-07 07:58:48'),
(7, 4, 8, 8.8, 'A revolutionary sci-fi classic.', '2024-11-07 07:58:48'),
(8, 4, 9, 9, 'An epic conclusion to an incredible trilogy.', '2024-11-07 07:58:48'),
(9, 4, 10, 8.7, 'A visually stunning and emotional space odyssey.', '2024-11-07 07:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `joined_on` date DEFAULT curdate(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`user_id`, `login_id`, `fname`, `lname`, `country`, `address`, `bio`, `joined_on`, `created_at`) VALUES
(1, 1, 'John', 'Doe', 'USA', '123 Main St, Anytown, USA', 'Movie enthusiast and blogger.', '2024-11-07', '2024-11-07 07:57:49'),
(2, 2, 'Jane', 'Smith', 'Canada', '456 Maple Ave, Toronto, Canada', 'Film critic and writer.', '2024-11-07', '2024-11-07 07:57:49'),
(3, 3, 'Bob', 'Brown', 'UK', '789 Oak Rd, London, UK', 'Aspiring filmmaker.', '2024-11-07', '2024-11-07 07:57:49'),
(4, 4, 'Alice', 'White', 'Australia', '321 Pine St, Sydney, Australia', 'Cinema lover and reviewer.', '2024-11-07', '2024-11-07 07:57:49'),
(5, 5, 'test', 'tes2', 'USA', '9 test street, test NSW 2154', 'lorem ipsum', '2024-11-07', '2024-11-07 08:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `username`, `password_hash`, `email`, `created_at`) VALUES
(1, 'johndoe', '$2y$10$n9OKYjGbA1/MxMnD.dOoEu1WlUaNL01dPEqEYmboe.j8IjUP4dB5a', 'johndoe@example.com', '2024-11-07 07:45:39'),
(2, 'janesmith', '$2y$10$XRqR6CaYHXUqQi1Kh5Ysn.avA.XVFx0YPtzfoYQUc4KVZduDMDORq', 'janesmith@example.com', '2024-11-07 07:45:39'),
(3, 'bobbrown', '$2y$10$O0/FAPX4E8JKOJag.ByFCe8P55dkjokTQYfKzvhwMDSadQq7kB9oC', 'bobbrown@example.com', '2024-11-07 07:45:39'),
(4, 'alicewhite', '$2y$10$8xd/ERfbhIPJ9yBc7aUXwetmTeQc.EwkdxZ9.0vw6Zs7pV176aza2', 'alicewhite@example.com', '2024-11-07 07:45:39'),
(5, 'test', '$2y$10$ydZqHgugfwbX2NM5yupN8.kb4MfCEShBjiGusOyJA6/L.3UNiWjkG', 'test@mail', '2024-11-07 08:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `added_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`id`, `user_id`, `movie_id`, `added_date`) VALUES
(1, 1, 2, '2023-01-05'),
(2, 1, 4, '2023-01-12'),
(3, 2, 3, '2023-02-01'),
(4, 2, 5, '2023-02-08'),
(5, 3, 1, '2023-03-10'),
(6, 4, 6, '2023-04-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actor_id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`director_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movies_watched`
--
ALTER TABLE `movies_watched`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movie_actors`
--
ALTER TABLE `movie_actors`
  ADD PRIMARY KEY (`movie_id`,`actor_id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Indexes for table `movie_directors`
--
ALTER TABLE `movie_directors`
  ADD PRIMARY KEY (`movie_id`,`director_id`),
  ADD KEY `director_id` (`director_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `login_id` (`login_id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `director_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movies_watched`
--
ALTER TABLE `movies_watched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies_watched`
--
ALTER TABLE `movies_watched`
  ADD CONSTRAINT `movies_watched_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movies_watched_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_actors`
--
ALTER TABLE `movie_actors`
  ADD CONSTRAINT `movie_actors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_directors`
--
ALTER TABLE `movie_directors`
  ADD CONSTRAINT `movie_directors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_directors_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `directors` (`director_id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD CONSTRAINT `userinfo_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `userlogin` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD CONSTRAINT `watchlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `watchlist_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
