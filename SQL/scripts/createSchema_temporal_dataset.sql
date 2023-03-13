CREATE TABLE `courses` (
  `id` varchar(255) PRIMARY KEY AUTO_INCREMENT,
  `maker` varchar(255),
  `difficulty` varchar(255),
  `gameStle` varchar(255),
  `title` varchar(255),
  `thumbnail` varchar(255),
  `image` varchar(255),
  `creation` datetime default current_timestamp
);

CREATE TABLE `players` (
  `player` varchar(255) PRIMARY KEY AUTO_INCREMENT,
  `image` varchar(255),
  `flag` varchar(255),
  `name` varchar(255)
);

CREATE TABLE `course_meta` (
  `id` varchar(255),
  `firstClear` varchar(255),
  `catch` datetime default current_timestamp,
  `tag` varchar(255),
  `stars` int,
  `players` int,
  `tweets` int,
  `clears` int,
  `attempts` int,
  `clearRate` float
);

CREATE TABLE `plays` (
  `id` varchar(255),
  `player` varchar(255),
  `catch` datetime default current_timestamp
);

CREATE TABLE `clears` (
  `id` varchar(255),
  `player` varchar(255),
  `catch` datetime default current_timestamp
);

CREATE TABLE `likes` (
  `id` varchar(255),
  `player` varchar(255),
  `catch` datetime default current_timestamp
);

CREATE TABLE `records` (
  `id` varchar(255),
  `player` varchar(255),
  `catch` datetime default current_timestamp,
  `timeRecord` float
);

ALTER TABLE `courses` ADD FOREIGN KEY (`id`) REFERENCES `course_meta` (`id`);

ALTER TABLE `players` ADD FOREIGN KEY (`player`) REFERENCES `courses` (`id`);

ALTER TABLE `players` ADD FOREIGN KEY (`player`) REFERENCES `course_meta` (`id`);

ALTER TABLE `plays` ADD FOREIGN KEY (`id`) REFERENCES `courses` (`id`);

ALTER TABLE `players` ADD FOREIGN KEY (`image`) REFERENCES `plays` (`id`);

ALTER TABLE `clears` ADD FOREIGN KEY (`id`) REFERENCES `courses` (`id`);

ALTER TABLE `players` ADD FOREIGN KEY (`image`) REFERENCES `clears` (`id`);

ALTER TABLE `likes` ADD FOREIGN KEY (`player`) REFERENCES `courses` (`title`);

ALTER TABLE `players` ADD FOREIGN KEY (`image`) REFERENCES `likes` (`id`);

ALTER TABLE `records` ADD FOREIGN KEY (`player`) REFERENCES `courses` (`title`);

ALTER TABLE `players` ADD FOREIGN KEY (`image`) REFERENCES `records` (`id`);

ALTER TABLE `plays` ADD FOREIGN KEY (`player`) REFERENCES `records` (`player`);

ALTER TABLE `clears` ADD FOREIGN KEY (`player`) REFERENCES `records` (`player`);

ALTER TABLE `likes` ADD FOREIGN KEY (`id`) REFERENCES `records` (`catch`);
