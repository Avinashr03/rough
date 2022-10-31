<%-- 
    Document   : LogoutFailed
    Created on : 20-Oct-2022, 4:15:45 am
    Author     : KAAVIASUDHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .center {
                margin: auto;
                width: 60%;
                border: 3px solid #FFB6C1;
                padding: 15px;
                box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
                text-align: center;
              }
        </style>
    </head>
    <body>
        <jsp:include page="nav.jsp" flush="true" />
        <div class="center">
            <h2>Time Out</h2>
            <h4>System Blast Out...</h4>
            <p>Try Again</p>
            <br><br>
            <a href="LoginPage.jsp"><button class="btn">Logout</button></a>
            <p>Logout and try again!</p>
        </center>
    </body>
</html>
