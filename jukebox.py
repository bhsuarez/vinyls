import dbconnection
import discogtool

#   Set up database connection
# TODO: Only open a connection to the database when you need it. Currently you're opening a connection and then waiting for user input which could really
#       mean that 10 users opening running this command and walking away for hours would eat up valuable connections to your database
# TODO: Look into database connection pools: https://docs.oracle.com/cd/B28359_01/java.111/e10788/intro.htm#BABHFGCA
cursor = dbconnection.connect()

#
# MAIN MENU OPTIONS
#
selection = 0
while selection != 3:
    # TODO: Look into triple quotes
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
            # TODO: Lookinto using F strings with triple quotes
            print("============")
            print(x)
            print("============")

    #   Search vinyl collection
    elif selection == "2":
        artist = input("Which artist ya lookin for mate? (3 for exit): ")

        if artist == "3":
            break

        # SQL Query statement
        # TODO: you're opening yourself up for SQL Injection attack here. you need to clean the inputs before executing them.
        query = ("SELECT * FROM albums "
                 "WHERE artist_name = " + '"' + artist + '"' + ";")

        # Executes the query
        cursor.execute(query)

        # Prints the albums that matches the artist
        # TODO: This looks like you've repeated this code. You can pull it out into a function to to be more DRY
        for x in cursor:
            print("\n============")
            print(x)
            print("============\n")
    elif selection == "3":
        break

# Closes the db connection
cursor.close()
