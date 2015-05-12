<?php session_start();?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Africa Vision 2020</title>
<style type="text/css" >
<!--
@import url("css/avsys.css");

-->
</style>
<script type="text/javascript">
<!--
function MM_callJS(jsStr) { //v2.0
//alert(jsStr)
var myPlan=document.form1.txtMyAfrica.value;
// setup a country to join
document.formjoinAVNet.country.value=jsStr;
document.formjoinAVNet.knownStates.value= document.form1.txtMyAfrica.value;
document.formSearch.txtSearch.value=jsStr;
 

// check for any pre-existing state.
if(myPlan.indexOf( jsStr )==-1){
    if(myPlan.length>0){
       document.form1.txtMyAfrica.value += ","+jsStr ;
	   }
	   else
	   document.form1.txtMyAfrica.value += jsStr ;
	   
}
else
  alert(jsStr + " Exist already");
  
//document.frmCountry.selMyState.text=jsstr
 // return eval(jsStr)
}
 
function ShowMe(){
//alert(' '+document.formjoinAVNet.getElementById['HideMe'].Visibility );
//document.getElementById("HideMe").style.border = "5px dotted black";
}
function MM_showHideLayers() { //v9.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  if (window.XMLHttpRequest) { // Mozilla, Safari, ...
  for (i=0; i<(args.length-2); i+=3) 
  with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
	} else if (window.ActiveXObject) {
	alert('IE');
	}
}

function GoSearch(){

 document.formSearch.submit();
}
//-->
</script>
</head>
<?php
require_once('db/dbinfo.inc'); 
require_once('securedata.php'); 
 $txtSearch=$_POST['txtSearch'];
 $txtunion=$_POST['union'];
 $userid=$_POST['userid'];

//$mystate=$_POST['state'];
//$hostname =$_SERVER['SERVER_NAME'];

/// function to logoff

//-----------------------

 $sessionid = $_SESSION[$userid];
list($challenge,$myname,$mystate,$hostname,$mymembers) = split(";",$sessionid);
  /*
$challenge = $_SESSION[challenge];
$myname = $_SESSION[name];
$hostname = $_SESSION[hostname];
$mystate = $_SESSION[state]; */
//echo '<br>Challenging ...'.$userid.' '.$txtunion.' '.$txtSearch.' val '.$sessionid;//.' my name '.$myname.' my state '.$mystate.' my host '.$hostname;
 echo "<br>";
if(!$txtSearch) {
$URL="/index.php";
header ("Location: $URL");

}  
//$URL ="http://www.google.com/search?client=firefox-a&rls=org.mozilla%3Aen-US%3Aofficial&channel=s&hl=en&q=".$txtSearch."&btnG=Google+Search";
//$URL = "http://www.google.com/search?hl=en&q=".$txtSearch."+&btnG=Google+Search&aq=f&oq=";
$URL ="http://translate.google.com/translate_s?hl=en&q=".$txtSearch."&sl=en&tl=es";

$mysearchfound = file_get_contents($URL);
//Open a stream in READ mode
//$handle = fopen ($URL, "r");

//Read the content of the URL and manipulate it.
//$mysearchfound = str_replace(' ', '%20',fread($handle, 1000000));
//echo "Seaching for ... $URL <br>found <br> ".$mysearchfound;

?>
<body >
<table width="887" border="0" align="center"  bgcolor="#FFFFCC"  >
  <tr >
    <td width="306" height="23" class="AVMenu"  ><p><a href="index.php" target="_self" id="home">Home</a> | <a href="#" class="AVMenu" onclick="mypage.php">You are:
          <?=$myname?></a> | <a href="logout.php" target="_self">Log out</a><br />
    </p></td>
    <td width="390" valign="top"><div align="center"><span class="AVHeaders"> Africa Vision 2020 </span></div></td>
    <td width="177"><span class="ShowMe">Date:
      <?php $todayis = date("F j, Y, g:i a");
 echo $todayis;
 ?>
    </span></td>
  </tr>
  <tr>
    <td height="40">     <form name="formSearch" method="post" action="search.php" target="_self">
        
        <p>
          <input name="button" type="submit" class="AVMenu" id="button" onClick="SearchNow(document.formSearch.txtSearch.value)" value="Search" >
          <input type="text" name="txtSearch" id="mySearch" value="<?=$mystate?>" onChange="return SearchNow(document.formSearch.txtSearch.value)"  onClick="MM_showHideLayers('AVSrch','','show')">
          <br> 
          <span class="AVSrch" id="AVSrch">
          <input name="union" type="radio" value="country"  id="AVSrch2">
          Country 
           |
           <input name="union" type="radio" value="web"  id="AVSrchWeb" >
Web </span></p>
        <input type="hidden" name="userid" id="mySid" value="<?=$challenge?>">
      </form>   </td>
    <td width="390" valign="top"></td>
    <td width="177" class="ShowMe">&nbsp;</td>
  </tr>
</table>
<?php
echo "<hr><br>". $mysearchfound;

?>
</body>
</html>
