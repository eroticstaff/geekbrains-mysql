CREATE DEFINER=`root`@`localhost` TRIGGER `reviews_BEFORE_INSERT` BEFORE INSERT ON `reviews` FOR EACH ROW BEGIN
	IF NEW.stars < 1 AND NEW.stars > 5 THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Можно поставить от 1 до 5 звезд!';
        END IF;
END