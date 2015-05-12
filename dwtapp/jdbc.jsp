<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String username=request.getParameter("uid");
System.out.println(username);
String password=request.getParameter("upwd");
System.out.println(password);
if (username!=null && !username.equals(" ")){
try{
/* Connect to MySQL DataBase */
System.out.println("enter if username!=null && !username.equals");
Class.forName("org.gjt.mm.mysql.Driver");
Connection conn=DriverManager.getConnection
("jdbc:mysql://127.0.0.1:3306/webapps","dwtdba","dwere4u");
Statement stmt=conn.createStatement();
String sql = "select from users where username='" username "'";
sql =" and password='"+password "'";
ResultSet rs=stmt.executeQuery(sql);
%>
</body>
</html>
