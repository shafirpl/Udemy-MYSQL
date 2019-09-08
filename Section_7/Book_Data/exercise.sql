SELECT REVERSE(UPPER('Why does my cat look at me with such hatred'));

-- It will print out I-like-cats, because the concat will result in I like cats, then the replace would replace all spaces with -, so it becomes I-like-cats

SELECT REPLACE(title,' ','->') AS 'title' FROM books;

SELECT author_lname AS 'forwards', REVERSE(author_lname) AS 'backwards' FROM books;

SELECT CONCAT(UPPER(author_fname), ' ', UPPER(author_lname)) AS 'full name in caps' FROM books;

SELECT CONCAT(title,' Was Released in ',released_year) AS 'blurb' FROM books;

SELECT title, CHAR_LENGTH(title) AS 'characters count' FROM books;

SELECT CONCAT(SUBSTRING(title,1,10),'...') AS 'short title', CONCAT(author_lname,',',author_fname) AS 'author', CONCAT(stock_quantity, ' in stock') AS quantity FROM books;