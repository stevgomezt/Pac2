from app import app
from flask_mysqldb import MySQL
from dotenv import load_dotenv
import os

load_dotenv()  # take environment variables from .env.

# Mysql Settings
app.config['MYSQL_USER'] = os.getenv('MYSQL_USER') or 'admin'
app.config['MYSQL_PASSWORD'] = os.getenv('MYSQL_PASSWORD') or 'admin'
app.config['MYSQL_HOST'] = os.getenv('MYSQL_HOST') or 'localhost'  # 127.0.0.1
app.config['MYSQL_DB'] = os.getenv('MYSQL_DB') or 'TestFormPac'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'

# MySQL Connection
mysql = MySQL(app)
