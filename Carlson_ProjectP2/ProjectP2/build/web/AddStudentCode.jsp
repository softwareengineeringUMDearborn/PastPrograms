<%-- 
    Document   : AddStudentCode
    Created on : Nov 19, 2014, 6:12:20 PM
    Author     : Cody
--%>

<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<%
    String name = request.getParameter("name");   
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String classStatus = request.getParameter("classStatus");
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_db", "root", "");
    Statement st = con.createStatement();

//ResultSet rs;
    int i = st.executeUpdate("insert into student(name, address, phone_number, email_address, class_status, ID) values ('" + name + "','" + address + "','" + phone + "','" + email + "','" + classStatus + "','" + id + "')");
        response.sendRedirect("StaffPage.jsp");
    
%>