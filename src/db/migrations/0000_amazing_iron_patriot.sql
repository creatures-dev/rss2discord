CREATE TABLE `entries` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`entry_id` text NOT NULL,
	`feed` integer
);
--> statement-breakpoint
CREATE TABLE `feeds` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`feed_url` text NOT NULL,
	`page_url` text NOT NULL,
	`title` text,
	`description` text,
	`link` text,
	`channel` text
);
--> statement-breakpoint
CREATE TABLE `global_metadata` (
	`id` integer PRIMARY KEY NOT NULL,
	`default_channel` text,
	`refresh_interval` integer DEFAULT 30 NOT NULL,
	`bot_metadata` blob
);
