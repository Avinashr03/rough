<%-- 
    Document   : nav
    Created on : 19-Oct-2022, 7:14:44 pm
    Author     : KAAVIASUDHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">Quiz System</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
                <!--<li><a href="${pageContext.request.contextPath}/Index.html">Home</a></li>-->
                <li><a href="${pageContext.request.contextPath}/Register.jsp">Registration</a></li>
                <li><a href="${pageContext.request.contextPath}/feedback-form">Feedback</a></li>
                <li><a href="${pageContext.request.contextPath}/ContactUs.jsp">Contact Us</a></li>
            </ul>
        </div>
    </nav>
</body>
</html>
