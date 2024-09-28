from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, World!"

if __name__ == '__main__':
    # Use a port other than 5000, for example, 8080
    app.run(host='0.0.0.0', port=8000, debug=True)
