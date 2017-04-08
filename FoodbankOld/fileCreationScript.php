<?php
date_default_timezone_set('America/Edmonton');
$time = date("H:i:s");
$date = date("Y-m-d");
$str = "C:/Users/Gideon/Desktop/" . $date . ".xml";

if(!file_exists($str))
{
	$myfile = fopen($str, "w");
	$txt = 
"<timeclock>

<entry>
<id>-1</id>
<name>-1</name>
<clockIn>-1</clockIn>
<clockOut>-1</clockOut>
</entry>

<entry>
<id>-2</id>
<name>-2</name>
<clockIn>-2</clockIn>
<clockOut>-2</clockOut>
</entry>

</timeclock>
";

fwrite($myfile, $txt);
fclose($myfile);
}
?>