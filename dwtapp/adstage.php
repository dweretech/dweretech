<?php
require_once('db/securedata.php');
$encryptedSid = $_GET['sid'];
if(isset($encryptedSid)){
	$verified=true;
	
	$sid= base64_decode($encryptedSid) ;
	echo "\n".'<script type="text/javascript"> ';
	echo "\n".'function setFormValue(){ ';
	echo "\n".'document.forms.AdForm.fn ="'.$sid.'"';
	echo "\n".'}';
	echo "\n".'</script>';
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <script language="javascript1.5" type="text/ecmascript">
 function closeMe(){
    tmp.write('<p><a href="javascript:self.close()">close</a> the popup.</p>');

  }  
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DWERE Enterprises - Advert Stage</title>
<link href="css/slide.css" rel="stylesheet" type="text/css" />
</head>
<?php 
if ($verified){
 echo '<body onload="setFormValue()">';
}
else
 echo '<body>';
 
?>
 

<p>
  <script src="js/dwtAstage.js" type="text/javascript"></script>
<u class="header"><span class="header">Fill in your Advertisment details</span></u><span class="header"><br />
</span></p>
<div id="myStage">
<form method="POST" action="submit.php" name="AdForm">
  <table width="329">
    <tr><td width="97" align="right"><span class="header">
  Full Name: </span></td>
      <td width="146" align="left">
        <span class="header">
        <input type="text" name="fn" length="20">
        </span></td>
      <td width="188" align="left">&nbsp;</td>
    </tr>
    <tr>
  <td align="right"><span class="header">Email: </span></td>
  <td align="left">
    <span class="header">
    <input type="text" name="em" length="30">
    </span></td>
  <td align="left">&nbsp;</td>
    </tr>
  <tr><td align="right"><span class="header">Web URL: </span></td>
    <td align="left">
      <span class="header">
      <input type="text" name="email" length="30">
      </span></td>
    <td align="left">&nbsp;</td>
  </tr> 
  </table>
</form>
<p><span class="header"><a href="javascript:document.forms.AdForm.submit()">Submit</a> | <a href="javascript:self.close()">Close</a> .

</span></p></div>
 </body>
</html>