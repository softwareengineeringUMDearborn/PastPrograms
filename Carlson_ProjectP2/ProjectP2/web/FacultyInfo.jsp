<%-- 
    Document   : FacultyInfo
    Created on : Nov 21, 2014, 6:07:38 PM
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
    rs = st.executeQuery("select * from faculty where email_address='" + email + "'");
    
    if (!rs.next()) {
        response.sendRedirect("FacultyPage.jsp");
    }
    else{
        String currentID = rs.getString(1);
        String currentName = rs.getString(2);
        String currentAddress = rs.getString(3);
        String currentPhone = rs.getString(4);
        String currentEmail = rs.getString(5);
        String currentOffice = rs.getString(6);
        String currentSalary = rs.getString(7);
        String currentHire = rs.getString(8);
        String currentOffice_Hours = rs.getString(9);
        String currentRank = rs.getString(10);
        
        
        session.setAttribute("currentID", currentID);
        session.setAttribute("currentName", currentName);
        session.setAttribute("currentAddress", currentAddress);
        session.setAttribute("currentPhone", currentPhone);
        session.setAttribute("currentEmail", currentEmail);
        session.setAttribute("currentOffice", currentOffice);
        session.setAttribute("currentSalary", currentSalary);
        session.setAttribute("currentHire", currentHire);
        session.setAttribute("currentOffice_Hours", currentOffice_Hours);
        session.setAttribute("currentRank", currentRank);
    
        
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
        Office: <%=  currentOffice %> <br>
        Salary: <%=   currentSalary%> <br>
        Hire Date: <%=   currentHire%> <br>
        Office Hours: <%=   currentOffice_Hours%> <br>
        Rank: <%=   currentRank%> <br>
        
        
    <FORM NAME="editS" ACTION="EditFaculty.jsp" METHOD="POST">
        <input type="submit" value="Edit" />
    </FORM>
    <FORM NAME="back" ACTION="FacultyPage.jsp" METHOD="POST">
        <input type="submit" value="Back" />
    </FORM>
        <%  }
%>
    </body>
</html>