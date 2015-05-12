<%@ page import= "java.io.*" %>
<%@ page import= "java.lang.*" %>
<%@ page import= "java.sql.statement*" %>
<p ALIGN=Center>
<center>
<h1>DAILY SYSTEM MONITORING</h1>
</center>
<%
try {
// load the JDBC driver
String drivers = "sun.jdbc.odbc.JdbcOdbcDriver";
Class.forName(drivers);

String database = "jdbc:odbc:localhost:3306/webapps";

// Get a database connection
con = DriverManager.getConnection(database);

// Get a Statement object
stmt = con.createStatement();

// Display List of books that match the user's input
rs = stmt.executeQuery("SELECT * FROM users");

%>
<p>PRODUCT
<select NAME="Product">
<option VALUE="SPDM"> SPDM
<option VALUE="CPCEX"> CPCEX
<option VALUE="KMS"> KMS
<option VALUE="KMS"> SIMS
</select>
</p>


<p>FromDate
<select NAME="DATE">
<option VALUE="SPDM"> SPDM
</select>
</p>
<p>ToDate
<select NAME="DATE">
<option VALUE="SPDM"> SPDM
</select>
</p>

<table border="1">
<tr>
<th>Product</th>
<th>Scenario</th>
<th>Response Time</th>
<th>CPU_SYSTEM</th>
<th>MEM_SYSTEM</th>
<th>CPU_JVM</th>
<th>MEM_JVM</th>
<th>COncurrent</th>
</tr>
<%
while (rs.next()) {
%>

<tr>
<td><%= rs.fields(0) %></td>
<td><%= rs.fields(1) %></td>
<td><%= rs.fields(2) %></td>
<td><%= rs.fields(3) %></td>
<td><%= rs.fields(4) %></td>
<td><%= rs.fields(5) %></td>
<td><%= rs.fields(6) %></td>
<td><%= rs.fields(7) %></td>
</tr>
<% } %>
<&
stmt.close();
con.close();
rs.close();
%>
</table>

<p>
<input TYPE="submit" NAME="Request" VALUE="Submit">
<input TYPE="reset" NAME="Clear" VALUE="Cancel">
</p> 
</body>
</html>
