from flask import Flask, render_template, request
from sqlalchemy import create_engine
from sync import add_album_by_barcode
from sqlalchemy.orm import scoped_session, sessionmaker

engine = create_engine("postgresql://root:root@db:5432/vinyls")
db = scoped_session(sessionmaker(bind=engine))

app = Flask(__name__, static_folder='/app/static')

app.secret_key = '12345678' # this key is used to communicate with database.
#   Configure session to use filesystem
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"


@app.route('/')
def index():
    albums = db.execute("SELECT * FROM public.albums ")
    return render_template('index.html', albums=albums)


@app.route('/album/<album_id>', methods=['GET'])
def album_view(album_id):
    albums = db.execute("SELECT * FROM public.albums WHERE album_id = "+album_id)
    return render_template("album.html", albums=albums)


@app.route('/artist/<artist_id>', methods=['GET'])
def artist_view(artist_id):
    artists = db.execute("SELECT * FROM public.artists WHERE artist_id = "+artist_id)
    albums = db.execute("SELECT * FROM public.albums WHERE artist_id = "+artist_id)
    return render_template("artist.html", artists=artists,albums=albums)


@app.route('/vinyls', methods=['GET'])
def vinyls():
    return render_template("add-vinyl.html")

"""

https://www.askpython.com/python-modules/flask/flask-forms
"""

@app.route('/addvinyl', methods=['GET', 'POST'])
def addvinyl():
    if request.method == 'GET':
        return f"The URL /addvinyl is accessed directly. Try going to /vinyls to submit form"
    elif request.method == 'POST':
        form_data = request.form
        add_album_by_barcode(form_data.get("barcode"))
        return render_template("add-vinyl.html", form_data=form_data)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5050)
