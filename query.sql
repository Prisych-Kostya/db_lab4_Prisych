/* Запит 1: Кількість книг кожного автора*/
SELECT 
	author_name, 
	count(author_name) AS total_books
FROM 
	Authors
GROUP BY
	author_name;


/* Запит 2: Імена авторів, у яких більше ніж одна книга*/
SELECT 
	author_name, 
	count(author_name) AS total_books
FROM 
	Authors
GROUP BY
	author_name
HAVING
	count(author_name) > 1;


/* Запит 3: Книги, яких продано не менше 100*/
SELECT 
    Books.book_name, Sellings.num_sold
FROM 
    Books
JOIN 
    Sellings ON Books.book_id = Sellings.book_id
WHERE 
    Sellings.num_sold >= 100;

