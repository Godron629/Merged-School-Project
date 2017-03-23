<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "foodbank";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);


$sql = "select * from clock_entry where volunteer_id='" . $_GET['q'] . "'";
$result = $conn->query($sql);


	echo "<div style='float: left; width: 16%; height: 30px; text-align: center;'>Entry ID</div>";
	echo "<div style='float: left; width: 16%; height: 30px; text-align: center;'>Volunteer ID</div>";
	echo "<div style='float: left; width: 16%; height: 30px; text-align: center;'>Day</div>";
	echo "<div style='float: left; width: 16%; height: 30px; text-align: center;'>Clock In</div>";
	echo "<div style='float: left; width: 16%; height: 30px; text-align: center;'>Clock Out</div>";
	echo "<div style='float: left; width: 16%; height: 30px; text-align: center;'>Hours Worked</div>";
	echo "<br clear='both'><hr><br>";


while($row = $result->fetch_assoc())
{
	
	echo "<div style='float: left; width: 16%; height: 50px; text-align: center;'>" . $row['clock_entry_id'] . "</div>";
	echo "<div style='float: left; width: 16%; height: 50px; text-align: center;'>". $row['volunteer_id'] ."</div>";
	echo "<div style='float: left; width: 16%; height: 50px; text-align: center;'>". $row['clock_day_worked'] ."</div>";
	echo "<div style='float: left; width: 16%; height: 50px; text-align: center;'>". $row['clock_in_time'] ."</div>";
	echo "<div style='float: left; width: 16%; height: 50px; text-align: center;'>". $row['clock_out_time'] ."</div>";
	echo "<div style='float: left; width: 16%; height: 50px;'><input type='text' style='width: 100%; text-align: center;' value='". $row['clock_hours_worked'] ."'></input></div><br clear='both'>";
	echo "<hr><br>";
}






?>