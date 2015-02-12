<%-- 
    Document   : LoginCode
    Created on : Nov 18, 2014, 7:21:30 PM
    Author     : Cody
--%>

<%@page import="Connect.ConnectionFactory"%>
<%@ page import ="java.sql.*" %>
<%
    String userEmail = request.getParameter("Email");  
    String title = request.getParameter("title");
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_db", "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    if (title.equals("student")){
        rs = st.executeQuery("select email_address from student where email_address='" + userEmail + "'");
        if (rs.next()) {
            session.setAttribute("userEmail", userEmail);
            //out.println("welcome " + userEmail);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("StudentPage.jsp");
        } else {
            out.println("Invalid password <a href='Start.jsp'>try again</a>");
        }
    }
    else if (title.equals("faculty")){
        rs = st.executeQuery("select email_address from faculty where email_address='" + userEmail + "'");
        if (rs.next()) {
            session.setAttribute("userEmail", userEmail);
            //out.println("welcome " + userEmail);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("FacultyPage.jsp");
        } else {
            out.println("Invalid password <a href='Start.jsp'>try again</a>");
        }
    }
    else {
        rs = st.executeQuery("select email_address from staff where email_address='" + userEmail + "'");
        if (rs.next()) {
            session.setAttribute("userEmail", userEmail);
            //out.println("welcome " + userEmail);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("StaffPage.jsp");
        } else {
            out.println("Invalid password <a href='Start.jsp'>try again</a>");
        }
    }
%>