from flask import Flask, request

app = Flask(name)

@app.route('/')
def hello():
return "Hello from Flask inside Docker!"

@app.route('/greet', methods=['POST'])
def greet():
name = request.json.get("name")
return {"message": f"Hello, {name}!"}

if name == 'main':
app.run(host='0.0.0.0', port=8000)