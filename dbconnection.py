import mysql.connector

# Sets up the database connection
databoi = mysql.connector.connect(host="localhost",
                                  user="root",
                                  passwd="rocky.123",
                                  database="vinyls",
                                  auth_plugin='mysql_native_password')
cursor = databoi.cursor()


def connect():
    return cursor
