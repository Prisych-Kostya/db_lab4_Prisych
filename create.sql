CREATE TABLE Books
(
  book_id VARCHAR(20) NOT NULL,
  book_name VARCHAR(100) NOT NULL,
  genre VARCHAR(50),
  author VARCHAR(50),
  lang VARCHAR(20) NOT NULL,
  publication_date INT NOT NULL,
  PRIMARY KEY (book_id)
);

CREATE TABLE Sellings
(
  book_id VARCHAR(20) NOT NULL,
  num_sold INT NOT NULL,
  PRIMARY KEY (book_id),
  FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

CREATE TABLE Authors
(
  author_id VARCHAR(20) NOT NULL,
  author_name VARCHAR(50) NOT NULL,
  book_id VARCHAR(20) NOT NULL,
  PRIMARY KEY (author_id),
  FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

