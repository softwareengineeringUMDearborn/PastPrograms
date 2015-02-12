<%-- 
    Document   : AddFaculty
    Created on : Nov 19, 2014, 7:12:46 PM
    Author     : Cody
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Faculty</title>
    </head>
    <body>
        <h1>Add Faculty</h1>
        <FORM NAME="AddFac" ACTION="AddFacultyCode.jsp" METHOD="POST">
        
        Name: <input type="text" name="name" value="" /> <br>
        Address: <input type="text" name="address" value="" /> <br>
        Phone: <input type="text" name="phone" value="" /> <br>
        Email: <input type="text" name="email" value="" /> <br>
        Office: <input type="text" name="office" value="" /> <br>
        Salary: <input type="text" name="salary" value="" /> <br>
        Hire Date: <input type="text" name="hire" value="" /> <br>
        Office Hours: <input type="text" name="hours" value="" /> <br>
        Rank: <input type="text" name="rank" value="" /> <br>
        ID: <input type="text" name="id" value="" /> <br>
        
        <input type="submit" value="Submit" />
        <input type="reset" value="Reset" />
    </body>
</html>
