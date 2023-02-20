-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 06:23 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_apputama`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_18_175442_create_products_table', 1),
(6, '2023_01_18_175506_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `stock` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Qui laborum.', 15000, 54, 'Eius quia doloremque hic voluptates.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(2, 'Possimus non.', 15000, 90, 'Aliquid hic nihil quisquam autem.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(3, 'Dolor suscipit.', 5000, 69, 'Aspernatur neque labore officiis.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(4, 'Beatae voluptas.', 1500, 84, 'Harum accusantium repellendus dolorum voluptatum impedit et.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(5, 'Repudiandae non.', 10000, 89, 'Quasi dolores similique omnis.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(6, 'Doloribus dolorem.', 20000, 98, 'Sed voluptates natus accusantium maiores.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(7, 'Modi est.', 5000, 81, 'Itaque occaecati est consequatur ipsam.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(8, 'Ut autem.', 5000, 83, 'Animi quasi est sunt numquam modi.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(9, 'Reiciendis distinctio omnis.', 1500, 60, 'Est necessitatibus consequatur consequuntur expedita.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(10, 'Officiis soluta aliquid.', 1500, 82, 'Quae deleniti accusamus quam eius earum ratione.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(11, 'Minus qui sit.', 10000, 59, 'Quidem quo animi ut ut delectus et.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(12, 'Aspernatur ullam.', 5000, 92, 'Consequuntur id architecto aliquid voluptas eum.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(13, 'Magnam iusto numquam.', 20000, 75, 'Iusto molestias debitis alias iusto maiores fuga.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(14, 'Libero ut architecto.', 1500, 65, 'Illum iure et accusamus voluptate.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(15, 'Occaecati esse.', 20000, 60, 'Deleniti beatae eveniet blanditiis at.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(16, 'Dolor omnis.', 1500, 87, 'Autem recusandae aut maiores.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(17, 'Deserunt provident.', 15000, 61, 'Inventore optio ad officia quia qui.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(18, 'Ipsum autem neque.', 5000, 92, 'Molestiae eum perspiciatis suscipit ea unde.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(19, 'Veritatis molestiae eum.', 10000, 64, 'Et expedita quis voluptatem.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(20, 'Voluptatem debitis.', 10000, 69, 'Amet qui doloribus repellat.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(21, 'Quas voluptate iste.', 15000, 53, 'Dolor laborum necessitatibus molestias.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(22, 'Aliquid et sed.', 10000, 61, 'Voluptate illum molestiae enim est dolores dolorem.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(23, 'Quis dolore dicta.', 20000, 83, 'Fugit ad ut fuga.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(24, 'Molestiae eligendi.', 1500, 78, 'Sunt sit incidunt ea sint est.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(25, 'Qui repudiandae eos.', 5000, 94, 'Aut aut et ut fugiat.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(26, 'Et libero sit.', 1500, 80, 'Nostrum alias qui iste qui.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(27, 'Commodi eveniet.', 5000, 70, 'Aut tempora quidem saepe aut.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(28, 'Consectetur et suscipit.', 10000, 62, 'Possimus consequatur est eligendi quia modi ut.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(29, 'Neque quod consectetur.', 15000, 94, 'Exercitationem consequatur qui et qui molestias placeat.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(30, 'Et odio minima.', 5000, 77, 'Praesentium eum reprehenderit fugit.', '2023-01-18 22:21:13', '2023-01-18 22:21:13'),
(31, 'Baju Batik', 10000, 100, 'Batik tenun khas Bali', '2023-01-18 22:22:00', '2023-01-18 22:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `payment_amount` bigint(20) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `reference_no`, `price`, `quantity`, `payment_amount`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'INV23011912221513039', 10000, 7, 70000, 31, '2023-01-18 22:22:14', '2023-01-18 22:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '$2y$10$YrXYLYQiFe6VXLTxM2rC0Om6wQUIYnK3hw9FSuef/w3nO6QTp493y', 'bcqHr6AGBA', '2023-01-18 22:21:13', '2023-01-18 22:21:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
