import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;

public class RegisterAction extends HttpServlet
{
public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
{
resp.setContentType("text/html");
PrintWriter out = resp.getWriter();
out.write("Hello");
System.out.println("inside RegisterAction Servlet");
}
}

