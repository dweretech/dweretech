<?php
require_once('db/dbinfo.inc'); 
require_once('securedata.php'); 
$challenge=$_GET['userinfo'];
/*  
$myname=$_POST['name'];
$mystate=$_POST['state'];
$myemail=$_POST['email'];
$UsersOnLine=$_POST['members'];
$myknownstates=$_POST['knownstates'];
*/
$hostname =$_SERVER['SERVER_NAME'];


//-----------------------
//echo  $myname.$mystate.$myemail.$mymembers;
//printf(" %s<br> %s<br> %s<br> %s<br>",$myname,$mystate,$myemail,$mymembers);
session_start();
/// function to logoff
// Lanyero Scovia;Lesotho;lscovia@dwere.com;lscovia;da14cca95fede304e67cb4eca1e8940e;2/4/2

 
$UserInfo= $challenge; //$_SESSION[$challenge];
list($myname,$mystate,$myemail,$myuname,$mymembers) = split(';',$UserInfo);

?>
 
      <form action="joinavcom.php" method="POST" enctype="multipart/form-data" name="formjoinAVNet" target="_self">
        
              Full Name:<br>
                <input name="name" type="text" id="myname" value="<?=$myname?>"  size="32">              
                <br> 
              Email Address:  <br>
              <input name="email" type="text" id="myemail" value="<?=$myemail?>"  size="32">
              <br>
              Username:<br>
                <input name="uname" type="text" id="username" value="<?=$myuname?>"  size="32">
                <br>
                Password:<br>
                <input name="pname" type="password" id="userpass"  size="32">
                <br>  
                Password Verify:<br>
                <input type="password" name="pverify" id="passverify"   size="32"> 
      			
                <br> 
              Country: <br> 
              <input name="country" type="text" id="mystate" value="<?=$mystate?>" size="32" >
               
          <div align="left">
            <br>
           
            <p align="center"><span class="AVForms2">
			<a href="#" onClick="javascript:document.formjoinAVNet.submit()">Update</a> | <a href="#" onClick="getText('AVbodyV','Africa')">Cancel</a></span> 
            <p><br>
            </span></div>
              </p>
      </form>
