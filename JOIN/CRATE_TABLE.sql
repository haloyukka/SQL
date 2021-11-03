CREATE TABLE IF NOT EXISTS `TableA` (
  `id` int(6) unsigned NOT NULL,
  `rev` int(3) unsigned NOT NULL,
  `content` varchar(200) NOT NULL,
  PRIMARY KEY (`id`,`rev`)
) DEFAULT CHARSET=utf8;
INSERT INTO `TableA` (`id`, `rev`, `content`) VALUES
  ('0', '1', 'TableA 0-1'),
  ('1', '1', 'TableA 1-1'),
  ('3', '2', 'TableA 3-2'),
  ('5', '3', 'TableA 5-3');

CREATE TABLE IF NOT EXISTS `TableB` (
  `id` int(6) unsigned NOT NULL,
  `rev` int(3) unsigned NOT NULL,
  `content` varchar(200) NOT NULL,
  PRIMARY KEY (`id`,`rev`)
) DEFAULT CHARSET=utf8;
INSERT INTO `TableB` (`id`, `rev`, `content`) VALUES
  ('0', '1', 'TableB 0-1'),
  ('2', '1', 'TableB 2-1'),
  ('4', '2', 'TableB 4-2'),
  ('6', '3', 'TableB 6-3');