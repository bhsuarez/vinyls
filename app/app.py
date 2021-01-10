from flask import Flask, render_template
import psycopg2

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/albumlist')
def albumlist():
    # try:
    #     cursor = psycopg2.connect(dbname="vinyls",
    #                               user="root",
    #                               password="root",
    #                               host="0.0.0.0",
    #                               port="5432")
    # except:
    #     print("can't connect to database")
    # cursor.execute()
    # data = cursor.fetchall()
    return render_template("albumlist.html"
                           #, data=data
                           )


if __name__ == '__main__':
    app.run(host='0.0.0.0')
