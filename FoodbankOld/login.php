<?php 
session_start(); 
?>

<html>
<head>
	<title>Admin Login</title>
	<link rel="stylesheet" type="text/css" href="css/stylesheet.css">
</head>
<?php
if(isset($_SESSION['user_id'])) {
	die("<div class='Loginwrapper container centerAlign'>You are already logged in, do you want to <a href='/Foodbank/Admin/logout.php'>Log Out?</a>");
} 
?>
<body class="Loginwrapper">
<div class="centerAlign container">

	<div id="topRightNav">
		<a href="/Foodbank/TimeClock/index.php">Time Clock</a>
	</div>

	<a href="/Foodbank/"><img id="loginLogo" src="/Foodbank/images/logo.gif"></a>
	
	<h2>Admin Login</h2><br>
	<form class="loginButtons" action="/Foodbank/login_submit.php" method="post">
		<fieldset>
		<p>
		<label for="username">Username</label>
		<input type="text" id="username" name="username" value="" maxlength="20" />
		</p>

		<p>
		<label for="password">Password</label>
		<input type="password" id="password" name="password" value="" maxlength="20" />
		</p>

		<p>
		<input type="submit" value="Login" />
		</p>
		</fieldset>
	</form>
</div>
</body>
</html>

