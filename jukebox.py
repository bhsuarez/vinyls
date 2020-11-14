import dbconnection

# Establishes database connection
cursor = dbconnection.connect()

# Prints the db connection
print("Databoi CONNECTED " + "'" + str(cursor) + "'")

#
# MENU OPTIONS
#
artist = input("Enter artist name: ")

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
