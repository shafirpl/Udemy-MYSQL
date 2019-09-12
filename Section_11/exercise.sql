-- use book_shop database
SELECT * FROM books WHERE released_year < 1980;

SELECT title, author_lname FROM books
WHERE author_lname IN ('Eggers', 'Chabon');

SELECT title, author_lname FROM books 
WHERE author_lname = 'Eggers' || author_lname = 'Chabon';

SELECT title, author_lname FROM books 
WHERE author_lname = 'Lahiri' && released_year > 2000;

SELECT title, author_lname FROM books WHERE pages BETWEEN 100 AND 200;

SELECT title, author_lname FROM books WHERE pages >= 100 AND pages<= 200;

SELECT title, author_lname FROM books WHERE author_lname LIKE "c%" || author_lname LIKE "s%";

/* We could also do
SELECT 
    title, 
    author_lname 
FROM books 
WHERE 
    SUBSTR(author_lname,1,1) = 'C' OR 
    SUBSTR(author_lname,1,1) = 'S';
 
SELECT title, author_lname FROM books 
WHERE SUBSTR(author_lname,1,1) IN ('C', 'S');
*/

SELECT title, author_lname,
    CASE 
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' 
		OR title LIKE 'A Heartbreaking Work%' THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM books;

 SELECT title, author_lname, CASE
 	WHEN COUNT(*) >1 THEN CONCAT(COUNT(*), ' books')
	ELSE CONCAT('1',' book')
 	END AS 'COUNT' FROM books GROUP BY author_lname, author_fname;
	
/*
	SELECT author_fname, author_lname,
    CASE 
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books 
GROUP BY author_lname, author_fname;
*/

# SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
