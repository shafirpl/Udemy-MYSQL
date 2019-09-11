-- use section10db for it
-- CANADAINAN PROVICE NAMES are good candidates for Chars
/*
 price is less than 7 digits, so we could go with 6 digits for 
 numeric, and 2 digist for decimal points
  CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);

What's the difference between DATETIME and TIMESTAMP?
------
They both store datetime information, but there's a difference in the range, 
TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
TIMESTAMP is used for things like meta-data about when something is created
or updated.
*/

SELECT
  CURTIME();
  
SELECT
  CURDATE();
  
SELECT
  DAYOFWEEK(NOW());
  
SELECT
  DAYNAME(NOW());
  
SELECT
  DATE_FORMAT(NOW(), "%m/%d/%Y") AS 'Today Date';
  
SELECT
  CONCAT(DATE_FORMAT(NOW(), "%M"), ' ', DATE_FORMAT(NOW(), "%D"), ' at ', DATE_FORMAT(NOW(), "%h:%i")) AS 'Formatted Date';

CREATE TABLE tweets (
  content varchar(100),
  username varchar(20),
  created_at timestamp DEFAULT NOW()
);

INSERT INTO tweets (content, username)
  VALUES ('this is my first tweet', 'coltscat');
  
SELECT
  *
FROM tweets;

INSERT INTO tweets (content, username)
  VALUES ('this is my second tweet', 'coltscat');
  
SELECT
  *
FROM tweets;