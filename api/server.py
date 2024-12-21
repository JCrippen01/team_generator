import json
from flask import Flask
from flask_cors import CORS
import psycopg2

app = Flask(__name__)
CORS(app)
HOST = open("db_ip_addr").read().rstrip()
PORT = "5432"

@app.route('/')
def index():
    return json.dumps({'msg': "success"})

@app.route('/all')
def all_users_and_animals():
    with psycopg2.connect(
    host=HOST,
    port=PORT,  # whatever port postgres is running on
    database="teams",
    user="postgres",
    password="password") as conn:
        #Fetch Students
        with conn.cursor() as cursor:
            cursor.execute("select * from Students")
            students = cursor.fetchall()
        #Fetch animals
            cursor.execute("SELECT * from Animals")
            animals = cursor.fetchall()
    conn.close()
    return json.dumps({
        'students': students if students else [],
        'animals': animals if animals else [],
    })



app.run(host='0.0.0.0', port=8000, debug=True)
