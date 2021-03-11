# Importing discogs_client from https://github.com/joalla/discogs_client
from discogs_client import Client
import credsz

d = Client(credsz.discog)

#   General search query
def search(query):
    results = d.search(query, format='vinyl')
    return results


#   Search by barcode
def searchbarcode(query):
    results = d.search(query, type='release', format='vinyl')
    return results


#   Searches by artist ID
def searchartistid(artistid):
    results = d.artist(artistid)
    print(results.name)


#   Searched by release id
def searchreleaseid(releaseid):
    results = d.release(releaseid)
    print(results.title)
    print(results.artists)
    print(results.year)
    print(results.country)
