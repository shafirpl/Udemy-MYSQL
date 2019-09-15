DROP DATABASE IF EXISTS section_12_exercise;

CREATE DATABASE IF NOT EXISTS section_12_exercise;

USE section_12_exercise;

CREATE TABLE IF NOT EXISTS students
  (
     id         INT auto_increment PRIMARY KEY,
     first_name VARCHAR(100)
  );

CREATE TABLE IF NOT EXISTS papers
  (
     title      VARCHAR(100),
     grade      INT,
     student_id INT,
     FOREIGN KEY(student_id) REFERENCES students(id) ON DELETE CASCADE
  );

INSERT INTO students
            (first_name)
VALUES      ('Caleb'),
            ('Samantha'),
            ('Raj'),
            ('Carlos'),
            ('Lisa');

INSERT INTO papers
            (student_id,
             title,
             grade)
VALUES      (1,
             'My First Book Report',
             60),
            (1,
             'My Second Book Report',
             75),
            (2,
             'Russian Lit Through The Ages',
             94),
            (2,
             'De Montaigne and The Art of The Essay',
             98),
            (4,
             'Borges and Magical Realism',
             89);

SELECT first_name,
       title,
       grade
FROM   students
       JOIN papers
         ON students.id = papers.student_id
ORDER  BY grade DESC;

SELECT first_name,
       title,
       grade
FROM   students
       LEFT JOIN papers
              ON students.id = papers.student_id;

SELECT first_name,
       Ifnull(title, 'MISSING'),
       Ifnull(grade, 0)
FROM   students
       LEFT JOIN papers
              ON students.id = papers.student_id;

SELECT first_name,
       Ifnull(Avg(grade), '0') AS 'average'
FROM   students
       LEFT JOIN papers
              ON students.id = papers.student_id
GROUP  BY students.id
ORDER  BY average DESC;

SELECT first_name,
       Ifnull(Avg(grade), '0') AS 'average',
       CASE
         WHEN Avg(grade) >= 75 THEN 'PASSING'
         ELSE 'FAILING'
       end                     AS passing_status
FROM   students
       LEFT JOIN papers
              ON students.id = papers.student_id
GROUP  BY students.id
ORDER  BY average DESC; 