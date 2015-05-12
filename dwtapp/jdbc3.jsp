<%@ page
import = "java.io.*, java.lang.*, java.sql.*"
%>

<jsp:useBean id="user" class="DBClass" scope="session"/>
<jsp:setProperty name="user" property="*"/>

<HTML>
<HEAD><TITLE>BookWorms - Authenticating...</TITLE></HEAD>
<BODY>

<%
DBClass dbinstance;
int status = 0;
status = dbinstance.verifyUser(user.getUsername(),
user.getUpassword());

if(status == 1){
out.println("you have logged in successfully\n");
}else if(status == -1){
out.println("login info invalid\n");
}else if(status == -2){
out.println("there was an unknown error during login,
try again\n");

}
%> 
