<?php
session_start();?>
<html>
<title>My Africa Vision 2020</title>
<head></head>
<script language="JavaScript" type="text/JavaScript">
<!--
function redirectMe(){
 
 
   if (top.frames.length==0)
    {
    // alert("You will be redirected to your Portal Page in 10 seconds!");
     setTimeout('redirectMe()',10000);
     }

document.formRedirect.submit();

}
//-->
</script>

<body onLoad="return redirectMe()">
<?php

// Make a MySQL Connection

require_once('db/dbinfo.inc'); 
require_once('securedata.php'); 
$myname=$_POST['name'];
$myemail=$_POST['email'];
$mystate=$_POST['country'];
$myknowstates=$_POST['knownstates'];
$myusername=$_POST['uname'];
$mypassword=$_POST['pname'];
$mypassverify=$_POST['passverify'];
$userinfo = $_POST['name'].','.$_POST['email'].','.$_POST['country'].','.$_POST['knownstates'].','.$_POST['uname'].','.$_POST['pname'];
//echo "<br>$base_url<br>$wname<br>$wemail<br>$wcode<br>wknowStates";
//echo "<br>Welcome<br>";//.avencrypt_c(ekey,$myusername);
//printf("<br>Host: %s<br> User: %s<br>email: %s<br> Code: %s<br>Other States: %s<br>User name: %s<br>",$base_url,$myname, $myemail,$mystate,$myknowstates,$myusername);
?>
 <form name="formRedirect" method="post" action="authenticate.php">
        
        <input type="hidden" name="uname" id="myname" value="<?=$myusername?>" >
        <input type="hidden" name="pname" id="mytate" value="<?=$mypassword?>">
        
</form> 
 
 <?php
 

function insertUser($userinfo)
{


$hostname=$base_url;
list($name,$email,$country,$knownstates,$uname,$pname) = split(",",$userinfo);
$ssdata=  $base_url.';'. $name.';'. $email.';'. $code;

// save ssession
 //$_SESSION['AV2020'] =avencrypt_c(ekey,$ssdata);
    
	$srch_sql="select * from webuser where email like '" . $email. "'";
	//echo '<br>Query: '.$srch_sql.'<br> ';
	$result = mysql_query($srch_sql);
	$row = mysql_fetch_assoc($result);
	//echo '<br>Result: '.$result.'<br> ';
	
	// //define the body of the message.
	ob_start();
 
	if (!$row) {				 
		$inst_sql="insert into webuser(name,email,country,uname,pname) values('" . $name ."','" . $email . "','" . $country ."','" . $uname."',MD5('" . $pname."'))";
		//echo '<br> '.$inst_sql.'<br> ';
		mysql_query($inst_sql);
		//printf("Last inserted record has id %d\n", mysql_insert_id());
	   // $message = "Welcome to Africa Vision 2020 - After your email has been verified, you will be guided to create a unique screen name and a password. \n Username is: $myusername \n<a href='http://africavision2020.com'>Click here</a> to retrieve password.";
       $message = "Welcome to Africa Vision 2020 -  update make to your email has been verified,".
	           "\nyou will be guided to create a unique password if you forgot your current one. ".
			   "\nUsername is: $email \n<a href='http://africavision2020.com'>Click here </a>to visit our web site".
			   "\n<a href='mailto:support@africavision2020.com'?subject='Reset Password for $email'>Click here to Reset Password.'</a>'";
	#
    }
		 
	if($row) {
	//echo '<br>email '.$email.' already in the system<br> ';
	$state=str_ireplace(" ","_", $country);
	$upt_sql="update webuser set name ='" . $name ."', 
								 email ='" . $email ."',
								 country ='" . $state ."',
								 uname ='" . $uname ."',
								 pname =MD5('" . $pname ."') where email like '".$email."'";
								  
		// echo '<br> '.$upt_sql.'<br> ';
		mysql_query($upt_sql);
	#
	$message = "Welcome to Africa Vision 2020 -  update make to your email has been verified,".
	           "\nyou will be guided to create a unique password if you forgot your current one. ".
			   "\nUsername is: $email \n<a href='http://africavision2020.com'>Click here </a>to visit our web site".
			   "\n<a href='mailto:support@africavision2020.com'?subject='Reset Password for $email'>Click here to Reset Password.'</a>'";
  //echo $message;
 // echo $random_hash; 
 
	#
	}
//copy current buffer contents into $message variable and delete current output buffer
//$message = ob_get_clean();
//	echo 'Email <br> '.$message;
	$headers = "From: support@africavision2020.com";
    $headers .= "\r\nCc: $email";
	$headers .= "\r\nBcc: support@africavision2020.com\r\n\r\n";
	mail( "klagony@gmail.com", "New Account", $message, $headers);
	#
	print "Congratulations your email has been sent";
   
	
    
    //DoJavaScriptRedirect( 'africavision2020.net/mypage.php?')
    
 }
 function insertCountry($lstStr) {
 
 //$Cname = split(',',$lstStr);

// save ssession
 //$_SESSION['AV2020'] =avencrypt_c(ekey,$ssdata);
   // for( $i=0;$i<=$Cname;$i++) {
   // $name = $lstStr; //$Cname[$i];
	$name=str_ireplace(" ","_", $lstStr);
    $srch_sql="select * from state where name like '" . $name . "'";
	 
	$result = mysql_query($srch_sql);
	$row = mysql_fetch_assoc($result);
	if (!$row) {				 
		$inst_sql="insert into state(name) values('" . $name . "')";
		echo '<br> '.$inst_sql.'<br> ';
		mysql_query($inst_sql);
		printf("Last inserted record has id %d\n", mysql_insert_id());
	    
    }
	else{	
	 echo '<br>Country '.$name.' already in the system<br> ';
	/*  while ($row = mysql_fetch_assoc($result)) {
			echo '<br> Name '.$row['id'];
			echo '<br> Email '.$row['name'];			 
		}
     */
	 }
	
    //} // for
    //DoJavaScriptRedirect( 'africavision2020.net/mypage.php?')
    
 }
//initializedb();
insertUser($userinfo);
//insertCountry($wknowStates);
insertCountry($mystate);
 
?>

</body>
</html>