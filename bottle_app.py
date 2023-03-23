from bottle import default_app, route, run, template, request, get, static_file

@route('/')
def index():
    return template('templates/index', name=request.query.name)

@route('/css/<filename>')
def static_css(filename):
    return static_file(filename, root='css/')

@route('/images/<filename>'):
def static_image(filename):
    return static_file(filename, root='images/')

@route('/posted', method='POST')
def posted():
    return '<h1>You posted!</h1>'

@get('/weather')
def getWeather():
    return {'Today' : 'None'}

# application = default_app()
run()