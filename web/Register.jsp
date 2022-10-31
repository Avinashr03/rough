<%-- 
    Document   : Register
    Created on : 19-Oct-2022, 6:26:43 pm
    Author     : KAAVIASUDHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Register</title>
    <style>
        .center{
            margin: auto;
            width: 50%;
            border: 3px solid green;
            padding: 10px;
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        }
    </style>
    </head>
    <body>
        <jsp:include page="nav.jsp" flush="true" />
        <div class="center">
            <form id="form1" action="NewController" method="GET">
                <h2 style="text-align:center">Login</h2>
                <table align="center">
                    <tr>
                    <td>Username: </td>
                    <td>&nbsp;&nbsp;&nbsp;<input type="text" name="username" required/></td>
                    </tr>
                    <tr>
                    <td>Password: </td>
                    <td>&nbsp;&nbsp;&nbsp;<input type="password" name="password" required/></td>
                    </tr>
                    <tr> 
                    <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
                    </tr>
                    <tr>
                    <td></td>
                    <td>
                        <br>
                        <input class="btn" type="submit" value="Login">
                        <input class="btn" type="reset" value="Reset">
                    </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
