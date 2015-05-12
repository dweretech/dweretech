<?php
// Pull in the NuSOAP code
require_once('../db/dbinfo.inc'); 
require_once('../securedata.php'); 
require_once('../lib/nusoap.php');
// Create the server instance
 // echo "<br>Trying query ...". $UserInfo;
//exit;
//echo '<br> executing ws methods....<br>';
$server = new soap_server();

// Initialize WSDL support

$server->configureWSDL('Africa Vision 2020', 'urn:avwsdl');
// Register the method to expose
$server->register('Get',                // method name
    array('name' => 'xsd:string'),        // input parameters
    array('return' => 'xsd:string'),      // output parameters
    'urn:avwsdl',                      // namespace
    'urn:avwsdl#hello',                // soapaction
    'rpc',                                // style
    'encoded',                            // use
    'Take name of state and return number of users on line'            // documentation
);
$server->register('InsertState',                // method name
    array('name' => 'xsd:string'),        // input parameters
    array('return' => 'xsd:string'),      // output parameters
    'urn:avwsdl',                      // namespace
    'urn:avwsdl#return session id',                // soapaction
    'rpc',                                // style
    'encoded',                            // use
    'Inserts a new state to the union Africa Vision 2020'            // documentation
);
$server->register('Search',                // method name
    array('name' =>  'xsd:string',
	      'email' => 'xsd:string',
		  'state' => 'xsd:string' ),        // input parameters
    array('return' => 'xsd:string'),      // output parameters
    'urn:avwsdl',                      // namespace
    'urn:avwsdl#return session id',                // soapaction
    'rpc',                                // style
    'encoded',                            // use
    'Search for profile in the database'            // documentation
);
$server->register('GetUser',                // method name
    array('uname' =>  'xsd:string',
	      'pname' => 'xsd:string',
		  'state' => 'xsd:string' ),        // input parameters
    array('return' => 'xsd:string'),      // output parameters
    'urn:avwsdl',                      // namespace
    'urn:avwsdl#return session id',                // soapaction
    'rpc',                                // style
    'encoded',                            // use
    'Check for user in the database and returns full name, country and email address'            // documentation
);
// Define the method as a PHP function
function Get($name) {
     initializedb();
	 $noUsers = GetAll($name);
     return  $noUsers;
}

// Define the method as a PHP function
function Search($name,$email,$state) {
     initializedb();
	 $noUsers = GetAll($name);
     return $noUsers;
}
function GetUser($uname,$pname ,$state) {
    // initializedb();
	// mysql_select_db('africa_db');  
	 $srch_sql="select * from webuser where email like '" . $uname . "' and  pname =MD5('".$pname."')";
	 //$srch_sql="select * from webuser where email like 'klagony@dwere.net' and  pname =MD5('dwere4u')";
	 //$UserInfo =  $srch_sql;
	// echo "<br>Trying query ...". $srch_sql;
	 //return  $srch_sql;
	//exit;
	$result = mysql_query($srch_sql);
	 while ($rs= mysql_fetch_assoc($result)) {
			//echo '<br> Name '.$row['id'];
			//echo '<br> Email '.$row['name'];
			
			$UserInfo =	$rs['name'].';'.$rs['country'].';'.$rs['email'].';'.$rs['uname'].';'.GetAll($rs['country']);	 
		}
	$row = mysql_num_rows($result);
	 
	  if($row){
         return $UserInfo;
    } else
	   return 'Demo(no record),Demo,Demo,1'; 
}
function initializedb(){
	 	// echo "<br>Trying query ...". dbhost;
	//exit;
	//$connection = mysql_connect(dbhost,dbuser,dbpass) or die(mysql_error());
  //  $db = mysql_select_db(dbname) or die(mysql_error());
	//if (!$connection) {
		//die('Could not connect: ' . mysql_error());
	//}
	mysql_select_db('africa_db');
return 0;
}

function dbClose(){
	//mysql_close($connection);
return 0;
}
function GetAll($name){
$srch_sql="select * from webuser where country like '" . $name . "'";
	 
	$result = mysql_query($srch_sql);
	$row = mysql_num_rows($result);
	/*if (!$row) {				 
		$inst_sql="insert into state(name) values('" . $name . "')";
		echo '<br> '.$inst_sql.'<br> ';
		mysql_query($inst_sql);
		printf("Last inserted record has id %d\n", mysql_insert_id());
	    
    }
	else{	
	echo '<br>Country '.$name.' already in the system<br> ';
	  while ($row = mysql_fetch_assoc($result)) {
			echo '<br> Name '.$row['id'];
			echo '<br> Email '.$row['name'];			 
		}

	 } */
return $row;
}
function InsertState($name){
$srch_sql="select * from state where name like '".$name."'";
	 
	$result = mysql_query($srch_sql);
	$row = mysql_num_rows($result);
	if (!$row && !$name=='') {				 
		$inst_sql="insert into state(name) values('" . $name . "')";
		//echo '<br> '.$inst_sql.'<br> ';
		mysql_query($inst_sql);
		//printf("Last inserted record has id %d\n", mysql_insert_id());
	    
    }
	$state_id =mysql_insert_id();
	 
 
return $state_id;
}
// Use the request to (try to) invoke the service
$HTTP_RAW_POST_DATA = isset($HTTP_RAW_POST_DATA) ? $HTTP_RAW_POST_DATA : '';
$server->service($HTTP_RAW_POST_DATA);
 dbClose();
?>
