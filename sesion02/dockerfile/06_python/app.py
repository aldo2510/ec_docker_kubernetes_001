from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify(message="Hola, mundo desde la API!")

@app.route('/api/data', methods=['GET'])
def get_data():
    data = {"name": "Entrenamiento Certero", "product": "Docker y Kubernetes"}
    return jsonify(data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
