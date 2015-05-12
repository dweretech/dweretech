<%
String name = request.getParameter("name");
String email = request.getParameter("mail");

if((name!=null) && (email!=null) ) 
	{
	 session.setAttribute("theName", name);
	 session.setAttribute("theemail", email);
    }
%>
<html>
<script src="js/dwtcontent.js" type="text/javascript"> </script>
  <body bgcolor="#FFEAF4">
  <p align="left"><a href="index.jsp"><b>[HOME]</b></a><hr> 
    <center>
    Full Name: <%=name%> |Email: <%=email%> <hr>
      <form id="frmAddr">
    <table border="1" cellpadding="0" cellspacing="0" decolor=""#E2FEFD height="30%" width="50%">
        <tr bgcolor="#FBFBFB">
        <td>
        <B>Address1:</B>
        <input type="text" name="Address1" size="30" />
        </td>
        </tr>

        <tr bgcolor="#FBFBFB">
        <td><B>Address2:</B>
        <input type="text" name="Address2"  size="30" /></td>
        </tr>

        <tr bgcolor="#FBFBFB">
        <td align="center"><B>City:</B>
          <input name="city" type="text" size="30" /> 
          State:
          <input name="state" type="text" id="state" size="2" /> 
          Zip: 
          <input name="zipcode" type="text" id="zipcode" value="" size="9" /></td>
        </tr>

        <tr bgcolor="#FBFBFB">
        <td><input type="button" value="NEXT" onClick="javascript:GetAddr('Register,description.jsp')"/></td>
        </tr>
        
    </table>
     </form>
   </center>
  </body>
</html>