SELECT Count(*) 
FROM   books; 

SELECT released_year, 
       Count(title) 
FROM   books 
GROUP  BY released_year; 

SELECT Sum(stock_quantity) AS 'Total Books In Stock' 
FROM   books; 

SELECT Concat(author_fname, ' ', author_lname) AS 'Author', 
       Avg(released_year)                      AS 'Avg Released year' 
FROM   books 
GROUP  BY author_lname, 
          author_fname; 

SELECT Concat(author_fname, ' ', author_lname) AS author, 
       pages                                   AS 'longest book' 
FROM   books 
ORDER  BY pages DESC 
LIMIT  1; 

SELECT released_year, 
       Count(title) AS '# books', 
       Avg(pages)   AS 'avg pages' 
FROM   books 
GROUP  BY released_year; 