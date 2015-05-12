<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
     prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
    prefix="fn" %>
<html>
<head>

<link href="/css/dwt.css" rel="stylesheet" type="text/css">
</head>
<script src="js/dwtcontent.js" type="text/javascript"> </script>
<body bgcolor="CFECEC" >

<form method="post" name="frmRegister" id="frmRegId">
<input type="hidden" name="submitted" value="true"/>

<p align="left"><a href="index.jsp"><b>[HOME]</b></a><hr> 
<p align="center"><b>Please complete the following registration form</b> <hr><br><br>
<table  class="circular" BORDER="0" ALIGN="CENTER" VALIGN="TOP" CELLPADDING=2 CELLSPACING=0>
<tr>
<td width="167" align="right"><Strong>Email address:</strong></td>
<td width="212"><input type="text" name="name" value="<c:out value="${param.name}" />"
/>
</td>
</tr>
<tr>
<td align="right"><Strong>Password:</strong></td>
<td> <input type="password" name="pw" value="<c:out value="${param.pw}"/>"
/>
<tr>
<td align="right"><Strong>Confirm password:</strong></td>
<td> <input type="password" name="cpw" value="<c:out value="${param.cpw}"/>"

/>

<tr>
<td>&nbsp;</td>
<td><input type="button" value="Register" onClick="javascript:RegisterUser('postregister.jsp, postregister.jsp')">
</td>
</tr>
</table>
</form>
</body>

</html>
