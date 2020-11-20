import psycopg2

#   Sets up the database connection
databoi = psycopg2.connect(dbname="vinyls",
                           user="root",
                           password="root",
                           host="localhost")


def connect():
    return databoi.cursor()
