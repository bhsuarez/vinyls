from postgresconnector import connect
from flask import Flask, render_template


def printseparator(y):
    for x in y:
        print("============")
        print(x)
        print("============")

# app = Flask(__name__)
#
#
# @app.route('/')
# def index():
#     return render_template('index.html')


if __name__ == '__main__':
    artist = input('Which artist ya lookin for mate? (3 for exit): ')

    #   Set up database connection
    cursor = connect()

    # SQL Query statement
    query = ("SELECT * FROM albums "
             "WHERE artist_name = " +
             "'" +
             artist
             + "'")

    # Executes the query
    cursor.execute(query)

    # Prints the albums that matches the artist
    printseparator(cursor)
    # app.run(host='0.0.0.0')
