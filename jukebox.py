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

# SQL Query statement
query = ("SELECT * FROM albums "
         "WHERE artist_name = "+'"'+artist+'"'+";")

# Executes the query
cursor.execute(query)

# Prints the albums that matches the artist
for x in cursor:
    print(x)

# Closes the db connection
cursor.close()
databoi.close()
