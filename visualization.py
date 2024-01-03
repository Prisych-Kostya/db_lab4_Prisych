import psycopg2
import matplotlib.pyplot as plt

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

    cur.execute(query_1)
    authors = []
    total_books = []

    for row in cur:
        replaced_row_0 = row[0].replace(' ', '\n')
        authors.append(replaced_row_0)
        total_books.append(row[1])

    figure, (bar_ax, pie_ax, bar_ax2) = plt.subplots(1, 3)
    bar = bar_ax.bar(authors, total_books, label='Total')
    bar_ax.bar_label(bar, label_type='center')
    bar_ax.set_xlabel('Автори')
    bar_ax.set_ylabel('Кількість книг')
    bar_ax.set_title('Кількість книг кожного автора')

    
    cur.execute(query_2)
    authors2 = []
    total_books2 = []
    for row in cur:
        replaced_row_0 = row[0].replace(' ', '\n')
        authors2.append(replaced_row_0)
        total_books2.append(row[1])


    bar = bar_ax2.bar(authors2, total_books2, label='Total')
    bar_ax2.bar_label(bar, label_type='center')
    bar_ax2.set_xlabel('Автори, у яких більше 1 книги')
    bar_ax2.set_ylabel('Кількість книг')
    bar_ax2.set_title('Імена авторів, у яких більше 1 книги')


    cur.execute(query_3)
    books = []
    num_sold = []
    for row in cur:
        books.append(row[0])
        num_sold.append(row[1])

    pie_ax.pie(num_sold, labels=books, autopct='%1.2f%%')
    pie_ax.set_title('Книги, яких продано не менше 100')


mng = plt.get_current_fig_manager()
mng.resize(1400, 600)

plt.show()