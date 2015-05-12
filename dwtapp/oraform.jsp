<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
     prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
    prefix="fn" %>
<html>
<head><title>Welcome!</title></head>
<body>
To register your business card
<form name="myform"  target="_self"  id="OrderFrm">
User email address:
  <input type="text" name="username" size="25">
ID<input type="text" name="userid" value="<%= (int) (300+Math.random() * 100) %>">
<p>
Drop Table:<input type="checkbox" name="flag" value="1">
</p>
<a href="#" onClick="javascript:SaveData('form Reg (Oracle), oraform.jsp')" >Save</a>

</form>

<c:if test="${fn:length(param.username) > 0}" >
  <!-- %@include file="orareg.jsp" %/-->
</c:if>

</body>
</html>
