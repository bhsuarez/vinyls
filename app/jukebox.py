import postgresconnector
import discogtool


def main():

    discog_query = "Kanye West"
    discog_results = discogtool.searchbarcode(discog_query)

    print(discog_results.__dict__)

    #   Set up database connection
    cursor = postgresconnector.connect()

    #   Set up artist
    artist = "Kanye West"

    # SQL Query statement
    query = ("SELECT * FROM albums "
             "WHERE artist_name = " +
             "'" +
             artist
             + "'")

    # Executes the query
    cursor.execute(query)

    # Closes the db connection
    cursor.close()


if __name__ == '__main__':
    main()
