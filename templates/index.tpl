<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Weather Site</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h1>Hello {{ name }}!</h1>
	% for i in range(10):
		<h2>This is loop index {{ i }}!</h2>
	% end
</body>
</html>