<%-- 
    Document   : ContactUs.jsp
    Created on : 20-Oct-2022, 7:04:51 am
    Author     : KAAVIASUDHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box;}

            input[type=text], select, textarea {
              width: 100%;
              padding: 12px;
              border: 1px solid #ccc;
              border-radius: 4px;
              box-sizing: border-box;
              margin-top: 6px;
              margin-bottom: 16px;
              resize: vertical;
            }

            input[type=submit] {
              background-color: #04AA6D;
              color: white;
              padding: 12px 20px;
              border: none;
              border-radius: 4px;
              cursor: pointer;
            }

            input[type=submit]:hover {
              background-color: #45a049;
            }

            .container {
              border-radius: 5px;
              background-color: #f2f2f2;
              padding: 20px;
            }
            </style>
        </head>
        <body>

        <h3>Contact Form</h3>

        <div class="container">
            <form action="ContactServlet" method="GET">
            <label for="fname">First Name</label>
            <input type="text" id="fname" name="firstname" placeholder="Enter your First Name">

            <label for="lname">Last Name</label>
            <input type="text" id="lname" name="lastname" placeholder="Enter your Last Name">

            <label for="country">Country</label>
            <select id="country" name="country">
              <option value="India">India</option>
              <option value="canada">Canada</option>
              <option value="usa">USA</option>
            </select>

            <label for="subject">Subject</label>
            <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

            <input type="submit" value="Submit">
          </form>
        </div>

        </body>
</html>

