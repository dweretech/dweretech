<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 

<c:if test="${param.submitted}">

<c:if test="${empty param.name}" var="noname" />

<c:if test="${empty param.pw}" var="nopw" />

<c:if test="${empty param.cpw}" var="nocpw" />

<c:if

test="${not (noname or nopw or nocpw or requestScope.takenName)}">

 

 

<c:set value="${param.name}" var="name" scope="request" />

<c:set value="${param.pw}" var="pw" scope="request" />

<c:set value="${param.cpw}" var="cpw" scope="request" />
<jsp:forward page="postregister.jsp"/>
</c:if>
</c:if>
<html>
<head>
</head>

<body bgcolor="CFECEC" >
<form method="post" name="frmRegister">
<input type="hidden" name="submitted" value="true"/>

<script type="text/javascript">
<!--
function add_onclick() {
var TRUE = new Boolean("True")
var FALSE = new Boolean("False")
blnError = FALSE
strError = "The following problems were found in your registration form: \n\n"
if (frmRegister.name.value == "")
{
blnError = TRUE
strError = strError + " - You must provide a Login Name\n"
};
if (frmRegister.pw.value == "")
{
blnError = TRUE
strError = strError + " - You must provide a Password\n"
};
if (frmRegister.cpw.value == "")
{
blnError = TRUE
strError = strError + " - You must confirm your Password\n"
};

if (frmRegister.pw.value != frmRegister.cpw.value)
{
blnError = TRUE
strError = strError + " - Your Password does not match\n"
};

 

if (blnError == TRUE)

{

strError = strError + "\nPlease correct these mistakes and try again."

alert(strError)

}

else

{

frmRegister.submit()

};

 

}

 

//-->

</SCRIPT>

 

 

 

 

<p align="left"><b> Register <hr> </p>
<p align="center"><b>Please complete the following registration form</b> <hr><br><br>

 

 

 

<img src="dmu.jpg" alt="DMU University" align="left">
<img src="dmu.jpg" alt="DMU University" align="right">

 

 

 

<table BORDER="0" ALIGN="CENTER" VALIGN="TOP" CELLPADDING=2 CELLSPACING=0>

<tr>

<td><Strong>Username</strong></td>

<td><input type="text" name="name" value="<c:out value="${param.name}" />"

/>

 

</td>

</tr>

 

 

<tr>

<td><Strong>Password</strong></td>

<td> <input type="password" name="pw" value="<c:out value="${param.pw}"/>"

/>


<tr>

<td><Strong>Confirm password</strong></td>
<td> <input type="password" name="cpw" value="<c:out value="${param.cpw}"/>"

/>

 

<tr><td>&nbsp;</td>

<td><input type="submit" value="register"LANGUAGE=javascript onClick="return add_onclick()" />

</td>

</tr>


</table>

<img src="dmu.jpg" alt="DMU University" align="left">
<img src="dmu.jpg" alt="DMU University" align="right">
</form>

</body>

</html>
