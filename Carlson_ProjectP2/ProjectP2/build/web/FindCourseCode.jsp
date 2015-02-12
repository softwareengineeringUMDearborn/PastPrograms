<%-- 
    Document   : FindCourseCode
    Created on : Nov 19, 2014, 8:19:40 PM
    Author     : Cody
--%>

<%@ page import ="java.sql.*" %>
<%@page import="Connect.ConnectionFactory"%>
<!DOCTYPE html>
<%
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_db", "root", "");
    

                
    
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from course where ID='" + id + "'");
    
    if (!rs.next()) {
        response.sendRedirect("FindCourse.jsp");
    }
    else{
        String currentID = rs.getString(1);
        String currentTitle = rs.getString(2);
        String currentDays = rs.getString(3);
        String currentMaxCapacity = rs.getString(4);
        String currentCredit = rs.getString(5);
        
        session.setAttribute("currentID", currentID);
        session.setAttribute("currentTitle", currentTitle);
        session.setAttribute("currentDays", currentDays);
        session.setAttribute("currentMaxCapacity", currentMaxCapacity);
        session.setAttribute("currentCredit", currentCredit);
%>
       
    ID: <%=  currentID%> <br>
    Title: <%=  currentTitle%> <br>
    Days: <%=  currentDays%> <br>
    Max Capacity: <%=  currentMaxCapacity%> <br>
    Credit: <%=  currentCredit%> <br>
    
    <FORM NAME="editC" ACTION="EditCourse.jsp" METHOD="POST">
        <input type="submit" value="Edit" />
    </FORM>
    <FORM NAME="back" ACTION="FindCourse.jsp" METHOD="POST">
        <input type="submit" value="Back" />
    </FORM>
    
  <%  }
%>
