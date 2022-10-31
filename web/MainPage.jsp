<%-- 
    Document   : MainPage
    Created on : 19-Oct-2022, 6:26:08 pm
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
    <center>
        <jsp:include page="nav.jsp" flush="true" />
        <h1>QUIZ SYSTEM Info</h1>
    </center>
        
        <div class=""></div>
        
        <h3>Rules and Regulations: - Quiz Competition:</h3>
            <ol>
                <li>Only Single participation is allowed.</li>
                <li>The medium of the questions will be only English.</li>
                <li>All the participants can play all the rounds.</li>
                <li>On the average score derives from all the round question, winners will be declared.</li>
                <li>There will be On <b>Screen time</b> span.</li>
            </ol>
            
        <h5>All the Best for this Exam.</h5>
        
        <center>

                <a href="Quizform.jsp"><button class="btn">Start the Quiz</button></a>
                <a href="View"><button class="btn">View Score Detail</button></a>
                <a href="LoginPage.jsp"><button class="btn">Logout</button></a>
            <!--</form>-->
            </center>
    </center>
    </body>
</html>
