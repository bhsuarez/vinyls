import os
from sqlalchemy.dialects import postgresql
import discogtool
import time
from sqlalchemy.orm import sessionmaker
from sqlalchemy import Column, Integer, create_engine, MetaData, select, Table, String, Sequence, update, insert
from sqlalchemy.ext.declarative import declarative_base

#   Creating a base
Base = declarative_base()


#   Create an sqlalchemy engine object
def vinyls_start_engine():
    engine_string = "postgres://" + str(os.getenv('postgres_user')) + ":" + \
                    str(os.getenv('postgres_password')) + "@" + \
                    str(os.getenv('postgres_host')) + ":" + \
                    str(os.getenv('postgres_port')) + "/" + \
                    str(os.getenv('postgres_db'))
    engine = create_engine(str(engine_string))
    return engine


#   Creating an sqlalchemy session object
def start_session(engine):
    session = sessionmaker()
    session.configure(bind=engine)
    Base.metadata.create_all(engine)  # what is this
    return session()


#   The model for upserting Album data
class VinylsAlbumModel(Base):
    __tablename__ = 'albums'
    album_id = Column(Integer, Sequence('album_id'), primary_key=True)
    title = Column(String)
    artist_name = Column(String)
    artist_id = Column(Integer)
    discogs_id = Column(Integer)
    barcode = Column(String)
    image_url = Column(String)
    year = Column(Integer)
    country = Column(String)
    genres = Column(String)

    #   Return the data as a string
    def __repr__(self):
        return str([getattr(self, c.name, None) for c in self.__table__.c])


#   Creating a compiler object from a specified query
def compile_query(query):
    compiler = query.compile if not hasattr(query, 'statement') else query.statement.compile
    return compiler(dialect=postgresql.dialect())


"""
    Accessor functions for albums table
"""


#   Returns a dict of all employees
def return_all_albums():
    """
        Iterate through the db and return a dict of all records
        :return results of the query
    """
    #   Create a MetaData() object
    metadata = MetaData()
    #   create engine
    engine = vinyls_start_engine()
    #   reflect
    metadata.reflect(engine)
    #   create table
    tbl = Table('albums', metadata)
    #   Create select statement
    stmt = select([tbl])
    #   Get results
    results = engine.connect().execute(stmt).fetchall()
    return results


#   Returns all albums by a specific artist_id
def return_albums_by_artist(artist_id):
    """
    Iterate through the db and return a dict of all records by artist_id
    :return:
    """
    #   Create a MetaData() object
    metadata = MetaData()
    #   create engine
    engine = vinyls_start_engine()
    #   reflect
    metadata.reflect(engine)
    #   create table
    tbl = Table('albums', metadata)
    #   Create select statement
    stmt = select([tbl])
    #   Get results
    results = engine.connect().execute(stmt.where(tbl.c.artist_id == artist_id)).fetchall()
    return results


"""
    Database accessor functions
"""


#   Add an album by barcode, using data from the Discogs API
def add_album_by_barcode(barcode):
    album = discogtool.searchbarcode(barcode)[0]
    #   Start session
    session = start_session(vinyls_start_engine())
    table = VinylsAlbumModel.__table__
    session.execute(insert(table), [{
                         "album_id": 999, #needs to be change to auto-increment
                         "title": album.data["title"].split(' - ')[1],
                         "artist_name": album.data["title"].split(' - ')[0],
                         "artist_id": 0,
                         "discogs_id": album.data["id"],
                         "barcode": barcode,
                         "country": album.data["country"],
                         "image_url": album.data["cover_image"],
                         "genres": album.data["genre"],
                         "year": album.data["year"]
                                     }])
    session.commit()
    print("Success upsert commit")


#   Updates album data using barcode in the Discogs API
def update_album_by_barcode(barcode):
    album = discogtool.searchbarcode(barcode)[0].data
    session = start_session(vinyls_start_engine())
    table = VinylsAlbumModel.__table__
    stmt = (
        update(table).where(table.c.barcode == barcode).values(
            title=album["title"].split(' - ')[1],
            discogs_id=album["id"],
            year=album.get("year", 0),
            genres=album["genre"],
            image_url=album["cover_image"],
            country=album["country"])
    )
    session.execute(stmt)
    session.commit()
    print(f"Updated {album['title']}")


#   This will loop the database and update the album based on barcode
def update_from_discogs():
    for album in return_all_albums():
        if album.barcode != "":
            update_album_by_barcode(album.barcode)
            time.sleep(2)