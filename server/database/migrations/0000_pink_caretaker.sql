CREATE TABLE `books` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`name` text NOT NULL,
	`description` text NOT NULL,
	`year` integer NOT NULL,
	`pages` integer NOT NULL,
	`price` integer NOT NULL,
	`creator` text NOT NULL,
	`created_at` integer DEFAULT '"2025-04-04T16:38:51.472Z"',
	FOREIGN KEY (`creator`) REFERENCES `users`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `users` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`email` text NOT NULL,
	`username` text NOT NULL,
	`password` text NOT NULL,
	`name` text,
	`avatar` text,
	`role` text DEFAULT 'user',
	`created_at` integer DEFAULT '"2025-04-04T16:38:51.471Z"'
);
--> statement-breakpoint
CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);