<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
  <head>
     <title> A first JSP database </title>
  </head>
  <body>
<sql:setDataSource scope="session" var="dataSource"
    url="jdbc:mysql://172.16.10.12/javatest" driver="com.mysql.jdbc.Driver"
    user="javauser" password="javadude"/>

<!-- The following UPDATE works fine.. -->
<sql:update var="users" dataSource="${dataSource}" scope="session">
    INSERT INTO testdata VALUES (null,'Kitara Lagony',343)
</sql:update>

<!-- But the select screws up.... -->
<sql:query var="foo" dataSource="${dataSource}" scope="session">
    SELECT * FROM testdata WHERE 1
</sql:query>
</body>
</html>
