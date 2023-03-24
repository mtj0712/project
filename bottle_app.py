from bottle import default_app, run, template, request, get, post, static_file

@get('/')
def index():
    return template('index')

@get('/about')
def about():
    return template('about')

@get('/css/<filename>')
def static_css(filename):
    return static_file(filename, root='css/')

@get('/js/<filename>')
def static_js(filename):
    return static_file(filename, root='js/')

@get('/images/<filename>')
def static_image(filename):
    return static_file(filename, root='images/')

@post('/location')
def posted():
    state = request.forms.get('state')
    return { 'State Code' : state }

# application = default_app()
run()