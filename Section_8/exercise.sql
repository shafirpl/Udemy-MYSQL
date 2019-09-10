-- use book_shop database
-- Print all title which contain the word stories
SELECT title FROM books WHERE title LIKE '%stories%';
-- Find the Longest book in terms of page number
SELECT title, pages FROM books ORDER BY 2 DESC LIMIT 1;

SELECT CONCAT(title,' - ',released_year) AS 'summary' FROM books ORDER BY released_year DESC LIMIT 3;

SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;

SELECT title, author_lname FROM books ORDER BY 2,1;

SELECT CONCAT('MY FAVOURITE AUTHOR IS ',UPPER(author_fname),' ',UPPER(author_lname),'!') AS 'yell' FROM books ORDER BY author_lname;