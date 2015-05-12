<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<?php
header('Content-Type: text/xml');

function initializedb(){
	$link = mysql_connect('dwerenet.startlogicmysql.com', 'dwtadmin', 'dwere4u');
	if (!$link) {
		die('Could not connect: ' . mysql_error());
	}
	mysql_select_db('myafrica_db');
return 0;
}

function createtable($tbname){

// Make a MySQL Connection
mysql_connect("dwerenet.startlogicmysql.com", "dwtadmin", "dwere4u") or die(mysql_error());
mysql_select_db("myafrica_db") or die(mysql_error());

// Create a MySQL table in the selected database
$dbsql="CREATE TABLE ".$tbname."(id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id), name VARCHAR(30), email VARCHAR(50), country VARCHAR(50), age INT)";
mysql_query( $dbsql) or die(mysql_error());  
$name='Kitara Lagony';
$email='klagony@dwere.net';
$pass='Uganda';

insertUser($name,$email,$pass);
return "Table  $tbname Created!";
 
}
function insertUser($name,$email,$pass)
{
	$inst_sql="insert into webuser(name,email,country) value('" + $name + "','" + $email + "','" + $pass + "')";

	mysql_query($inst_sql);
	printf("Last inserted record has id %d\n", mysql_insert_id());
  return mysql_insert_id();
 }
function checkUserRec($q)
{
 if (isset($q)){
	
	
	$srch_sql="select * from  webuser where country like '" . $q . "'";
	// echo "<query>".$srch_sql."</query>";
	//echo  $srch_sql;
    $result = mysql_query($srch_sql);
	if (!$result) {
        die('Invalid query: ' . mysql_error());
	    
    }
	$row = mysql_fetch_assoc($result);
	if($row>0){
	/*
	  while ($row = mysql_fetch_assoc($result)) {
			echo $row['fullname'];
			echo $row['email'];
			 
		}
		*/
	    return '0';
	}
	else {
	
	 
	  return '1';
	 }
 }
	//return 1;
}

function nameInUse($q)
{  
  if (isset($q)){
    switch(strtolower($q))
    {
      case  'drew' :
          return '1';
          break;
	  case  'kitara@dwere.net' :
	 	  return '1';
	  	  break;
      case  'fred' :
          return '1';
          break;
      default:
          return '0';
    }
  }else{
    return '0';
  }
  
}
?>
<?php 
initializedb();
//echo checkUserRec($_GET['q'])
echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'; 
?>
<response>
<method>checkName</method>
<result><?php
echo createtable($_GET['q'])

 ?>
</result>

</response>

<body>
</body>
</html>
