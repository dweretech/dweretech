<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>

<head>
  <title>User Registration </title>
</head>
<body bgcolor="FFFFFF">

<sql:setDataSource
  var="dwtdbresource"
  driver="oracle.jdbc.driver.OracleDriver"
  url="jdbc:oracle:thin:@192.168.174.4:1521:dwtdb"
  user="www"
  password="dwere4u"
/>

<h2>Thank for registraton!</h2>
<hr>

<sql:transaction dataSource="${dwtdbresource}">

<sql:update var="oraform">
    insert into register(username,passwd,cpasswd) values('${param.name}','${param.pw}','${param.cpw}')
</sql:update>

  <sql:query var="dwtflds">
    SELECT * FROM register where username like '${param.name}'
  </sql:query>

</sql:transaction>



<sql:query var="dwtflds" dataSource="${dwtdbresource}">
  SELECT * FROM register  where username like '${param.name}'
</sql:query>


<%-- Yet another dwtdbresouce showing how to populate a table --%>
<table border="1">
  <c:forEach var="row" items="${dwtflds.rows}" varStatus="status">
    <%-- Get the column names for the header of the table --%>
    <c:choose>
      <c:when test="${status.count == 1}">

        <%-- Each row is a Map object key'd by the column name --%>
        <tr>
        <c:forEach var="metaData" items="${row}">
          <th><c:out value="${metaData.key}"/></th>
        </c:forEach>
        </tr>
      </c:when>
    </c:choose>
    <tr>
    <c:forEach var="column" items="${row}">
      <%-- Get the value of each column while iterating over rows --%>
      <td><c:out value="${column.value}"/></td>
    </c:forEach>
  </tr>

  </c:forEach>
</table>


<br>
<a href="/">Return Main</a>
<br>
</body>
</html>

