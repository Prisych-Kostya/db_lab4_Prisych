INSERT INTO
    Books (book_id, book_name, genre, author, lang, publication_date)
VALUES
    ('B1', 'A Tale of Two Cities', 'Historical fiction', 'Charles Dickens', 'English', 1859),
	('B2', 'The Little Prince (Le Petit Prince)', 'Novella', 'Antoine de Saint-Exupéry', 'French', 1943),
	('B3', 'Harry Potter and the Philosophers Stone', 'Fantasy', 'J. K. Rowling', 'English', 1997),
	('B4', 'And Then There Were None', 'Mystery', 'Agatha Christie', 'English', 1939),
	('B5', 'The Hobbit', 'Fantasy',  'J. R. R. Tolkien', 'English', 1937),
	('B6', 'The Da Vinci Code', 'Mystery thriller', 'Dan Brown', 'English', 2003),
	('B7', 'Harry Potter and the Chamber of Secrets', 'Fantasy', 'J. K. Rowling', 'English', 1998),
	('B8', 'Harry Potter and the Deathly Hallows', 'Fantasy', 'J. K. Rowling', 'English', 2007),
	('B9', 'The Alchemist (O Alquimista)', 'Fantasy', 'Paulo Coelho', 'Portuguese', 1988),
	('B10', 'Heidi', 'Childrens fiction', 'Johanna Spyri', 'German', 1880);
	
INSERT INTO
	Sellings (book_id, num_sold)
VALUES
    ('B1', 200),
	('B2', 200),
	('B3', 120),
	('B4', 100),
	('B5', 100),
	('B6', 80),
	('B7', 77),
	('B8', 65),
	('B9', 65),
	('B10', 50);
	
INSERT INTO
	Authors (author_id, author_name, book_id)
VALUES
    ('A1', 'Charles Dickens', 'B1'),
	('A2', 'Antoine de Saint-Exupéry', 'B2'),
	('A3', 'J. K. Rowling', 'B3'),
	('A4', 'Agatha Christie', 'B4'),
	('A5', 'J. R. R. Tolkien', 'B5'),
	('A6', 'Dan Brown', 'B6'),
	('A7', 'J. K. Rowling', 'B7'),
	('A8', 'J. K. Rowling', 'B8'),
	('A9', 'Paulo Coelho', 'B9'),
	('A10', 'Johanna Spyri', 'B10');