<htm>
<body bgcolor="#FFFFFF">
<hr>
<%

        out.println("Name : " + (String)session.getAttribute("theName") + "<br/>");
        out.println("Email ID: " + (String)session.getAttribute("theemail") + "<br/>");
        out.println("Address1: " + (String)session.getAttribute("address1") + "<br/>");
        out.println("Address2: " + (String)session.getAttribute("address2") + "<br/>");
        out.println("City: " + (String)session.getAttribute("city") + "<br/>");
		out.println("State: " + (String)session.getAttribute("state") + "<br/>");
		out.println("Zip Code: " + (String)session.getAttribute("zipcode") + "<br/>");
        out.println("description: " + (String)session.getAttribute("description") + "<br/>");
%>
</body>
</html>