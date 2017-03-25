<?php
session_start(); 

if(!isset($_SESSION['user_id'])) {
    header('Location: /Foodbank/Admin/loginRequired.php');
}
date_default_timezone_set('America/Edmonton');
$date = date("Y-m-d");
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "foodbank";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
	$count = 0;
	
	if(isset($_POST['id']))
	{
		foreach($_POST['id'] as $position => $entryID)
		{
			$validation = true;
			$updatedTime = $_POST['entry'][$count];
			
			if(strlen($_POST['entry'][$count]) == 8)
			{
				for($j = 0; $j < strlen($_POST['entry'][$count]); $j++)
				{
					if($j < 2)
					{
						if(!is_numeric($updatedTime[$j]))
						{
							$validation = false;
						}
					}
					else if($j == 2 || $j == 5)
					{
						if($updatedTime[$j] != ':')
						{
							$validation = false;
						}
					}
					else if($j > 2 && $j < 5)
					{
						if(!is_numeric($updatedTime[$j]))
						{
							$validation = false;
						}
						else if($j == 3)
						{
							if($updatedTime[$j] >= 6)
							{
								$validation = false;
							}
						}						
					}
					else if($j > 5 && $j <= 7)
					{
						if(!is_numeric($updatedTime[$j]))
						{
							$validation = false;
						}
						else if($j == 6)
						{
							if($updatedTime[$j] >= 6)
							{
								$validation = false;
							}
						}						
					}
				}
				
				if($validation == true)
				{
					
					if($_POST[$entryID] == null)
					{
						$note = "";
					}
					else
					{
						$note = $_POST[$entryID];
					}
					$sql = "update clock_entry set clock_hours_worked='". $updatedTime ."', Notes='". $note ."'where clock_entry_id='". $entryID . "'";
					$conn->query($sql);
				}
			}
			$count++;
		}
	}
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
	
	
	<style>
/* Tooltip container */
.tooltip {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}

/* Tooltip text */
.tooltip .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: black;
    color: #fff;
    text-align: center;
    padding: 5px 0;
    border-radius: 6px;
 
    /* Position the tooltip text - see examples below! */
    position: absolute;
    z-index: 1;
}

/* Show the tooltip text when you mouse over the tooltip container */
.tooltip:hover .tooltiptext {
    visibility: visible;
}
</style>

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
		var x = document.getElementById('firstDate').value;
		
        xmlhttp.open("GET", "generateTimeData.php?q=" + str + "&date1=" + x, true);
        xmlhttp.send();
}
</script>
<script>
function unLock(id)
{
	if(document.getElementById(id).disabled == true)
	{
		document.getElementById(id).disabled = false;
	}
	else
	{ 
		//console.log(document.getElementById(id).name);
		document.getElementById(id).disabled = true;
	}
}
</script>
<script>
function unLockNotes(id)
{
	if(document.getElementsByName(id)[0].disabled == true)
	{
		document.getElementsByName(id)[0].disabled = false;
	}
	else
	{ 
		//console.log(document.getElementById(id).name);
		document.getElementsByName(id)[0].disabled = true;
	}
}
</script>

<body class="wrapper" onload="populateList(true)">

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
						For Date: <input type="date" id='firstDate'></input>&nbsp;&nbsp;<div class="tooltip"><b>?</b>
									<span class="tooltiptext">Leave blank to see entries for all time.</span>
</div>
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