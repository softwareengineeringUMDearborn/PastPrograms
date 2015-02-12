<%-- 
    Document   : AddCourseCode
    Created on : Nov 19, 2014, 7:34:45 PM
    Author     : Cody
--%>

<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<%
    String title = request.getParameter("title");   
    String days = request.getParameter("days");
    String max_capacity = request.getParameter("capacity");
    String credit = request.getParameter("credit");
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_db", "root", "");
    Statement st = con.createStatement();


    int i = st.executeUpdate("insert into course(ID, title, days, max_capacity, credit) values ('" + id + "','" + title + "','" + days + "','" + max_capacity + "','" + credit + "')");
        response.sendRedirect("StaffPage.jsp");
    
%>