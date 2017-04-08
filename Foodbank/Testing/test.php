<?php 

date_default_timezone_set('Australia/Perth');
//date_default_timezone_set('America/Edmonton');

echo $sun_value= date('d', strtotime('Sunday this week')); 
echo "<br>";
echo $mon_value= date('d', strtotime('next Monday -1 week'));
echo "<br>";
echo $tue_value= date('d', strtotime('next Tuesday -1 week'));
echo "<br>";
echo $wed_value= date('d', strtotime('next Wednesday -1 week'));
echo "<br>";
echo $thu_value= date('d', strtotime('next Thursday -1 week'));
echo "<br>";
echo $fri_value= date('d', strtotime('next Friday -1 week'));
echo "<br>";				
echo $sat_value= date('d', strtotime('next Saturday -1 week'));	


?>