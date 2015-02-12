<%-- 
    Document   : StudentInfo
    Created on : Nov 21, 2014, 5:06:32 PM
    Author     : Cody2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="Connect.ConnectionFactory"%>
<!DOCTYPE html>

<%
    String email = (String) session.getAttribute("userEmail");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_db", "root", "");
    

                
    
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from student where email_address='" + email + "'");
    
    if (!rs.next()) {
        response.sendRedirect("StudentPage.jsp");
    }
    else{
        String currentName = rs.getString(1);
        String currentAddress = rs.getString(2);
        String currentPhone = rs.getString(3);
        String currentEmail = rs.getString(4);
        String currentStatus = rs.getString(5);
        String currentID = rs.getString(6);
        
        session.setAttribute("currentID", currentID);
        session.setAttribute("currentName", currentName);
        session.setAttribute("currentAddress", currentAddress);
        session.setAttribute("currentPhone", currentPhone);
        session.setAttribute("currentEmail", currentEmail);
        session.setAttribute("currentStatus", currentStatus);
    
        
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Information</title>
    </head>
    <body>
        
        ID: <%=  currentID%> <br>
        Name: <%=  currentName%> <br>
        Address: <%=  currentAddress%> <br>
        Phone: <%=  currentPhone%> <br>
        Email: <%=  currentEmail%> <br>
        Status: <%=  currentStatus%> <br>
        
    <FORM NAME="editS" ACTION="EditStudent.jsp" METHOD="POST">
        <input type="submit" value="Edit" />
    </FORM>
    <FORM NAME="back" ACTION="StudentPage.jsp" METHOD="POST">
        <input type="submit" value="Back" />
    </FORM>
        <%  }
%>
    </body>
</html>
