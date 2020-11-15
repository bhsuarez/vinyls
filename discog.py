import discogs_client

d = discogs_client.Client('ExampleApplication/0.1',
                          user_token="pKyILjZnXBGRToDMAcXdcGDpPtMTgNyzqRSVBBJO")


def searching(query):
    return d.search(query)
