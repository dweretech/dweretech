<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
     prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
    prefix="fn" %>
<html>
<head><title>Dwere User Form Test</title></head>
<body>
<form name="myform">
User ID:
<input type="text" name="username" size="25">
<input type="text" name="userid" value="<%= (int) (300+Math.random() * 100) %>">
<p></p>
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</form>

<c:if test="${fn:length(param.username) > 0}" >
<!--  <%@include file="orareg.jsp" %> /-->
${fn:length(param.username)}
${fn:length(param.userid)}
</c:if>
<a href="/">Home</a>
</body>
</html>
