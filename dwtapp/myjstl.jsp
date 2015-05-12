<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>JSP is Easy</title>
  </head>
  <body bgcolor="white">
    <h1>JSP is as easy as ...</h1>
    <%-- Calculate the sum of 1 + 2 + 3 dynamically --%>
    1 + 2 + 3 = <c:out value="${1 + 2 + 3}" />

<sql:setDataSource

  var="dwtdbresource"
  driver="com.mysql.jdbc.Driver"
  url="jdbc:mysql://172.16.10.12:3306/javatest"
  user="javauser"
  password="javadude"
/>

<sql:query var="rs" dataSource="${dwtdbresource}">
  select * from testdata;
</sql:query>

<h2>Results</h2>
    <c:forEach var="i" items="${rs.rows}">
       <c:out value="${i.foo}"/> <c:out value="${i.bar}"/><br>
    </c:forEach>
  </body>
</html>
