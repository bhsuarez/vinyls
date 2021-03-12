import psycopg2

#   Sets up the database connection
databoi = psycopg2.connect(dbname="vinyls",
                           user="root",
                           password="root",
                           host="db")


def connect():
    return databoi.cursor()
