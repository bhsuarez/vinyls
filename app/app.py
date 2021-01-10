from flask import Flask, render_template
from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

engine = create_engine("postgresql://root:root@db:5432/vinyls")
db = scoped_session(sessionmaker(bind=engine))

app = Flask(__name__)

app.secret_key = '12345678' # this key is used to communicate with database.
#   Configure session to use filesystem
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/albumlist', methods=['GET'])
def album_list():
    albums = db.execute("SELECT * FROM public.albums ")
    return render_template("albumlist.html", albums=albums)


if __name__ == '__main__':
    app.run(host='0.0.0.0')
