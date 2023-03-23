from bottle import default_app, route

@route('/')
def hello_world():
    return 'Hello from Bottle!'

application = default_app()
