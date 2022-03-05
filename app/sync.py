import os
from sqlalchemy.orm import scoped_session, sessionmaker
from sqlalchemy import Column, Integer, Date, create_engine, String, Sequence, update
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
class VinylsModel(Base):
    __table__name = 'vinyls'
    album_id = Column(Integer, Sequence('album_id'), primary_key=True)
    title = Column(String)
    artist_name = Column(String)
    artist_id = (Integer)
    discogs_id = (Integer)
    barcode = (String)

    #   Return the data as a string
    def __repr__(self):
        return str([getattr(self, c.name, None) for c in self.__table__.c])


def get_all_albums():
    print(db.execute("SELECT * FROM public.albums "))


if __name__ == '__main__':
    get_all_albums()