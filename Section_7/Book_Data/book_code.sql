-- Use book_shop database 
SELECT Concat (Substring(title, 1, 10), '...') AS 'Short Title' 
FROM   books; 

SELECT Substring(Replace(title, 'e', '3'), 1, 10) AS 'weird string' 
FROM   books; 

SELECT Concat(author_fname, Reverse(author_fname)) AS 'Reverse String' 
FROM   books; 

SELECT author_lname, 
       Char_length(author_lname) AS 'length' 
FROM   books; 

SELECT Concat(author_lname, ' is ', Char_length(author_lname), 
       ' characters long') AS 
       'Total Length of Author Last Name' 
FROM   books; 

SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
 
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;