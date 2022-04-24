from flask import Flask, render_template

app = Flask(__name__)

@app.route('/change-detection')
def change_detection():
    return render_template('change-detection.html')

@app.route('/classification')
def classification():
    return render_template('classification.html')
@app.route('/ndvi-timelapse')

def ndvi_timelapse():
    return render_template('ndvi-timelapse.html')

@app.route('/')
def index():
    return render_template('index.html')

def create_app():
    return app