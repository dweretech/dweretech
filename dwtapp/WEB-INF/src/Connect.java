import java.sql.*;
import java.io.*;
import java.text.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class  Connect extends HttpServlet {
  public void doGet(HttpServletRequest req, HttpServletResponse rsp)
      throws ServletException, IOException {

           rsp.setContentType("text/html");
 	   String val = req.getParameter("f");

           Connection conn = null;
	   PrintWriter out = rsp.getWriter();

 	   out.println ("<br>DWT DB Connection..."+val+"<br>");
           try
           {
               String userName = "dwtdba";
               String password = "dwere4u";
               //String url = "jdbc:mysql://localhost:3306/webapps";

               String url = "jdbc:mysql://localhost:3306/webapps?user="
                   + userName
                   + "&password="
                   + password;
   	       Class.forName ("com.mysql.jdbc.Driver").newInstance ();
   	       conn = DriverManager.getConnection (url);


               System.out.println ("Database connection established");
           }
           catch (Exception e)
           {
               out.println ("Cannot connect to database server");
           }
           finally
           {
               if (conn != null)
               {
                   try
                   {
                       conn.close ();
                       out.println ("Database connection terminated");
                   }
                   catch (Exception e) { /* ignore close errors */ }
               }
           }
       }
   }

