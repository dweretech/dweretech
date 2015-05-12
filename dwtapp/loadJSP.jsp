<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.util.ArrayList" language="java" %>  
<%
 String str =request.getParameter("q");
 String lbl="This is JSP string loading from JSP page in ajax, loading time :";
 %>
<c:set var="stArray" value="${fn:split(str, ',')}" />
<c:forEach var="i" items="${stArray}">
<c:out value="${i}" />
</c:forEach>
 <form enctype="multipart/form-data" action="loadJSP.jsp" method="post">
<input type="text" name="q" value="<%=str%>" maxlength="50"  />
<input type="submit" value="submit" />
</form>
<%
if(request.getParameter("text1") !=null)
{
%>

<c:set var="str2" value="${param.text1}"/>
<c:set var="splittedString" value="${fn:split(str2, ',')}" />
String ("${str2}") after splitting : 
<c:forEach var="i" items="${splittedString}">
<c:out value="${i}" />
</c:forEach>
<%
}
%>


