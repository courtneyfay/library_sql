-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books JOIN authors ON (books.author_id = authors.id) WHERE authors.name LIKE 'George%';

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books JOIN authors ON (books.author_id = authors.id) WHERE authors.name like 'Milan%';

-- Find all books written by an author from China or the UK.
SELECT * FROM books JOIN authors ON (books.author_id = authors.id) WHERE authors.nationality = 'China' OR authors.nationality LIKE 'United States%';

-- Find out how many books Albert Camus wrote.
SELECT COUNT (*) FROM books JOIN authors ON (books.author_id = authors.id) WHERE authors.name LIKE '%Camus%';

-- Find out how many books written before 1980 were by authors not from the US.
SELECT COUNT(*) FROM books JOIN authors ON (books.author_id = authors.id) WHERE books.publication_date < 1980 AND authors.nationality NOT IN ('United States of America');

-- For these last two, you should not need a JOIN.---------------------------------------
-- Find all authors whose names start with 'J'.
 SELECT * FROM authors WHERE name LIKE 'J%';

-- Find all books whose titles contain 'the'.
SELECT * FROM books WHERE title LIKE '%the%' OR title LIKE 'The%';