import psycopg2

#   Sets up the database connection
databoi = psycopg2.connect(dbname="vinyls",
                           user="root",
                           password="root",
                           host="0.0.0.0",
                           port="5432")


def connect():
    return databoi.cursor()
