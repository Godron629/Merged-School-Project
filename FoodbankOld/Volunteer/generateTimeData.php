<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "foodbank";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

//echo "console.log(". $_GET['q'] ." ". $_GET['date1']  .");";

if( $_GET['date1'] == null)
{
	$sql = "select * from clock_entry where volunteer_id='" . $_GET['q'] . "'";
}
else
{
	$sql = "select * from clock_entry where volunteer_id='" . $_GET['q'] . "' AND clock_day_worked='". $_GET['date1']. "'";
}
$result = $conn->query($sql);


	echo "<div style='float: left; width: 8%; height: 30px; text-align: center;'>Entry ID</div>";
	echo "<div style='float: left; width: 8%; height: 30px; text-align: center;'>Volunteer ID</div>";
	echo "<div style='float: left; width: 12%; height: 30px; text-align: center;'>Date</div>";
	echo "<div style='float: left; width: 12%; height: 30px; text-align: center;'>Clock In</div>";
	echo "<div style='float: left; width: 12%; height: 30px; text-align: center;'>Clock Out</div>";
	echo "<div style='float: left; width: 12%; height: 30px; text-align: center;'>Hours Worked</div>";
	echo "<div style='float: left; width: 26%; height: 30px; text-align: center; margin-right: 10px;'>Notes</div>";
	echo "<div style='float: left; width: 6%; height: 30px; text-align: center;'>Change</div>";
	echo "<br clear='both'><br><hr><br>";


while($row = $result->fetch_assoc())
{
	
	echo "<div style='float: left; width: 8%; height: 50px; text-align: center;'>" . $row['clock_entry_id'] . "</div>";
	echo "<div style='float: left; width: 8%; height: 50px; text-align: center;'>". $row['volunteer_id'] ."</div>";
	echo "<div style='float: left; width: 12%; height: 50px; text-align: center;'>". $row['clock_day_worked'] ."</div>";
	echo "<div style='float: left; width: 12%; height: 50px; text-align: center;'>". $row['clock_in_time'] ."</div>";
	echo "<div style='float: left; width: 12%; height: 50px; text-align: center;'>". $row['clock_out_time'] ."</div>";
	echo "<div style='float: left; width: 12%; height: 50px; margin-right: 15px;'><input type='text' id='". $row['clock_entry_id'] ."' disabled name='entry[]' style='width: 100%; text-align: center;' value='". $row['clock_hours_worked'] ."'></input></div>";
	echo "<div style='float: left; width: 26%; height: 30px; text-align: center;'><textarea maxlength='254' style='resize: none; height: 55px; width: 100%;' name='". $row['clock_entry_id'] ."' disabled></textarea></div>";
	echo "<div style='float: left; width: 6%;  height: 30px; text-align: center;'><input type='checkbox' name='id[]' value='". $row['clock_entry_id'] ."' onchange='unLock(this.value), unLockNotes(this.value)'></input></div>";
	echo "<br clear='both'><br><hr><br>";
}






?>