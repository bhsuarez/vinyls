import dbconnection

# Establishes database connection
cursor = dbconnection.connect()

#
# MENU OPTIONS
#
print("Welcome to the Jukebox!")
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
