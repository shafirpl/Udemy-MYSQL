-- use book_shop database
-- count total books in which the title contains the string 'the'
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

-- count how many unique authors are there
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;

-- This will go to each of the group rows and count how many rows are there
-- in each super row
-- so this will give us how many books are written by a particular author
-- we have to use both f_name and l_name, otherwise it would say that harris has 2 books, as both 
-- Dan and frida harris have same last name. That is why we need to use both to distinct the -------- authors
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;

SELECT MIN(pages) FROM books;
 
SELECT MAX(pages) 
FROM books;

SELECT title, pages FROM books 
WHERE pages = (SELECT Max(pages) 
                FROM books); 
				
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;
		 
SELECT author_fname,
       author_lname,
       Sum(pages)
FROM books
GROUP BY
    author_lname,
    author_fname;
	
SELECT author_fname, author_lname, AVG(pages) FROM books
GROUP BY author_lname, author_fname;