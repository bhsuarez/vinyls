from flask import Flask, render_template, request, jsonify
from sqlalchemy import create_engine
from telegram_worker import send_telegram_message
from sync import add_album_by_barcode
from sqlalchemy.orm import scoped_session, sessionmaker

engine = create_engine("postgresql://root:root@db:5432/vinyls")
db = scoped_session(sessionmaker(bind=engine))

# create ssl cert
app = Flask(__name__, static_folder='/app/static')

app.secret_key = '12345678'  # this key is used to communicate with database.
#   Configure session to use filesystem
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"


@app.route('/')
def index():
    albums = db.execute("SELECT * FROM public.albums ")
    return render_template('index.html', albums=albums)


@app.route('/album/<album_id>', methods=['GET'])
def album_view(album_id):
    albums = db.execute("SELECT * FROM public.albums WHERE album_id = " + album_id)
    return render_template("album.html", albums=albums)


@app.route('/artist/<artist_id>', methods=['GET'])
def artist_view(artist_id):
    artists = db.execute("SELECT * FROM public.artists WHERE artist_id = " + artist_id)
    albums = db.execute("SELECT * FROM public.albums WHERE artist_id = " + artist_id)
    return render_template("artist.html", artists=artists, albums=albums)


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
        #   Send the IP address and barcode data to the telegram bot
        if request.environ.get('HTTP_X_FORWARDED_FOR') is None:
            send_telegram_message(request.environ['REMOTE_ADDR'],
                                  form_data.get("barcode"))
        else:
            send_telegram_message(request.environ['HTTP_X_FORWARDED_FOR'],
                                  form_data.get("barcode"))
        album = db.execute("SELECT * FROM public.albums WHERE barcode = '" + form_data.get("barcode")+"'")
        return render_template("album.html", albums=album)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, ssl_context=('./domain.cert.pem', './private.key.pem'))
