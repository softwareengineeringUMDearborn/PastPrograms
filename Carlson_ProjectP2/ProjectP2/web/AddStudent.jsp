<%-- 
    Document   : AddStudent
    Created on : Nov 19, 2014, 6:06:30 PM
    Author     : Cody
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
    </head>
    <body>
        <h1>Add Student</h1>
    <FORM NAME="AddStu" ACTION="AddStudentCode.jsp" METHOD="POST">
        Name: <input type="text" name="name" value="" /> <br>
        Address: <input type="text" name="address" value="" /> <br>
        Phone: <input type="text" name="phone" value="" /> <br>
        Email: <input type="text" name="email" value="" /> <br>
        Class Status: <input type="text" name="classStatus" value="" /> <br>
        ID: <input type="text" name="id" value="" /> <br>
        <input type="submit" value="Submit" />
        <input type="reset" value="Reset" />
    </body>
</html>
