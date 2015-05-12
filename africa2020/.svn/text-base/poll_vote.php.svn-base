<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Dynamic Polling</title>
</head>
<?php
$vote = $_REQUEST['vote'];

//get content of textfile
$filename = "upload/poll_result.txt";
$content = file($filename);

//put content in array
$array = explode("||", $content[0]);
$yes = $array[0];
$no = $array[1];

if ($vote == 0)
 {
 $yes = $yes + 1;
 }
if ($vote == 1)
 {
 $no = $no + 1;
 }
$tolly = $yes + $no;
//insert votes to txt file
$insertvote = $yes."||".$no;
$fp = fopen($filename,"w");
fputs($fp,$insertvote);
fclose($fp);
?>

Result: (<?=$tolly?>)
<table class="AVForms">
<tr>
<td>Yes:</td>
<td>
<img src="images/opoll.gif"
width='<?php echo(100*round($yes/($no+$yes),2)); ?>'
height='10'>
<?php echo(100*round($yes/($no+$yes),2)); ?>%
</td>
</tr>
<tr>
<td>No:</td>
<td>
<img src="images/mpoll.gif" 
width='<?php echo(100*round($no/($no+$yes),2)); ?>'
height='10'>
<?php echo(100*round($no/($no+$yes),2)); ?>%
</td>
</tr>

</table>
<body>
</body>
</html>
