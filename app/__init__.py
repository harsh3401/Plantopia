from email.mime import base
from flask import Flask, render_template
import os
app = Flask(__name__)
from dotenv import load_dotenv
load_dotenv()
base_url = os.getenv('BASE_URL')
print(base_url)

@app.route('/change-detection')
def change_detection():
    return render_template('change-detection.html', base_url = base_url)


@app.route('/classification')
def classification():
    return render_template('classification.html', base_url = base_url)


@app.route('/ndvi-timelapse')
def ndvi_timelapse():
    return render_template('ndvi-timelapse.html', base_url = base_url)


@app.route('/')
def index():
    return render_template('index.html')


def create_app():
    return app
