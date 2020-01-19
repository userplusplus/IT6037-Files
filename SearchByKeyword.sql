CREATE DEFINER=`root`@`localhost` PROCEDURE `Search By Keyword`(IN Keyword VARCHAR(50))
BEGIN
	SELECT *
	FROM Article
	Where Article.Title LIKE CONCAT('%', Keyword, '%');
END