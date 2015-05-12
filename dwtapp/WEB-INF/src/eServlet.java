import java.io.*;
import java.text.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

// servlet code
public class  eServlet extends HttpServlet {
  public void doGet(HttpServletRequest req, HttpServletResponse rsp)
      throws ServletException, IOException {

    rsp.setContentType("text/html");

    String val = req.getParameter("f");
    if(val.equals("test")) {
      // Increment value.
      ++_count;

      // Return value.
      PrintWriter out = rsp.getWriter();
      out.printf("%d eServer\n", _count);
      out.close();

      // This shows up fine in servlet log.
      System.out.printf("%d\n", _count);
    }
  }

  // This variable is incremented and returned on each call to doGet().
  private int _count = 0;
}
