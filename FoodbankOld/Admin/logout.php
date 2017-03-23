<?php
session_start();

session_unset();

session_destroy();
?>

<html>
<head>
	<title>Logged Out</title>
	<link rel="stylesheet" type="text/css" href="/Foodbank/css/stylesheet.css">
</head>

<body class="Loginwrapper">
	<div class="centerAlign container">
		<p>You have been logged out.</p>
		<a href="http://www.google.com" class="loginButton">Leave</a>
		<a href="/Foodbank/" class="loginButton">Login</a>
	</div>
</body>
</html>