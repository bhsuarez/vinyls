import dbconnection
import discog

cursor = dbconnection.connect()

#
# MENU OPTIONS
#
print("Welcome to the Jukebox!\n"
      "1. search discogs\n"
      "2. search personal vinyls by artist\n")
selection = input("What ya wanna do?: ")

if selection == "1":
    discog_query = input("Search wut mate?: ")
    discog.searching(discog_query)

elif selection == "2":
    artist = input("Which artist ya lookin for mate?: ")

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
