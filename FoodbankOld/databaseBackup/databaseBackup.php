<?php
session_start(); 

if(!isset($_SESSION['user_id'])) {
    header('Location: /Foodbank/Admin/loginRequired.php');
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Database Backup</title>
	<link rel="stylesheet" type="text/css" href="/Foodbank/css/stylesheet.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>	
</head>
<body class="wrapper">

	<h1><a href="/Foodbank/Admin/home.php"><img id="logo" src="/Foodbank/images/logo.gif"></a><a href="/Foodbank/databaseBackup/databaseBackup.php">Database Backup</h1></a>
	<div id="topRightNav">
		<a href="/Foodbank/Admin/logout.php" class="loginButton">Logout</a>
	</div>

	<div id="mainNav">
		<ul>
			<li><a  class="active" href="/Foodbank/Admin/home.php">Home</a></li>
			<li><a href="/Foodbank/Calendar/">Calendar</a></li>
			<li>
				<a>Manage Volunteers</a>
				<ul class="dropdown">
					<li><a href="/Foodbank/Volunteer/newVolunteer.php">New Volunteer</a></li>
					<li><a href="/Foodbank/Volunteer/updateVolunteer.php">Update Volunteer</a></li>
					<li><a href="/Foodbank/Volunteer/UpdateVolunteerTime.php">Update Time Entries</a></li>
				</ul>
			</li>
			<li><a href="/Foodbank/Reports/reports.php">Reports</a></li>
		</ul>
	</div>

	<div class="container main">
		<h2>Database Backup</h2>
		<div class="bigButtons">
			<form method="POST" action="/Foodbank/databaseBackup/createBackup.php">
			<p>To manually create a backup of the database, please click <i>Create Backup</i>. The database contains volunteers, calendar entries, and time clock information.</p>
			<input type="submit" name="createBackupButton" id="createBackupButton" value="Create Backup"></button>
			</form>
		</div>
		<h2>Database Restore</h2>
	</div>

</body>
</html>