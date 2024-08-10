"""
learn-github-actions app demo code
"""
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    """
    hello world api
    """
    return '<p>Hello, World!!</p>'

if __name__ == '__main__':
    app.run(debug=True)
