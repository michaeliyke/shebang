DROP TABLE IF EXISTS `bookmarks`;
CREATE TABLE `bookmarks` (
	`id` varchar(60) NOT NULL,
	`title` varchar(255) DEFAULT NULL,
	`url` varchar(1024) NOT NULL,
	`description` varchar(1024) DEFAULT NULL,
	`created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;