import os
from sqlalchemy.dialects import postgresql
import discogtool
from sqlalchemy.orm import scoped_session, sessionmaker
from sqlalchemy import Column, Integer, Date, create_engine, MetaData, select, Table, String, Sequence, update, insert
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


#   The model for upserting data
class VinylsAlbumModel(Base):
    __tablename__ = 'albums'
    album_id = Column(Integer, Sequence('album_id'), primary_key=True)
    title = Column(String)
    artist_name = Column(String)
    artist_id = Column(Integer)
    discogs_id = Column(Integer)
    barcode = Column(String)

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


def return_album_by_artist(artist_id):
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


def add_album_by_barcode(barcode):
    album = discogtool.searchbarcode(barcode)[0]
    #   Start session
    session = start_session(vinyls_start_engine())
    table = VinylsAlbumModel.__table__
    session.execute(insert(table), [{"album_id": 999,
                         "title": album.data["title"],
                         "artist_name": album.data["title"],
                         "artist_id": 0,
                         "discogs_id": album.data["id"],
                         "barcode": barcode}
                        ])
    session.commit()
    print("Success upsert commit")


if __name__ == '__main__':
    add_album_by_barcode("602438525447")
