import mysql.connector

db_connection = mysql.connector.connect(host="localhost",
                                        user="root",
                                        passwd="rocky.123",
                                        auth_plugin='mysql_native_password')
print(db_connection)
