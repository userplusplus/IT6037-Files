CREATE DEFINER=`root`@`localhost` PROCEDURE `Search By Category`(IN cate VARCHAR(50))
BEGIN
	SELECT Article.articleID, Article.Title, Category.Category
	FROM Category
	INNER JOIN Article
	ON Category.CategoryID = Article.Category_CategoryID
	WHERE Category.Category = cate;
END