from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/api', methods=['GET'])
def api():
    message = os.getenv('BACKEND_MESSAGE', 'Hello from Backend!')
    return jsonify({'message': message})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)