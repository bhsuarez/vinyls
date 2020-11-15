import dbconnection

cursor = dbconnection.connect()

#
# MENU OPTIONS
#
selection = 0
print("Welcome to the Jukebox!\n"
      "1. search discogs\n"
      "2. search personal vinyls by artist\n"
      "3. exit")
selection = input("What ya wanna do?: ")

while selection != 0:
    if selection == "1":
        discog_query = input("Search wut mate?: ")

    elif selection == "2":
        artist = input("Which artist ya lookin for mate? (3 for exit): ")

        if artist == "3":
            break

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
