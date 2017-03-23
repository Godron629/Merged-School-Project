<?php
session_start(); 

if(!isset($_SESSION['user_id'])) {
    header('Location: /Foodbank/Admin/loginRequired.php');
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Update Volunteer</title>
	<!-- Default Stylesheet -->
	<link rel="stylesheet" type="text/css" href="../css/stylesheet.css">

	<!-- jQuery  -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

	<!-- Dialog Box -->
	<script
  	src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
  	integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
  	crossorigin="anonymous"></script>

  	<!-- Dialog Box CSS -->
  	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css" />

  	<!-- Select2 Select -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />

	<!-- Select2 Select CSS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>

</head>
<script>
function populateList(str) {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("List").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET", "/Foodbank/Calendar/populateList.php?q=" + str, true);
        xmlhttp.send();
}
</script>
<script type="text/javascript">
		$(document).ready(function() {
			$('.test').select2({ width: '200px' });
		});	
</script>
<script>
function generateTimeData(str) {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("Entries").innerHTML = this.responseText;
            }
        };
		console.log(str);
        xmlhttp.open("GET", "generateTimeData.php?q=" + str, true);
        xmlhttp.send();
}
</script>

<body class="wrapper" onload="populateList(true),generateTimeData(1)">

	<h1><a href="/Foodbank/Admin/home.php"><img id="logo" src="/Foodbank/images/logo.gif"></a><a href="/Foodbank/Volunteer/UpdateVolunteerTime.php">Update Volunteer Time Records</h1></a>
	<div id="topRightNav">
	<a href="/Foodbank/TimeClock/index.php">Time Clock</a>
		<a href="/Foodbank/Admin/logout.php" class="loginButton">Logout</a>
	</div>

	<div id="mainNav">
		<ul>
			<li><a href="/Foodbank/Admin/home.php">Home</a></li>
			<li><a href="/Foodbank/Calendar/">Calendar</a></li>
			<li>
				<a class="active">Manage Volunteers</a>
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
		
			<form action="" id="volunteerForm" method="POST">
			<!-- Select2 Select -->
				<div>	
					Select Volunteer <select class='test'  name='people' id='List' onchange="generateTimeData(this.value)">
					
						</select>
					</div><br>
			<div style="border: solid;  height: 700px; overflow: auto;" id="Entries">
	
			</div>
			<div class="container bigButtons" id="submitButtons">
				<a href="/Foodbank/code/php/newVolunteer_submit.php"><button type="button">Cancel</button></a>
				<input type="submit" name="submitVolunteer">
			</div>
		</form>
	

	<!-- Shown on Ajax to edit volunteer success -->
	<div id="successDialog" style="display:none">
		<p>Volunteer was sucessfully created!</p>
	</div>	

</body>
</html>