<%@page import="java.io.*"%>
<table>
<%
File f = new File("/usr/local/tomcat/webapps/data");
File[] files = f.listFiles();
for(int i=0;i<files.length;i++){
String name=files[i].getName();
String path=files[i].getPath();
%>
<tr><td><a href="#" ><%=name%></a></td><td><a href="#"><%=path%></a></td></tr>
<%
}
%>
</table>
