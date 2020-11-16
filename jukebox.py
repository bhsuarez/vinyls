import dbconnection
import discogtool

#   Set up database connection
cursor = dbconnection.connect()

#
# MAIN MENU OPTIONS
#
selection = 0
while selection != 3:
    print("Welcome to the Jukebox!\n"
          "1. Search Discogs vinyls\n"
          "2. Search personal vinyls by artist\n"
          "3. Exit")
    selection = input("What ya wanna do?: ")

    #   Discogs search
    if selection == "1":
        discog_query = input("Which vinyl ya lookin' for mate?: ")
        results = discogtool.searchbarcode(discog_query)
        for x in results:
            print("============")
            print(x)
            print("============")

    #   Search vinyl collection
    elif selection == "2":
        artist = input("Which artist ya lookin for mate? (3 for exit): ")

        if artist == "3":
            break

        # SQL Query statement
        query = ("SELECT * FROM albums "
                 "WHERE artist_name = " + '"' + artist + '"' + ";")

        # Executes the query
        cursor.execute(query)

        # Prints the albums that matches the artist
        for x in cursor:
            print("\n============")
            print(x)
            print("============\n")
    elif selection == "3":
        break

# Closes the db connection
cursor.close()
