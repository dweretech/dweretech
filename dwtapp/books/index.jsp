<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Books database</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>

<br>

<div class="navigator">
<a id="currenttab" href="index.jsp">Add</a>
<a href="delete.jsp">Delete</a>
</div>
<%
  String author = request.getParameter("author");
  String title = request.getParameter("title");
  String year = request.getParameter("year");
  String remark = request.getParameter("remark");
  if (author != null && title != null 
          && year != null && remark!= null) {
      com.zetcode.BooksWorker.Insert(author, title, year, remark);
  }
%>

<br> <br> <br>

<form method="post" action="index.jsp">
<table>
<tr>    
<td>Author</td><td><input type="text" name="author"></td>
</tr>
<tr>
<td>Title</td><td><input type="text" name="title"></td>
</tr>
<tr>
<td>Year</td><td> <input type="text" name="year"></td>
</tr>
<tr>
<td>Remark</td><td> <input type="text" name="remark"></td>
</tr>
</table>

<br>
<input type="submit" value="submit">
</form>
</body>
</html>