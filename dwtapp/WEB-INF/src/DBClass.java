import java.sql.*;
import java.lang.*;
import java.io.*;

public class DBClass {

public int verifyUser(String username, String password) {
Connection dbconn;
PreparedStatement sql;

try{//try to load the mysql driver

Class.forName("org.gjt.mm.mysql.Driver");

try{
//establish a connection to the database

dbconn=DriverManager.getConnection("jdbc:mysql://localhost/webapps","dwtdba","dwere4u");

Statement statement = dbconn.createStatement();
String query = "SELECT * FROM users WHERE username = " + username;

ResultSet rs;

rs = statement.executeQuery(query);

while(rs.next()){
String dpass = rs.getString("upassword");

if(dpass.equals(password)){
return 1;
}
return -1;
}

}

catch (SQLException s){
return -2;
}
}
catch (ClassNotFoundException err){
return -2;
}
return -2;
}
} 
