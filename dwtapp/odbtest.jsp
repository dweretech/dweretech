<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<body>
<sql:setDataSource
var = "db"
driver = "oracle.jdbc.driver.OracleDriver"
url = "jdbc:oracle:thin:@oracle.<uni-name>:1522:ugdb11"
user = "www"
password = "dwere4u"/>

<sql:query var="allBooks" dataSource="${db}">
select * from books
</sql:query> 
</body>
</html>
