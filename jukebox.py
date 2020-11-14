import mysql.connector

# Sets up the database connection
databoi = mysql.connector.connect(host="localhost",
                                  user="root",
                                  passwd="rocky.123",
                                  database="vinyls",
                                  auth_plugin='mysql_native_password')
cursor = databoi.cursor()

# Prints the db connection
print("Databoi CONNECTED " + "'" + str(databoi) + "'")

# Define album
artist = "Kanye West"

# Query
query = ("SELECT * FROM albums "
         "WHERE artist_name = "+'"'+artist+'"'+";")

cursor.execute(query)

print(query)

# Closes the db connection
cursor.close()
databoi.close()
