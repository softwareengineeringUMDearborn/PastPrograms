<%-- 
    Document   : StartPage
    Created on : Nov 17, 2014, 11:09:43 PM
    Author     : Cody
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        Login<br>
        <FORM NAME="form1" ACTION="LoginCode.jsp" METHOD="POST">
            Email
            <input type="text" name="Email" value="" />
            <br>
            <INPUT TYPE="radio" name="title" value="student">Student  <br>
            <INPUT TYPE="radio" name="title" value="faculty">Faculty  <br>
            <INPUT TYPE="radio" name="title" value="staff">Staff  <br>
            <input type="submit" value="Submit" />
    </body>
</html>
