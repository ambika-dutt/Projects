from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from Cloud Run!"

if __name__ == '__main__':
    port = int(os.environ.get("PORT", 8080))  # Use Cloud Run's PORT env var
    app.run(host='0.0.0.0', port=port)        # Must listen on 0.0.0.0
