PRAGMA foreign_keys=OFF;--> statement-breakpoint
CREATE TABLE `__new_books` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`name` text NOT NULL,
	`description` text NOT NULL,
	`year` integer NOT NULL,
	`pages` integer NOT NULL,
	`price` integer NOT NULL,
	`creator` text NOT NULL,
	`created_at` integer DEFAULT '"2025-04-04T16:40:23.475Z"',
	FOREIGN KEY (`creator`) REFERENCES `users`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
INSERT INTO `__new_books`("id", "name", "description", "year", "pages", "price", "creator", "created_at") SELECT "id", "name", "description", "year", "pages", "price", "creator", "created_at" FROM `books`;--> statement-breakpoint
DROP TABLE `books`;--> statement-breakpoint
ALTER TABLE `__new_books` RENAME TO `books`;--> statement-breakpoint
PRAGMA foreign_keys=ON;--> statement-breakpoint
CREATE TABLE `__new_users` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`email` text NOT NULL,
	`username` text NOT NULL,
	`password` text NOT NULL,
	`name` text,
	`avatar` text,
	`role` text DEFAULT 'user',
	`created_at` integer DEFAULT '"2025-04-04T16:40:23.474Z"'
);
--> statement-breakpoint
INSERT INTO `__new_users`("id", "email", "username", "password", "name", "avatar", "role", "created_at") SELECT "id", "email", "username", "password", "name", "avatar", "role", "created_at" FROM `users`;--> statement-breakpoint
DROP TABLE `users`;--> statement-breakpoint
ALTER TABLE `__new_users` RENAME TO `users`;--> statement-breakpoint
CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);