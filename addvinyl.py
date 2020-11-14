import dbconnection

cursor = dbconnection.connect()

#
#   Adds a vinyl to the database
#

# def addvinyl(vinyldata):
#    return query

cursor.close()
