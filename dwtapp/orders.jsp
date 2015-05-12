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
  driver="oracle.jdbc.driver.OracleDriver"
  url="jdbc:oracle:thin:@192.168.174.4:1521:dwtdb"
  user="www"
  password="dwere4u"
 
/>


<hr>

<sql:transaction dataSource="${dwtdbresource}">

  <sql:update var="dropTable">
   BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE mytable';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;

  </sql:update>

  <sql:update var="newTable">
    create table mytable (

      nameid int primary key,
      name varchar(80)
    )
  </sql:update>

<h2>Inserting three rows into table</h2>
  <sql:update var="updateCount">
    INSERT INTO mytable VALUES (1,'Paul Oakenfold')

  </sql:update>
  <sql:update var="updateCount">
    INSERT INTO mytable VALUES (2,'Timo Maas')
  </sql:update>
  <sql:update var="updateCount">
    INSERT INTO mytable VALUES (3,'Paul Adam')
  </sql:update>

<p>DONE: Inserting three rows into table</p>

  <sql:query var="deejays">
    SELECT * FROM mytable
  </sql:query>

</sql:transaction>

<%-- An dwtdbresource showing how to populate a table --%>
<table border="1">

  <%-- Get the column names for the header of the table --%>
  <c:forEach var="columnName" items="${deejays.columnNames}">
    <th><c:out value="${columnName}"/></th>
  </c:forEach>

  <%-- Get the value of each column while iterating over rows --%>
  <c:forEach var="row" items="${deejays.rows}">
    <tr>
    <c:forEach var="column" items="${row}">
      <td><c:out value="${column.value}"/></td>
    </c:forEach>

  </tr>
  </c:forEach>
</table>


<h2>Updating first row in table</h2>

  <sql:update var="updateCount" dataSource="${dwtdbresource}">
    UPDATE mytable SET name=? <sql:param value="Scott Tiger"/> WHERE nameid=1
  </sql:update>
<%-- The Value for sql:param can be obtained from the JSP parameters --%>


<p>DONE: Updating first row in table</p>

<sql:query var="deejays" dataSource="${dwtdbresource}">
  SELECT * FROM mytable
</sql:query>


<%-- Yet another dwtdbresource showing how to populate a table --%>
<table border="1">
  <c:forEach var="row" items="${deejays.rows}" varStatus="status">
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
    DELETE FROM mytable WHERE nameid=2
  </sql:update>

<p>DONE: Deleting second row from table</p>

<sql:query var="deejays" dataSource="${dwtdbresource}">
  SELECT * FROM mytable
</sql:query>



<%-- Yet another dwtdbresource showing how to populate a table --%>
<table border="1">
  <c:forEach var="row" items="${deejays.rows}" varStatus="status">
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

<%-- drop table disabled --%>
<sql:update var="newTable" dataSource="${dwtdbresource}">
  drop table mytable
</sql:update>

</body>
</html>

