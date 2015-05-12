<html>
<head>
<title>Dwere Enterprise Application</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<script src="js/uploadfile.js" type="text/javascript"></script>
<script src="js/poll.js" type="text/javascript"></script>
<script src="js/dwtloader.js" type="text/javascript"></script>
<script src="js/loadxmldoc.js" type="text/javascript"> </script>
<script src="js/dwtcontent.js" type="text/javascript"> </script>

<script type="text/javascript">
	setInterval("swapImage()",1800);
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK REL="SHORTCUT ICON" HREF="images/dwt-logo.ico">
<link href="css/dwt.css" rel="stylesheet" type="text/css" />

<body  >

<%@ include file="header.jsp"%>
<table  width="88%" border="0"  align="center" cellpadding="5" cellspacing="4">

<tr height="10">
<td width="66%" rowspan="2" valign="top">
  
    <%@include file="iday.jsp" %>
  
  <div id="ShowDealsToday" style="background-color:FC0; margin:auto; color:F00">
  Daily Deals!</div>
 <div id="DisplayStage" align="left" style="border-color:#0033FF" >
 Content Here
 </div>
<p>&nbsp;</p>
   <p>&nbsp;</p>
  </td>
<td width="46%" height="378" valign="top" bgcolor="#78CCE4">
 
  <div id="MyPage" >
  <p>BUSINESS LISTING:
  <p>Free web site -<a href="#"> Click here</a>.
    
    <li><a href="#" onClick="javascript:loadContent('Login,login.jsp')">Login</a>
    <li><a href="#" onClick="javascript:loadContent('Servlet , dwtloader.jsp')">servlet</a>
    <li><a href="#"  onMouseOver="javascript:loadContent('MySQL , loadJSP.jsp')">MySQL DB Test</a>
    <li><a href="#" onMouseOver="javascript:loadContent('Oracle DB Test, dwtoracle.jsp')">Oracle DB Test</a><li><a href="#" onClick="javascript:loadContent('Register,register.jsp')">Register</a>.
  <li><a href="myjstl.jsp" onMouseOver="javascript:loadContent('parameterValue,loadJSP.jsp')">Java Servlet Tag (jstl)</a>.
  <li><a href="eservlet.html" onMouseOver="javascript:loadContent('Java Servlet Ajax Test, loadJSP.jsp')">Java Servlet Ajax Test</a>.
  <li><a href="mysqlform.jsp"  onMouseOver="javascript:loadContent('Connectivity, loadJSP.jsp')">Connectivity form Reg (Mysql)</a>.
  <li><a href="#" OnClick="javascript:SaveData('form Reg (Oracle), oraform.jsp')">Connectivity form Reg (Oracle)</a>.
  <li><a href="dwtfile.jsp" onMouseOver="javascript:loadContent('parameterValue','loadJSP.jsp')">File Upload</a>.
  <li><a href="#" onMouseOver="javascript:loadContent('parameterValue','loadJSP.jsp')">Java System Tool</a>.
  <li><a href="" onMouseOver="javascript:loadContent('parameterValue','upload.jsp')">Upload file DB</a>
  <li><a href="" onMouseOver="javascript:loadContent('parameterValue','dwtajx.jsp')">Simple Ajax</a>
 </div>   
</td>
</tr>
<tr>
  <td><div id='ajaxDiv'>Other Links:<a href="http://www.addthis.com/bookmark.php?v=20" onMouseOver="return addthis_open(this, '', '[URL]', '[TITLE]')" onMouseOut="addthis_close()" onClick="return addthis_sendto()"><img src="http://s7.addthis.com/static/btn/lg-share-en.gif" alt="Bookmark and Share" style="border: 0pt none;" height="16" width="125"></a> |</div>
    Your Services, Our committment to serve!</td>
  </tr>
</table>
</body>
</html>
