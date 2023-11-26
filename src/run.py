import os
import os.path

from flask import Flask

app = Flask(__name__)


@app.route('/', methods=['GET'])
def hello_world():
    return 'Olá, está tudo funcionando por aqui'
