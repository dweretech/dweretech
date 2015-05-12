<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>

<head>
  <title>JSTL: SQL in action </title>
</head>
<body bgcolor="#FFFFFF">
<h1>SQL Update Execution</h1>


<sql:setDataSource

  var="dwtdbresource"
  driver="com.mysql.jdbc.Driver"
  url="jdbc:mysql://172.16.10.12:3306/javatest"
  user="javauser"
  password="javadude"
/>

<hr>

<sql:transaction dataSource="${dwtdbresource}">

<c:if test="${param.flag eq '1'}">

  <sql:update var="droptable">
     drop table dwtloader
  </sql:update>

  <sql:update var="newTable">
    create table dwtloader (

      id int primary key,
      name varchar(80)
    )
  </sql:update>
</c:if>

<h2>Inserting three rows into table</h2>

<sql:update var="oraform">
    INSERT INTO dwtloader VALUES (${param.userid},'${param.username}')
</sql:update>

  <sql:update var="updateCount">
    INSERT INTO dwtloader VALUES (${param.userid+1},'Paul Oakenfold')

  </sql:update>
  <sql:update var="updateCount">
    INSERT INTO dwtloader VALUES (${param.userid+2},'Timo Maas')
  </sql:update>
  <sql:update var="updateCount">
    INSERT INTO dwtloader VALUES (${param.userid+3},'Paul Adam')
  </sql:update>

<p>DONE: Inserting three rows into table</p>



  <sql:query var="dwtflds">
    SELECT * FROM dwtloader
  </sql:query>

</sql:transaction>

<%-- An dwtdbresouce showing how to populate a table --%>
<table border="1">

  <%-- Get the column names for the header of the table --%>
  <c:forEach var="columnName" items="${dwtflds.columnNames}">
    <th><c:out value="${columnName}"/></th>
  </c:forEach>

  <%-- Get the value of each column while iterating over rows --%>
  <c:forEach var="row" items="${dwtflds.rows}">
    <tr>
    <c:forEach var="column" items="${row}">
      <td><c:out value="${column.value}"/></td>
    </c:forEach>

  </tr>
  </c:forEach>
</table>


<h2>Updating first row in table</h2>

  <sql:update var="updateCount" dataSource="${dwtdbresource}">
    UPDATE dwtloader SET name=? <sql:param value="Scott Tiger"/> WHERE id=${param.userid+1}
  </sql:update>
<%-- The Value for sql:param can be obtained from the JSP parameters --%>


<p>DONE: Updating first row in table</p>

<sql:query var="dwtflds" dataSource="${dwtdbresource}">
  SELECT * FROM dwtloader
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


<h2>Deleting second row from table</h2>

  <sql:update var="updateCount" dataSource="${dwtdbresource}">
    DELETE FROM dwtloader WHERE id=${param.userid+2}
  </sql:update>

<p>DONE: Deleting second row from table</p>

<sql:query var="dwtflds" dataSource="${dwtdbresource}">
  SELECT * FROM dwtloader
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

<%-- drop table disabled --

<c:if test="${param.flag eq '1'}">  

<sql:update var="newTable" dataSource="${dwtdbresource}">
  drop table dwtloader
</sql:update>
</c:if>

 --%>

<br>
<a href="index.html">Return Main</a>
<br>
</body>
</html>

