from flask import Flask
application = Flask(__name__)


@application.route('/')
def hello_world():
    return 'Hello, world!'

if __name__ == '__main__':
#    application.run(host='0.0.0.0', port=80)
    application.run()
