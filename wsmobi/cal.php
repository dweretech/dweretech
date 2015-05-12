<html>
<head>   
<link href="calendar.css" type="text/css" rel="stylesheet" />
</head>
<body>
<?php
require_once('calendar.php');
 
$calendar = new Calendar();
 
echo $calendar->show();

?>

</body>
</html>  
