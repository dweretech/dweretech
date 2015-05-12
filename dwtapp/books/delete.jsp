<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>


<html>
<head>
<title>Delete</title>
<link rel="stylesheet" href="style.css" type="text/css">
        
</head>
<body>
<%
  Enumeration names = request.getParameterNames();
  while (names.hasMoreElements()) {
      String name = (String) names.nextElement();
      StringBuffer sb = new StringBuffer(name);
      sb.deleteCharAt(0);
      com.zetcode.BooksWorker.Delete(sb.toString());
  }

%>
<br>

<div class="navigator">
<a href="index.jsp">Add</a>
<a id="currenttab" href="delete.jsp">Delete</a>
</div>

<br> <br> <br>

<form action="delete.jsp" method="post">
<table>
<tr>
<th>Author</th>
<th>Title</th>
<th>Year</th>
<th>Remark</th>
</tr> 
<%

  List list = com.zetcode.BooksWorker.GetBooks();
  int id = 0;
  String box = null;

  Iterator<String> it = list.iterator();

  while (it.hasNext()) {
      id = Integer.parseInt(it.next());
      out.print("<tr>");
      for (int i = 0; i < 4; i++) {
          out.print("<td>");
          out.print(it.next());
          out.print("</td>");
  }
  out.print("<td>");
  box = "<input name=r" + id + " type='checkbox'>";
  out.print(box);
  out.print("</td>");
  out.print("</tr>");
 }
%>
 
</table>
 
<br>
<input type="submit" value="Delete">

</form>
 
</body>
</html>