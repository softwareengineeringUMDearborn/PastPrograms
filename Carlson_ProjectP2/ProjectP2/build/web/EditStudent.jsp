<%-- 
    Document   : EditStudent
    Created on : Nov 21, 2014, 5:17:44 PM
    Author     : Cody2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String currentID = (String) session.getAttribute("currentID");
    String currentName = (String) session.getAttribute("currentName");
    String currentAddress = (String) session.getAttribute("currentAddress");
    String currentPhone = (String) session.getAttribute("currentPhone");
    String currentEmail = (String) session.getAttribute("currentEmail");
    String currentStatus = (String) session.getAttribute("currentStatus");
    
    
    
    
    %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    <FORM NAME="EditStu" ACTION="EditStudentCode.jsp" METHOD="POST">
        ID: <%=currentID%> <br>
        Name: <input type="text" name="NAME" value="<%=currentName%>" /> <br>
        Address: <input type="text" name="ADDRESS" value="<%=currentAddress%>" /> <br>
        Phone: <input type="text" name="PHONE" value="<%=currentPhone%>" /> <br>
        Email: <input type="text" name="EMAIL" value="<%=currentEmail%>" /> <br>
        Status: <%=currentStatus%> <br>
        
        <input type="submit" value="Submit" />
        
    </FORM>
    <FORM NAME="back" ACTION="StudentInfo.jsp" METHOD="POST">
        <input type="submit" value="Back" />
    </FORM>
    </body>
</html>
