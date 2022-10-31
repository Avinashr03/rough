<%-- 
    Document   : LoginPage
    Created on : 19-Oct-2022, 6:19:00 pm
    Author     : KAAVIASUDHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            .container{
                background: rgba( 125, 179, 248, 0.5 );
                box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
                backdrop-filter: blur( 4.5px );
                -webkit-backdrop-filter: blur( 4.5px );
                border-radius: 10px;
                border: 1px solid rgba( 255, 255, 255, 0.18 );
            }
            
            input[type=submit]{
                    background-color: #FF69B4; /* Green */
                    border: none;
                    color: white;
                    padding: 10px 30px;
                    text-align: center;
                    text-decoration: none;
                    display: inline-block;
                    font-size: 16px;
                    margin: 4px 2px;
                    transition-duration: 0.4s;
                    cursor: pointer;
            }
            .button2:hover{
                    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
            }
            
            input[type=reset], button{
                    background-color: #FF69B4; /* Green */
                    border: none;
                    color: white;
                    padding: 10px 30px;
                    text-align: center;
                    text-decoration: none;
                    display: inline-block;
                    font-size: 16px;
                    margin: 4px 2px;
                    transition-duration: 0.4s;
                    cursor: pointer;
            }
            .button2:hover{
                    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
            }
            
            
        </style>
        <script> 
            function validate()
            { 
                 var username = document.form.username.value; 
                 var password = document.form.password.value;

                 if (username==null || username=="")
                 { 
                 alert("Username cannot be blank"); 
                 return false; 
                 }
                 else if(password==null || password=="")
                 { 
                 alert("Password cannot be blank"); 
                 return false; 
                 } 
            }
        </script> 
    </head>
    <body style="background-image: url('https://i.postimg.cc/q7vVkKp5/bg-img.jpg'); background-repeat: no-repeat; background-size: 100%;">
        <jsp:include page="nav.jsp" flush="true" />
        <br><br><br>
        <div class="container">
            <div style="text-align:center"><h1><b>QUIZ SYSTEM</b></h1></div>
            <br>
            <form name="form" action="Signincontroller" method="post" onsubmit="return validate()">

                <table align="center">
                    <tr>
                    <td>Username: </td>
                    <td>&nbsp;&nbsp;&nbsp;<input type="text" name="username" placeholder="Enter Username" /></td>
                    </tr>
                    <tr>
                    <td>Password: </td>
                    <td>&nbsp;&nbsp;&nbsp;<input type="password" name="password" placeholder="Enter Password"/></td>
                    </tr>
                    <tr> 
                    <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
                    : request.getAttribute("errMessage")%></span></td>
                    </tr>
                    <tr></tr>
                    <tr>
                    <td></td>
                    <td>
                        <input type="submit" class="button2" value="Login">
                        <input type="reset" class="button2" value="Reset">
                    </td>
                    </tr>
                </table>
            </form>
         <br><br><br><br>
         <center><a href="Register.jsp"><button class="button button2">Register as a new User</button><br><br>
            </div>
    </body>
</html>

