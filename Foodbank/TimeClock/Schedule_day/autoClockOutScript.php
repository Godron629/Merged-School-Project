<?php
date_default_timezone_set('America/Edmonton');
$date = date("Y-m-d");
$str = "C:/wamp64/www/Foodbank/TimeClock/Schedule_day/" . $date . ".xml";

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "foodbank";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

	$reading = fopen($str, 'r');
		while (!feof($reading))
		{
			$line = fgets($reading);
			if (stristr($line,'<id>'))
			{
				$strParse = "";
				for($p = 0; $p < strlen($line); $p++)
				{
					if(is_numeric($line[$p]))
					{
						$strParse .= $line[$p];
					}
					else if($line[$p] == '-')
					{
						$strParse .= $line[$p];
					}
				}
			}
				if(stristr($line,'<clockIn>'))
				{
					$lineDB = substr($line, -19, 8);
				}
				
				if(stristr($line,'<clockOut>') && strlen($line) == 22)
				{
					$sql = "insert into clock_entry (clock_entry_id, volunteer_id, clock_day_worked, clock_in_time, clock_out_time, clock_hours_worked) values (NULL," . $strParse . ", '" . $date . "', '{$lineDB}', '11:59:59', '03:30:00')";
					$conn->query($sql);
				}
		}
	fclose($reading); 
$conn->close();
?>

<html>
</html>