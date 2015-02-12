<%-- 
    Document   : AddCourse
    Created on : Nov 19, 2014, 7:34:32 PM
    Author     : Cody
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course</title>
    </head>
    <body>
        <h1>Add Course</h1>
    <FORM NAME="AddCou" ACTION="AddCourseCode.jsp" METHOD="POST">
        ID: <input type="text" name="id" value="" /> <br>
        Title: <input type="text" name="title" value="" /> <br>
        Days: <input type="text" name="days" value="" /> <br>
        Capacity: <input type="text" name="capacity" value="" /> <br>
        Credit: <input type="text" name="credit" value="" /> <br>
        
        
        <input type="submit" value="Submit" />
        <input type="reset" value="Reset" />
    </body>
</html>
