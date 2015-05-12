<%
   String description = request.getParameter("description");
      session.setAttribute("description", description);
      out.println("Thanks for completing the wizard.");
   
%>
<html>
<script src="js/dwtcontent.js" type="text/javascript"> </script>
<body>

      Please, <a href="#" onclick="javascript:alert('Display Results?')">click here </a>for showing details.
      <%@include file="information.jsp" %>
       
</body>
</html>