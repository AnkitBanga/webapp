from flask import Flask
helloworld = Flask(__name__)
@helloworld.route("/")
def run():
    return "{\"message\":\"Hello World Python, this is tested images and able to connect on browser and test for the automation v2\"}"
if __name__ == "__main__":
    helloworld.run(host="0.0.0.0", port=int("5000"), debug=True)
