import json
import requests
from bottle import default_app, run, template, request, get, post, static_file

# Load API tokens
tokens_file = open("./.tokens.json", "r")
tokens = json.load(tokens_file)
tokens_file.close()

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

@post('/current')
def current():
    city = request.forms.get('city')
    response = requests.get(
        "https://api.weatherapi.com/v1/current.json",
        params={
            "key": tokens["weather_api"],
            "q": city
        }
    )
    response_json = response.json()
    return { 'Temperature (Celcius)' : response_json["current"]["temp_c"] }

# application = default_app()
run()