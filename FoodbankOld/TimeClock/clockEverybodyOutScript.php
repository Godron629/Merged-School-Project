<?php include_once "C:/wamp64/www/Foodbank/code/php/databaseFunctions.php";

$filename = date("Y-m-d") . ".xml";

$xmlfile = fopen($str, "w");

if(!file_exists($filename)) {
$xmlfile = fopen($filename, "w");

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

fwrite($xmlfile, $txt);
fclose($filename);
}

?>