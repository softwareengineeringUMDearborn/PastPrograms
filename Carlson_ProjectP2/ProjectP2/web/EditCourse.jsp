<%-- 
    Document   : EditCourse
    Created on : Nov 19, 2014, 10:33:49 PM
    Author     : Cody
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String currentID = (String) session.getAttribute("currentID");
    String currentTitle = (String) session.getAttribute("currentTitle");
    String currentDays = (String) session.getAttribute("currentDays");
    String currentMaxCapacity = (String) session.getAttribute("currentMaxCapacity");
    String currentCredit = (String) session.getAttribute("currentCredit");
    
    
    
    
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    <FORM NAME="EditCour" ACTION="EditCourseCode.jsp" METHOD="POST">
        ID: <input type="text" name="IDZ" value="<%=currentID%>" /> <br>
        Title: <input type="text" name="TITLE" value="<%=currentTitle%>" /> <br>
        Days: <input type="text" name="DAYS" value="<%=currentDays%>" /> <br>
        Max Capacity: <input type="text" name="MAX_CAPACITY" value="<%=currentMaxCapacity%>" /> <br>
        Credit: <input type="text" name="CREDIT" value="<%=currentCredit%>" /> <br>
        <input type="submit" value="Submit" />
        
    </FORM>
    <FORM NAME="back" ACTION="FindCourse.jsp" METHOD="POST">
        <input type="submit" value="Back" />
    </FORM>
    </body>
</html>
