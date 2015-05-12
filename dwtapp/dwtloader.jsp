<%@ page import="java.util.*" %>
<html>
<head>
<title>Sample Application JSP Page</title>
</head>
<body bgcolor=white>

<table border="1" width="50%" align="center">
<tr>
<td align=center>
<img src="images/dwt-logo.gif">
</td>
<td>
<h1>Dwere Application JSP Page</h1>
This is the output of a JSP page that is part of the Dwere Enterprise
application.  It displays several useful values from the request
we are currently processing.
<%!
    Date theDate = new Date();
    Date getDate()
    {
        System.out.println( "In getDate() method" );
        return theDate;
    }
%>
<br> The time is now: <%= getDate() %>

</td>
</tr>

<tr>
  <th align="right">Context Path:</th>
  <td align="left"><%= request.getContextPath() %></td>
</tr>
<tr>
  <th align="right">Path Information:</th>
  <td align="left"><%= request.getPathInfo() %></td>
</tr>
<tr>
  <th align="right">Query String:</th>
  <td align="left"><%= request.getQueryString() %></td>
</tr>
<tr>
  <th align="right">Request Method:</th>
  <td align="left"><%= request.getMethod() %></td>
</tr>
<tr>
  <th align="right">Servlet Path:</th>
  <td align="left"><%= request.getServletPath() %></td>
</tr>
<tr>
  <th align="right">Options:</th>
  <td align="left"><a href="/dwtloader">Main</a></td>
</tr>

</table>
</body>
</html>
