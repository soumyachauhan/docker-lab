from flask import Flask, request, jsonify

app = Flask(__name__)  # Corrected from 'name' to '__name__'

@app.route('/')
def hello():
    return "Hello from Flask inside Docker!"  # Indented properly

@app.route('/greet', methods=['POST'])
def greet():
    name = request.json.get("name")  # Extract name from JSON
    return jsonify({"message": f"Hello, {name}!"})  # Use jsonify for proper response

if __name__ == '__main__':  # Corrected from 'name' to '__name__'
    app.run(host='0.0.0.0', port=8000)