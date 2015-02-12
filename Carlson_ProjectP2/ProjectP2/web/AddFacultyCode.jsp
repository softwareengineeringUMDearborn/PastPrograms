<%-- 
    Document   : AddFacultyCode
    Created on : Nov 19, 2014, 7:14:15 PM
    Author     : Cody
--%>

<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<%
    String name = request.getParameter("name");   
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String office = request.getParameter("office");
    String salary = request.getParameter("salary");
    String hire = request.getParameter("hire");
    String hours = request.getParameter("hours");
    String rank = request.getParameter("rank");
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_db", "root", "");
    Statement st = con.createStatement();

//ResultSet rs;
    int i = st.executeUpdate("insert into faculty(ID, name, address, phone_number, email_address, office, salary, hire, office_hours, rank) values ('" + id + "','" + name + "','" + address + "','" + phone + "','" + email + "','" + office + "','"  + salary + "','" + hire + "','" + hours + "','" + rank + "')");
        response.sendRedirect("StaffPage.jsp");
    
%>