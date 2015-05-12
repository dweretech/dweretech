<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.util.*, java.util.Calendar" %>
<html>
<head>
  <title>My Page <%=request.getParameter( "ssID" )%> </title>
</head>
<body bgcolor="#FFFFFF">
<%
   String name = request.getParameter( "username" );
   String pass = request.getParameter( "passwd" );
   String ssID = request.getParameter( "ssID" );
   session.setAttribute( "", ssID );
      // Get session creation time.
   Date createTime = new Date(session.getCreationTime());
   // Get last access time of this web page.
   Date lastAccessTime = new Date(session.getLastAccessedTime());

   String title = "Welcome Back to my website! <br> <img  src=\"dwt-dMug.GIF\"></a>";
   Integer visitCount = new Integer(0);
   String visitCountKey = new String("visitCount");
   String userIDKey = new String(name);
   String userID = new String(name);

   // Check if this is new comer on your web page.
  
   if (session.isNew()){
      title = "Welcome to my website";
      session.setAttribute(userIDKey, userID);
      session.setAttribute(visitCountKey,  visitCount);
   } 
%>
<h1>Welcome <%=name%>! Session: <%=ssID%></h1>

<sql:setDataSource
  var="dwtdbresource"
  driver="oracle.jdbc.driver.OracleDriver"
  url="jdbc:oracle:thin:@192.168.174.4:1521:dwtdb"
  user="www"
  password="dwere4u"
/>

<hr>

<sql:transaction dataSource="${dwtdbresource}">
  
  <sql:query var="getUser">
    SELECT id,username,fullname,email,age,passwd FROM register where username like '${param.username}' and passwd like '${param.passwd}' 
  </sql:query>

</sql:transaction>

<%-- Yet another dwtdbresource showing how to populate a table --%>
<table border="1">
<tr>
<td  colspan="5" > <%
out.println("<br>Id:"+ session.getId());
out.println("<br>User Id:"+userID); 
out.println("<br>Time Created: "+ createTime);
out.println("<br>Last Access:"+lastAccessTime);

%>
        </td>
</tr>
<tr>
   <th>Emp ID</th>
   <th>Full Name</th>
   <th>Email</th>
   <th>Age</th>
   <th><a href="#" onClick="javascript:alert('Show Seesion Details \r' + '<%=session.getId()%>' + '<%=userID%>')">Show session details</a></th>
</tr>
  <c:forEach var="row" items="${getUser.rows}" varStatus="status">
    <%-- Get the column names for the header of the table --%>
 <tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.fullname}"/>
   </td>
   <td><c:out value="${row.email}"/></td>
   <td><c:out value="${row.age}"/></td>
   <td>*</td>
</tr>

  </c:forEach>
 
</table>
 
</body>
</html>
