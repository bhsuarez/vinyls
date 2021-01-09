import psycopg2

#   Sets up the database connection
databoi = psycopg2.connect(dbname="vinyls",
                           user="root",
                           password="root",
                           host="0.0.0.0")


def connect():
    return databoi.cursor()
