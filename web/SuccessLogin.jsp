<%-- 
    Document   : SuccessSign
    Created on : 19-Oct-2022, 8:15:03 pm
    Author     : KAAVIASUDHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="nav.jsp" flush="true" />
    <center>
        <h2>Successfully Logged-In <%=request.getAttribute("fN") %></h2>
    </center>
        <h1>Hello World!</h1>
    </body>
</html>
