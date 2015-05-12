<html>
<title>My Africa Vision 2020</title>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_callJS(jsStr) { //v2.0
//alert(jsStr)
var myPlan=document.form1.txtMyAfrica.value;
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
function joinUs(jTxtData){
<?php
$formTxtFile = "joinus.txt";
$fh = fopen($formTxtFile, 'r');
$formTxtData = fread($fh, 5);
fclose($fh);
echo $theData;

?>
jTxtData='<?=$formTxtData ?>';
return jTxtData;
}
function MM_showHideLayers() { //v9.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) 
  with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF3300;
}
.AVHiLights {
	font-size: 10px;
	color: #FF3300;
	font-weight: bold;
}
.AVHeaders {
	font-size: 18px;
	color: #009966;
	font-weight: bold;
}
.AVForms {
	font-size: 11px;
	color: #009966;
	font-weight: bold;
	visibility: visible;
}
#AVFormV {
	position:absolute;
	width:252px;
	height:146px;
	z-index:1;
	left: 11px;
	top: 152px;
	overflow: hidden;
}
-->
</style>
<body>
<H1 ALIGN=center>&nbsp;</H1>
<table width="887" border="0" align="center">
  <tr>
    <td width="256" height="23"><a href="#"> About us</a> | <a href="#">Vision2020</a> | <a href="#" onClick="MM_showHideLayers('AVFormV','','show')">Join us</a></td>
    <td width="440" rowspan="2"><div align="center"><span class="AVHeaders">Support Africa Vision 2020 </span></div></td>
    <td width="177" rowspan="2"><span class="AVHiLights">Date:      
      <?php $todayis = date("F j, Y, g:i a");
 echo $todayis;
 ?>
    </span></td>
  </tr>
  <tr>
    <td height="40">
      <form name="formSearch" method="post" action="search.php"  target="_blank">
        
        <input type="submit" name="button" id="button" value="Search" onClick="return javascript:document.formSearch.submit()">
          <input type="text" name="txtSearch" id="mySearch">
      </form>    </td>
  </tr>
  <tr>
    <td>     <div id="AVFormV" onClick="MM_showHideLayers('bSubmit','','hide')">
    <div id="formAVJoinUs"  class="AVForms">
      <form action="joinavcom.php" method="post" enctype="multipart/form-data" name="formjoinAVNet" target="_self"  ">
         
         <br> Full Name:
         <input name="name" type="text" id="myname" size="31">
		 <br> Email Address:  
		 <input name="email" type="text" id="myemail" size="28">
		 <br> Country:  <input name="country" type="text" id="mystate" size="33">
          <br>
          <input type="submit" name="submitFormAVJoinUs" id="bSubmit" value="Join us" onClick="return javascript:document.formjoinAVNet.submit();MM_showHideLayers('formAVJoinUs','','hide')">
      </form>
      </div>  
      </div>    </td>
    <td><img src="images/AFRICA_MAP.gif" width="440" height="440" border="0" usemap="#Map"  onClick="">
      <map name="Map">
        <area shape="poly" coords="230,397,231,398" href="#">
        <area shape="poly" coords="186,334,233,336,235,360,231,398,212,397,203,386,200,361" href="#" onClick="MM_callJS('Namibia')">
        <area shape="circle" coords="429,357,6" href="#" onClick="MM_callJS('Reunion')">
        <area shape="poly" coords="295,212,313,212,319,226,313,233,311,240,296,238,290,240,286,238" href="#" onClick="MM_callJS('Uganda')">
        <area shape="poly" coords="102,171,117,172,119,184,119,197,110,203,103,204,98,199" href="#" onClick="MM_callJS('Ghana')">
        <area shape="poly" coords="165,202,176,192,183,194,190,181,199,167,197,157,187,156,176,159,163,158,152,154,141,157,136,166,135,174,133,182,131,194,141,194,144,200,151,204" href="#" onClick="MM_callJS('Nigeria')">
        <area shape="poly" coords="123,197,125,187,126,176,121,172,117,169,119,177,119,187" href="#" onClick="MM_callJS('Togo')">
        <area shape="poly" coords="127,199,131,189,133,181,135,172,137,163,132,163,125,168,125,173,126,177,126,186,126,192" href="#" onClick="MM_callJS('Benin')">
        <area shape="poly" coords="285,238,293,240,290,246,285,249,284,242" href="#" onClick="MM_callJS('Rwanda')">
        <area shape="poly" coords="285,249,290,248,293,252,287,257,284,254" href="#" onClick="MM_callJS('Burundi')">
        <area shape="poly" coords="98,201,90,203,82,203,78,205,74,206,74,200,69,196,69,190,71,181,71,176,74,172,84,173,86,175,93,176,99,176,100,182,100,190,98,198" href="#" onClick="MM_callJS('Cote deIvoire')">
        <area shape="poly" coords="275,409,269,405,272,400,278,398,284,404,280,409" href="#" onClick="MM_callJS('Lesotho')">
        <area shape="poly" coords="48,176,54,180,55,189,46,194,44,189,42,184,44,179" href="#" onClick="MM_callJS('Sierra Leone')">
        <area shape="poly" coords="51,193,55,190,58,184,63,189,65,192,70,192,71,196,73,202,74,207,69,206,63,201,60,197,56,197" href="#" onClick="MM_callJS('Liberia')">
        <area shape="poly" coords="101,174,91,174,86,174,86,168,89,163,92,161,100,151,109,148,118,148,120,152,124,159,129,162,129,167,124,172,118,171,109,168,103,170" href="#" onClick="MM_callJS('Burkina Faso')">
        <area shape="poly" coords="174,220,182,221,182,226,173,229,173,225" href="#" onClick="MM_callJS('Equatorial Guinea')">
        <area shape="poly" coords="181,219,192,219,200,220,208,223,210,217,207,213,203,207,201,204,200,199,201,193,205,191,205,186,203,183,198,179,198,177,205,177,202,171,202,165,196,172,193,180,188,187,184,192,183,195,177,194,171,199,166,203,167,205,173,212,175,219" href="#" onClick="MM_callJS('Cameroon')">
        <area shape="poly" coords="184,218,191,219,191,225,197,226,199,230,198,235,202,242,198,247,190,247,184,247,184,252,181,256,176,252,173,246,168,240,168,235,175,229,181,228,185,224" href="#" onClick="MM_callJS('Gabon')">
        <area shape="poly" coords="183,256,185,261,188,265,193,261,201,258,201,261,210,257,213,250,212,246,218,239,219,234,220,226,220,221,222,215,218,212,212,212,212,221,206,221,199,221,192,222,195,227,198,229,200,236,202,241,202,248,193,249,187,248,184,250" href="#" onClick="MM_callJS('Congo')">
        <area shape="poly" coords="54,185,60,185,67,189,70,189,72,179,70,176,70,171,69,166,64,164,58,164,53,162,47,162,42,162,39,162,36,168,31,169,33,173,37,176,42,181,48,178,53,177,55,182" href="#" onClick="MM_callJS('Guinea')">
        <area shape="poly" coords="31,169,37,167,37,163,39,159,33,158,24,155,22,159,27,164" href="#" onClick="MM_callJS('Guinea-Bissau')">
        <area shape="poly" coords="29,153,36,154,39,158,35,160,29,159,24,156" href="#" onClick="MM_callJS('The Gambia')">
        <area shape="poly" coords="38,159,49,160,49,155,48,150,44,143,38,138,34,136,27,136,22,141,22,146,22,152,22,156,33,155" href="#" onClick="MM_callJS('Senegal')">
        <area shape="circle" coords="156,228,6" href="#" onClick="MM_callJS('Sao Tome & Principe')">
        <area shape="poly" coords="233,382,236,387,241,388,245,383,250,380,260,381,265,377,271,372,277,367,282,362,295,363,297,374,298,382,292,382,290,388,294,394,298,392,297,396,292,404,282,402,276,396,270,399,267,405,270,410,278,412,285,407,282,416,273,420,266,424,256,427,244,428,235,430,229,433,222,426,222,421,218,412,213,405,213,399,224,400,231,398,232,392,232,385" href="#" onClick="MM_callJS('South Africa')">
        <area shape="circle" coords="297,385,4" href="#" onClick="MM_callJS('Swaziland')">
        <area shape="poly" coords="236,390,243,387,246,382,255,382,262,382,267,374,276,369,276,362,283,362,276,356,270,350,265,349,263,343,266,339,261,338,253,338,243,337,238,341,233,383" href="#" onClick="MM_callJS('Botswana')">
        <area shape="circle" coords="288,343,17" href="#" onClick="MM_callJS('Zimbabwe')">
        <area shape="poly" coords="267,336,277,329,285,326,289,320,306,315,306,304,308,297,308,293,305,285,297,283,289,283,282,285,278,295,279,303,285,303,287,309,282,309,277,307,272,303,267,302,261,298,254,298,255,304,247,309,244,326,249,333,258,335" href="#" onClick="MM_callJS('Zambia')">
        <area shape="poly" coords="300,380,309,376,317,372,317,363,317,357,314,352,314,347,321,342,327,334,333,331,338,327,347,324,350,318,346,296,339,298,330,300,323,301,318,302,317,307,316,315,322,319,321,327,317,329,313,325,312,319,306,317,299,318,290,320,288,323,296,326,300,327,302,335,303,342,303,351,298,359,296,365,297,371" href="#" onClick="MM_callJS('Mozambique')">
        <area shape="poly" coords="320,328,323,320,319,315,316,311,316,304,316,300,315,294,311,289,308,291,309,298,309,305,308,313,313,315,314,321,315,326" href="#" onClick="MM_callJS('Malawi')">
        <area shape="poly" coords="379,378,386,364,393,344,398,337,398,330,399,324,404,324,402,317,401,309,399,303,393,309,391,315,385,322,375,324,366,329,366,338,372,351,362,356,363,366,363,376,375,378" href="#" onClick="MM_callJS('Madagascar')">
        <area shape="poly" coords="236,344,243,337,248,331,242,325,243,310,251,306,256,299,247,297,244,292,242,283,242,276,233,274,226,277,216,277,213,268,203,268,191,267,191,279,196,292,196,303,189,313,183,326,186,334,192,330,218,334,233,338" href="#" onClick="MM_callJS('Angola')">
        <area shape="poly" coords="189,267,199,261,214,253,213,247,222,238,221,221,224,206,232,206,244,208,255,206,272,204,281,209,290,208,293,215,287,239,282,250,282,263,285,272,289,279,284,287,278,296,280,301,286,308,271,302,259,298,253,298,246,294,245,278,237,273,225,277,214,275,213,267" href="#" onClick="MM_callJS('Zaire')">
        <area shape="poly" coords="318,299,326,299,347,294,340,285,341,274,341,265,341,255,335,253,330,248,321,243,317,240,310,238,310,247,304,250,296,249,296,243,297,238,294,247,292,255,288,259,287,266,290,267,292,276,295,281,303,285,309,289" href="#" onClick="MM_callJS('Tanzania')">
        <area shape="poly" coords="341,258,353,240,351,216,355,210,349,210,343,214,335,211,331,207,325,207,313,207,312,212,316,222,316,232,316,235,317,241" href="#" onClick="MM_callJS('Kenya')">
        <area shape="poly" coords="352,245,361,237,369,227,380,223,386,214,395,202,404,189,406,179,407,168,401,167,393,168,385,172,377,174,370,174,367,171,365,168,365,172,366,179,371,180,380,185,388,186,391,188,385,196,378,203,369,205,362,207,354,209,351,216,354,227" href="#" onClick="MM_callJS('Somalia')">
        <area shape="poly" coords="322,205,330,206,338,212,346,214,355,212,365,208,378,203,381,198,387,191,389,187,382,187,370,183,366,179,362,174,364,170,358,172,355,168,355,165,355,161,349,154,342,151,335,153,330,155,325,157,320,164,317,169,313,175,312,181,309,186,306,187,315,197" href="#" onClick="MM_callJS('Ethiopia')">
        <area shape="circle" coords="361,167,6" href="#" onClick="MM_callJS('Djibouti')">
        <area shape="poly" coords="358,160,365,160,361,156,354,152,349,147,344,142,339,139,338,134,336,130,330,133,327,140,325,145,324,150,324,156,326,157,333,154,343,152,351,153,356,158" href="#" onClick="MM_callJS('Eritrea')">
        <area shape="poly" coords="272,204,268,196,264,189,260,185,252,182,252,175,244,169,234,181,226,181,223,186,215,188,206,188,202,196,200,203,203,211,208,214,212,218,213,213,216,213,220,213,224,206,231,203,236,206,249,206,257,206" href="#" onClick="MM_callJS('Central African Republic')">
        <area shape="poly" coords="82,172,73,172,71,175,72,167,68,165,63,162,45,162,49,159,49,154,47,146,51,143,58,143,89,143,85,131,83,114,84,87,94,87,110,100,120,108,131,117,136,122,148,122,141,128,142,137,137,146,121,146,115,148,106,149,97,152,92,156,87,163" href="#" onClick="MM_callJS('Mali')">
        <area shape="poly" coords="293,212,311,211,314,205,322,205,307,188,316,168,325,155,328,135,334,129,326,121,323,107,316,101,311,107,262,107,259,115,255,120,253,142,246,145,244,160,245,172,252,180,265,188,269,199,280,208" href="#" onClick="MM_callJS('Sudan')">
        <area shape="poly" coords="194,155,178,158,167,160,150,154,140,157,137,163,131,163,118,148,136,146,146,136,142,130,171,103,186,98,196,100,202,101,207,114,206,127,202,139,194,146" href="#" onClick="MM_callJS('Niger')">
        <area shape="poly" coords="235,180,243,172,243,162,246,147,253,141,253,118,211,100,202,101,208,114,207,129,204,140,195,145,194,155,198,159,201,165,203,174,194,177,202,184,206,191" href="#" onClick="MM_callJS('Chad')">
        <area shape="poly" coords="260,107,259,64,255,58,257,50,284,54,293,51,297,55,298,61,317,95,313,104,300,106,291,107" href="#" onClick="MM_callJS('Egypt')">
        <area shape="poly" coords="303,69,309,70,314,63,311,58,306,54,297,54,299,60,304,65" href="#" onClick="MM_callJS('Egypt')">
        <area shape="poly" coords="47,145,51,141,87,142,84,118,84,90,90,87,74,75,73,83,54,83,52,99,47,101,46,109,25,110,24,129,26,134" href="#" onClick="MM_callJS('Mauritania')">
        <area shape="poly" coords="75,74,144,124,170,105,186,98,184,92,173,83,174,75,173,58,162,36,168,23,154,21,137,22,126,25,115,31,116,48,102,50,90,60,78,66" href="#" onClick="MM_callJS('Algeria')">
        <area shape="poly" coords="209,98,255,118,262,111,258,65,254,55,258,51,243,44,232,46,232,52,227,60,212,54,204,45,186,44,179,49,178,56,173,58,175,81,184,94,198,100" href="#" onClick="MM_callJS('Libya')">
        <area shape="poly" coords="175,58,179,48,186,43,177,37,181,21,174,19,166,22,166,34,164,41,171,53" href="#" onClick="MM_callJS('Tunisia')">
        <area shape="circle" coords="106,324,6" href="#" onClick="MM_callJS('St. Helena')">
        <area shape="circle" coords="366,300,5" href="#" onClick="MM_callJS('Comoro Island')">
        <area shape="circle" coords="411,265,5" href="#" onClick="MM_callJS('Seychelles')">
        <area shape="poly" coords="62,74,75,74,79,63,97,57,106,48,116,48,113,32,98,28,93,26,87,39,74,43,70,54,69,64,59,70,53,75" href="#" onClick="MM_callJS('Morocco')">
        <area shape="poly" coords="47,108,47,101,53,98,53,83,70,81,76,74,54,73,44,79,24,108" href="#" onClick="MM_callJS('Western Sahara')">
        <area shape="circle" coords="305,240,10" href="#" onClick="MM_callJS('Lake Victoria')">
        <area shape="circle" coords="438,352,7" href="#" onClick="MM_callJS('Mauritius')">
        <area shape="circle" coords="3,138,4" href="#" onClick="MM_callJS('Cape Verde Island')">
      </map></td>
    <td>
	 
        
    
	<form name="frmCountry" method="post" action="">
      <select name="selMyState" size="1" multiple id="select">
                              </select>
    </form></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<form name="form1" method="post" action="" onClick="alert(document.form1.txtMyAfrica.value)">
  <div align="center">
    <textarea name="txtMyAfrica" cols="52" rows="1" id="txtMyAfrica" 
	style="background-color:#00FF00;text-align:center;background-attachment:fixed; font-size:24px"></textarea>
    <input type="submit" name="Submit" value="Submit">
  </div>
</form>
<H1 ALIGN=center>&nbsp;</H1>
</body>
</html>
