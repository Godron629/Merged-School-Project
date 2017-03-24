<?php
date_default_timezone_set('America/Edmonton');
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
	if(checkPassword($_POST['user'])) {
		echo "yeah";
	}

	$time = date("H:i:s");
	$date = date("Y-m-d");
	$str = $date . ".xml";
	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "foodbank";
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	
	$sql = "select volunteer_id, volunteer_fname, volunteer_lname from volunteer where volunteer_id='". $_POST['user'] . "'";
	$result = $conn->query($sql);
	$user = $result->fetch_assoc();
	
	$myfile = fopen($str, "r+") or die("Unable to open file!");
		$txt =
"<entry>
<id>". $user['volunteer_id'] ."</id>
<name>". $user['volunteer_fname'] . " " . $user['volunteer_lname'] . "</name>
<clockIn>". $time ."</clockIn>
<clockOut></clockOut>
</entry>\n\n </timeclock>";
	$xml= simplexml_load_file($str);
	$xml_array = unserialize(serialize(json_decode(json_encode((array) $xml), 1)));
	$testarray = array();
	$library = array();

	if(isset($xml_array['entry']))
	{
		foreach($xml_array['entry'] as $test => $content)
		{
			if($content['id'] != -2 && $content['id'] != -1)
			{
				array_push($testarray, $content['id']);
			}
		}
		if(!in_array($_POST['user'], $testarray))
		{
			echo "	<script>
						$(function(){
							$('#clockedInDialog').dialog('open');
							});
					</script>";
			fseek($myfile, -12, SEEK_END);
			fwrite($myfile, $txt);
		}
		$counter = 0;
		$val = "";
		$result = array_unique($testarray);
		$tempArray = array();

		for($k = 0; $k < sizeof($testarray); $k++)
		{
			if(isset($result[$k]))
			{
				array_push($tempArray, $result[$k]);
				array_push($library, 0);
			}
			
		}

		for($i = 0; $i < sizeof($testarray); $i++)
		{
			for($j = 0; $j < sizeof($tempArray); $j++)
			{
				if($testarray[$i] == $tempArray[$j])
				{
					$library[$j]++;
				}
			}
		}
		
		for($i = 0; $i < sizeof($tempArray); $i++)
		{
			$counter = 1;
			$count2 = 0;
			if($tempArray[$i] == $_POST['user'])
			{ 
				foreach($xml_array['entry'] as $test => $content)
				{
					if($content['id'] == $_POST['user'])
					{ 
						if($counter == $library[$i])
						{
							if($content['clockOut'] == null)
							{
								$reading = fopen($str, 'r');
								$writing = fopen("test.xml", 'w');
								while (!feof($reading))
								{
									$line = fgets($reading);
									if (stristr($line,'<id>'))
									{
										$newStr = "<id>". $_POST['user'] ."</id>";
										if(strcmp($line, $newStr) == 2)
										{
											$count2++;
											$foundEntry = true;
										}
										else
										{
											$foundEntry = false;
										}
									}
									if(stristr($line,'<clockIn>') && $foundEntry == true)
									{
										$lineDB = substr($line, -20, 8);
									}
									if (stristr($line,'<clockOut>') && $foundEntry == true)
									{
										$tempLine = stristr($line,'<clockOut>');
										if($count2 == $library[$i])
										{
											$line = "<clockOut>{$time}</clockOut>\n";
											$count2 = 0;
											echo"	<script>
															$(function(){
																$('#clockedOutDialog').dialog('open');
															});
														</script>";
											$start_date = strtotime($lineDB);
											$end_date = strtotime(substr($line, -20, 8));
											$workedHours = gmdate("H:i:s",  $end_date - $start_date);
											$sql = "insert into clock_entry (clock_entry_id, volunteer_id, clock_day_worked, clock_in_time, clock_out_time, clock_hours_worked) values (NULL," . $content['id'] . ",'" . $date . "', '" . $lineDB . "', '" . substr($line, -20, 8) . "','" . $workedHours . "')";

											if(!$conn->query($sql))
											{
												printf("Errormessage: %s\n", $conn->error);
											}
																															
										}
										else
										{
											$line = $tempLine;
										}
										
									}
									fputs($writing, $line);
									file_put_contents($str, file_get_contents("test.xml"));
									$counter = 1;
								}
							fclose($reading); 
							fclose($writing);
							unlink("test.xml");
							}
							else
							{
								echo "	<script>
											$(function(){
												$('#clockedInDialog').dialog('open');
											});
										</script>";
								fseek($myfile, -12, SEEK_END);
								fwrite($myfile, $txt);
							}
						}
						else
						{
							$counter++;
						}
					}
				}
			}			
		}		
	fclose($myfile); 
	$conn->close();
	}

}

function checkPassword($volunteerId) {
	$result = db_select("SELECT password FROM volunteer WHERE volunteer_id = {$volunteerId}");

	$password = sha1($result[0]['password']);

	if($password === sha1($_POST['pass'])) {
		return true;
	} else {
		return false;
	}	
}

?>