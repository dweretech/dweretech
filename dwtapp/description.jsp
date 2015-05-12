<%
  String address1 = request.getParameter("Address1");
     session.setAttribute("address1", address1);
  String address2 = request.getParameter("Address2");
     session.setAttribute("address2", address2);
  String city = request.getParameter("city");
     session.setAttribute("city", city);
  String state = request.getParameter("state");
     session.setAttribute("state", state);
  String zipcode = request.getParameter("zipcode");
     session.setAttribute("zipcode", zipcode);
     %>
 <html>
 <script src="js/dwtcontent.js" type="text/javascript"> </script>
  <body bgcolor="#FFFFFF">
  Welcome <%=session.getAttribute("theName")%>!
  Address1: <%=address1%> <br />
  Address2: <%=address2%> |City: <%=city%> | State: <%=state%> | Zip Code: <%=zipcode%>
  <hr>
  <form id="frmResult"  >
  <table width="50%" height="30%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr bgcolor="#FBFBFB">
      <td align="center"><B>Description:</B><br><textarea name="description" rows="12"  
      cols="50"colspan="2"></textarea>
      </td>
      </tr>
      <tr bgcolor="#FBFBFB">
      <td colspan="2"><input type="button" value="Finished" onclick="javascript:GetResult('Register,result.jsp')" /></td>
      </tr>
</table>
</form>
</body>
</html>