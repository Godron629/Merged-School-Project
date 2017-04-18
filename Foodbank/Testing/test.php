<?php 

$date = date('Y/m/d ');
echo $date;
$timestamp = strtotime($date);
$dayOfWeek = date('w', $timestamp);

$offset = $dayOfWeek - 1;
if ($offset < 0) {
    $offset = 6;
}

$timestamp = $timestamp - ($offset * 86400);

$daysArray = array();

for ($i = 0; $i < 7; $i++, $timestamp += 86400){
    $daysArray[$i] = date('d', $timestamp); 
}

var_dump($daysArray);

?>