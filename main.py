import psycopg2

username = 'postgres'
password = '1337'
database = 'db_lab3_Prisych'


query_1 = '''
SELECT 
	author_name, 
	count(author_name) AS total_books
FROM 
	Authors
GROUP BY
	author_name;
'''

query_2 = '''
SELECT 
	author_name, 
	count(author_name) AS total_books
FROM 
	Authors
GROUP BY
	author_name
HAVING
	count(author_name) > 1;
'''

query_3 = """
SELECT 
    Books.book_name, Sellings.num_sold
FROM 
    Books
JOIN 
    Sellings ON Books.book_id = Sellings.book_id
WHERE 
    Sellings.num_sold >= 100;
"""

conn = psycopg2.connect(user=username, password=password, dbname=database)
print(type(conn))

with conn:
                       
    cur = conn.cursor()

    print('\nЗапит 1: Кількість книг кожного автора')
    cur.execute(query_1)

    for row in cur:
        print(row)

    print('\nЗапит 2: Імена авторів, у яких більше ніж одна книга')
    cur.execute(query_2)

    for row in cur:
        print(row)

    print('\nЗапит 3: Книги, яких продано не менше 100')
    cur.execute(query_3)

    for row in cur:
        print(row)