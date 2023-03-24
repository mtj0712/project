<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Weather Site</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/index.css">
	<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
	<script>
		window.jQuery
		|| document.write('<script src="js/lib/jquery-3.6.4.js">\x3C/script>');
	</script>
</head>
<body>
	<nav>
		<ul>
			<li><a href="./">Home</a></li>
			<li><a href="about">About</a></li>
		</ul>
	</nav>
	<main>
		<h1>Weather Summary</h1>
		<form>
			<label for="city">City:</label>
			<input type="text" id="city" name="city">
			<button type="button" id="submit">Submit</button>
		</form>
		<div class="weather_box">
			Temperature (&#8451;): <span id="temp"></span>
		</div>
	</main>
	<footer>
		<h2>To take a look at the code behind this website, click <a href="https://github.com/mtj0712/project" target="_blank">here</a></h2>
		<h2>Powered by:</h2>
		<a href="https://www.pythonanywhere.com/" title="PythonAnywhere" target="_blank"><img src="https://upload.wikimedia.org/wikipedia/en/9/97/PythonAnywhere_logo.png" alt="Web Hosting by PythonAnywhere" border="0"></a>
		<a href="https://www.weatherapi.com/" title="Free Weather API" target="_blank"><img src="https://cdn.weatherapi.com/v4/images/weatherapi_logo.png" alt="Weather data by WeatherAPI.com" border="0"></a>
	</footer>

	<script src="js/style.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
