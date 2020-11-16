from typing import List, Dict
from flask import Flask
import mysql.connector
import json

app = Flask(__name__)


def get_albums() -> List[Dict]:
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'vinyls'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM albums')
    results = [{artist_name: title+"<br>"}
               for (id, title, artist_name, artist_id, discogs_id, barcode)
               in cursor]
    cursor.close()
    connection.close()

    return results


@app.route('/')
def index() -> str:
    return json.dumps({'albums': get_albums()})


if __name__ == '__main__':
    app.run(host='0.0.0.0')
