import psycopg2

#   Sets up the database connection
databoi = psycopg2.connect(dbname="postgres",
                           user="bhsuarez",
                           password="",
                           host="localhost")


def connect():
    return databoi.cursor()
